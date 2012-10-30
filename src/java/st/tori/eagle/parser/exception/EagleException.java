package st.tori.eagle.parser.exception;

public class EagleException extends Exception {

	private static final long serialVersionUID = -8379940745084168902L;

	private String msg;
	
	public EagleException(String msg) {
		this.msg = msg;
	}
	
	@Override
	public String getMessage() {
		return msg;
	}
	

}
