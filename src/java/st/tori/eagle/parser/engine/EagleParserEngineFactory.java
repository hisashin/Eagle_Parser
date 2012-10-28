package st.tori.eagle.parser.engine;

public class EagleParserEngineFactory {

	public static AbstractEagleParserEngine newInstance() {
		return new EagleParserEngineSAX();
	}

}
