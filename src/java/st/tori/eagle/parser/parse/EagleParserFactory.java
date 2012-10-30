package st.tori.eagle.parser.parse;

public class EagleParserFactory {

	public static AbstractEagleParser newInstance() {
		return new EagleParserSAX();
	}

}
