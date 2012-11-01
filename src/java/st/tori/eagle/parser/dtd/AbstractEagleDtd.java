package st.tori.eagle.parser.dtd;

import st.tori.eagle.parser.exception.EagleParserException;

public abstract class AbstractEagleDtd {

	public enum FileType {
		library,schematic,board,
	}

	public static interface ParentInterface {
		void addChild(Object child);
	}
	public static interface HasAttrInterface {
		void setAttr(String qName,String value);
	}
	public static interface HasTextInterface {
		String getText();
		void setText(String text);
	}
	public static interface HasXYPositionInterface {
		double[][] getXYPositions();
	}
	
	public abstract Object newInstance(String qName) throws EagleParserException;
	public abstract boolean isIgnoreQName(String qName);
	
}
