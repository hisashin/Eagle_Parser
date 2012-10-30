package st.tori.eagle.parser.parse;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

import st.tori.eagle.parser.dtd.AbstractEagleDtd;
import st.tori.eagle.parser.dtd.AbstractEagleDtd.FileType;
import st.tori.eagle.parser.dtd.AbstractEagleDtd.HasAttrInterface;
import st.tori.eagle.parser.dtd.AbstractEagleDtd.HasTextInterface;
import st.tori.eagle.parser.dtd.AbstractEagleDtd.ParentInterface;
import st.tori.eagle.parser.dtd.EagleDtdFactory;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;
import st.tori.eagle.parser.exception.EagleParserException;

public class EagleParserSAX extends AbstractEagleParser {

	@Override
	public Eagle parse(FileType fileType, InputStream is) throws EagleParserException {
		try {
			SAXParserFactory spfactory = SAXParserFactory.newInstance();
			spfactory.setValidating(true);
			SAXParser parser = spfactory.newSAXParser();
			Handler handler = new Handler();
			parser.parse(is, handler);
			return (Eagle)handler.current;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	private static class Handler extends DefaultHandler {
		
		AbstractEagleDtd dtd = EagleDtdFactory.newInstance();
		Object current = null;
		List<ParentInterface> parents = new ArrayList<ParentInterface>();
	
		private void print() {
			System.out.print("current="+current);
			Iterator<ParentInterface> ite = parents.iterator();
			while(ite.hasNext()) {
				ParentInterface parent = ite.next();
				System.out.print(","+parent);
			}
			System.out.println();
		}
		
		public void startElement(String uri, String localName, String qName, Attributes attributes) {
			if(dtd.isIgnoreQName(qName))return;
			System.out.println("startElement:"+qName);
			if(current!=null&&current instanceof ParentInterface) {
				parents.add(0,(ParentInterface)current);
			}
			Object tmp;
			try {
				tmp = dtd.newInstance(qName);
				if(tmp instanceof HasAttrInterface) {
					String key,value;
					for(int i=0;i<attributes.getLength();i++) {
						key = attributes.getQName(i);
						value = attributes.getValue(i);
						if(key==null||key.length()<=0)continue;
						if(value==null||value.length()<=0)continue;
						((HasAttrInterface)tmp).setAttr(key,value);
					}
				}
				current = tmp;
			} catch (EagleParserException e) {
				e.printStackTrace();
			}
			print();
		}
	
		public void characters(char[] ch, int offset, int length) {
			String str = new String(ch, offset, length);
			System.out.println("charactersF" + str);
			if(current==null||!(current instanceof HasTextInterface))return;
			String tmp = ((HasTextInterface)current).getText();
			if(tmp==null)
				tmp = str;
			else
				tmp += str;
			if(tmp==null||tmp.length()<=0)return;
			((HasTextInterface)current).setText(tmp);
		}
	
		public void endElement(String uri, String localName, String qName) {
			if(dtd.isIgnoreQName(qName))return;
			System.out.println("endElement:"+qName);
			if(current==null||parents.size()<=0)return;
			ParentInterface tmp = parents.remove(0);
			tmp.addChild(current);
			current = tmp;
			print();
		}
	
	}
}
