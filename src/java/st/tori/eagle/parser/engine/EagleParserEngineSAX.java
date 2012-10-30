package st.tori.eagle.parser.engine;

import java.io.InputStream;
import java.util.ArrayList;
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

public class EagleParserEngineSAX extends AbstractEagleParserEngine {

	@Override
	public Eagle parse(FileType fileType, InputStream is) throws EagleParserException {
		try {
			SAXParserFactory spfactory = SAXParserFactory.newInstance();
			spfactory.setValidating(true);
			SAXParser parser = spfactory.newSAXParser();
			Handler handler = new Handler();
			parser.parse(is, handler);
			return (Eagle)handler.parent;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	private static class Handler extends DefaultHandler {
		
		AbstractEagleDtd dtd = EagleDtdFactory.newInstance();
		Object current = null;
		List<ParentInterface> parents = new ArrayList<ParentInterface>();
	
		public void startElement(String uri, String localName, String qName, Attributes attributes) {
			System.out.print("startElement:"+qName);
			current = dtd.newInstance(qName);
			if(current==null)return;
			if(current instanceof HasAttrInterface) {
				for(int i=0;i<attributes.getLength();i++)
					((HasAttrInterface)current).setAttr(attributes.getQName(i),attributes.getValue(i));
			}
			
			if(current instanceof ParentInterface)
				parents.add(0,(ParentInterface)current);
		}
	
		public void characters(char[] ch, int offset, int length) {
			String str = new String(ch, offset, length);
			System.out.println("charactersF" + str);
			if(current!=null&&current instanceof HasTextInterface) {
				String tmp = ((HasTextInterface)current).getText();
				if(tmp==null)
					tmp = str;
				else
					tmp += str;
				((HasTextInterface)current).setText();
			}
		}
	
		public void endElement(String uri, String localName, String qName) {
		}
	
	}
}
