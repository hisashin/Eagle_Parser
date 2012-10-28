package st.tori.eagle.parser.exception;

public class EagleParserException extends Exception {

	private String msg;
	
	public EagleParserException(String msg) {
		this.msg = msg;
	}
	
	@Override
	public String getMessage() {
		return msg;
	}
	

}
