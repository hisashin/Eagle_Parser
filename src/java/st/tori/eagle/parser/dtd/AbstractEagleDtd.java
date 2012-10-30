package st.tori.eagle.parser.dtd;

public abstract class AbstractEagleDtd {

	public enum FileType {
		library,schematic,board,
	}

	public static interface ParentInterface {
	}
	public static interface HasAttrInterface {
		void setAttr(String qName,String value);
	}
	public static interface HasTextInterface {
		String getText();
		void setText(String text);
	}
	
	public abstract Object newInstance(String qName);
	
}
