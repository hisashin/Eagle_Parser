package st.tori.eagle.parser.dru;

import st.tori.eagle.parser.exception.DruParserException;



public class EagleDruFactory {

	public static AbstractEagleDru newInstance() throws DruParserException {
		return new EagleDru();
	}
	
}
