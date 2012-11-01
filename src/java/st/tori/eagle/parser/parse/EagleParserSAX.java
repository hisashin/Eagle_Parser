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
import st.tori.eagle.parser.dtd.AbstractEagleDtd.HasXYPositionInterface;
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
		
		XYPosition minXY = null;
		XYPosition maxXY = null;
		
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
		
		@Override
		public void startDocument() {
			System.out.println("startDocument");
		}

		@Override
		public void startElement(String uri, String localName, String qName, Attributes attributes) {
			if(dtd.isIgnoreQName(qName))return;
			//System.out.println("startElement:"+qName);
			if(current!=null&&current instanceof ParentInterface)
				parents.add(0,(ParentInterface)current);
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
				if(tmp instanceof HasXYPositionInterface) {
					double[][] array = ((HasXYPositionInterface)tmp).getXYPositions();
					if(array!=null&&array.length>0) {
						if(minXY==null||maxXY==null) {
							minXY = new XYPosition(array[0][0],array[0][1]);
							maxXY = new XYPosition(array[0][0],array[0][1]);
						}
						for(int i=0;i<array.length;i++) {
							if(minXY.x>array[i][0])minXY.x = array[i][0];
							if(maxXY.x<array[i][0])maxXY.x = array[i][0];
							if(minXY.y>array[i][1])minXY.y = array[i][1];
							if(maxXY.y<array[i][1])maxXY.y = array[i][1];
						}
					}
				}
				current = tmp;
			} catch (EagleParserException e) {
				e.printStackTrace();
			}
			//print();
		}
	
		@Override
		public void characters(char[] ch, int offset, int length) {
			String str = new String(ch, offset, length);
			//System.out.println("charactersF" + str);
			if(current==null||!(current instanceof HasTextInterface))return;
			String tmp = ((HasTextInterface)current).getText();
			if(tmp==null)
				tmp = str;
			else
				tmp += str;
			if(tmp==null||tmp.length()<=0)return;
			((HasTextInterface)current).setText(tmp);
		}
	
		@Override
		public void endElement(String uri, String localName, String qName) {
			if(dtd.isIgnoreQName(qName))return;
			//System.out.println("endElement:"+qName);
			if(current==null||parents.size()<=0)return;
			ParentInterface tmp = parents.remove(0);
			tmp.addChild(current);
			current = tmp;
			//print();
		}
	
		@Override
		public void endDocument() {
			System.out.println("endDocument");
			if(current==null||!(current instanceof Eagle))return;
			((Eagle)current).minXY = this.minXY;
			((Eagle)current).maxXY = this.maxXY;
		}
	}
}
