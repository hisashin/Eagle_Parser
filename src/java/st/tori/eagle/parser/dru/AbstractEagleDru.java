package st.tori.eagle.parser.dru;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import st.tori.eagle.parser.exception.DruParserException;

public abstract class AbstractEagleDru {

	public abstract Object getInstance(String key) throws DruParserException;

	static Pattern PATTERN_ARRAY = Pattern.compile("([^=]+)\\[(.+)\\] *= *(.*)");
	static Pattern PATTERN_UNIQ = Pattern.compile("([^=]+) *= *(.*)");
	
	public static abstract class HasPropObject {
		protected Map<String, String> map = new HashMap<String, String>();
		public void put(String prop,String val) {
			map.put(prop, val);
		}
		public String value(String prop) {
			return map.get(prop);
		}
	}
	public static abstract class NoPropObject {
		protected String value;
		void put(String value) {
			this.value = value;
		}
		String value() {
			return value;
		}
	}
	
	public final void parse(String druFilePath) throws DruParserException {
		File file = new File(druFilePath);
		BufferedReader buffReader = null;
		try {
			buffReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
			String line;
			Matcher m;
			String key = null;
			String prop = null;
			String value = null;
			while((line = buffReader.readLine()) != null){
				line = line.trim();
				if(line.length()<=0)continue;
				//System.out.println(line);
				m = PATTERN_ARRAY.matcher(line);
				if(m.find()) {
					key = m.group(1).trim();
					prop = m.group(2).trim();
					value = m.group(3).trim();
					System.out.println ("key="+key+",prop="+prop+",value="+value);
					Object obj = getInstance(key);
					if(obj==null||!(obj instanceof HasPropObject))
						throw new DruParserException("Cannot create instance for key="+key+",prop="+prop);
					((HasPropObject)obj).put(prop, value);
				}else{
					m = PATTERN_UNIQ.matcher(line);
					if(m.find()) {
						key = m.group(1).trim();
						prop = null;
						value = m.group(2).trim();
						System.out.println ("key="+key+",prop="+prop+",value="+value);
						Object obj = getInstance(key);
						if(obj==null||!(obj instanceof NoPropObject))
							throw new DruParserException("Cannot create instance for key="+key+",prop="+prop);
						((NoPropObject)obj).put(value);
					}else{
						throw new DruParserException("Parse fail:"+line);
					}
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
			throw new DruParserException("Cannot read "+druFilePath);
		} finally {
			try {
				buffReader.close();
			} catch (IOException e) {
				e.printStackTrace();
				throw new DruParserException("Cannot close "+druFilePath);
			}
		}
	}
	
}
