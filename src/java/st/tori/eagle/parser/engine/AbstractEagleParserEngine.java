package st.tori.eagle.parser.engine;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import st.tori.eagle.parser.exception.EagleParserException;

public abstract class AbstractEagleParserEngine {

	protected abstract void parse(InputStream bis);

	public void parse(File file) throws EagleParserException {
		if(file==null)
			throw new EagleParserException("file is null");
		if(file.getTotalSpace()<=0)
			throw new EagleParserException("file is empty:"+file.getAbsolutePath());
		String fileName = file.getName();
		if(fileName==null)
			throw new EagleParserException("fileName is null:"+file.getAbsolutePath());
		fileName = fileName.toLowerCase();
		if(!fileName.endsWith(".brd")&&!fileName.endsWith(".sch"))
			throw new EagleParserException("only BRD or SCH file:"+file.getAbsolutePath());
		ByteArrayInputStream bis;
		try {
			bis = getDTDReplacedInputStream(file);
			parse(bis);
		} catch (IOException e) {
			e.printStackTrace();
			throw new EagleParserException("cannot read file:"+file.getAbsolutePath());
		}
	}
	
	
	private static final Pattern PATTERN_DTD = Pattern.compile("<!DOCTYPE.*\"(eagle.dtd)\".*>");
	private static final String REPLACE_DTD = "<!DOCTYPE eagle SYSTEM \"eagle-6.3.0.dtd\">";
	private ByteArrayInputStream getDTDReplacedInputStream(File file) throws IOException, EagleParserException {
		System.out.println((new File(".")).getAbsoluteFile().getParentFile().toString());
		StringBuffer buf = new StringBuffer();
		BufferedReader in = null;
		try {
			in = new BufferedReader(new FileReader(file));
			if (!in.ready())
				throw new IOException();
			String line;
			Matcher m;
			boolean dtdFound = false;
			while ((line = in.readLine()) != null) {
				if(!dtdFound) {
					m = PATTERN_DTD.matcher(line);
					if(m.find()) {
						buf.append(REPLACE_DTD);
						dtdFound = true;
					}else{
						buf.append(line);
					}
				}else{
					buf.append(line);
				}
			}
			if(!dtdFound)
				throw new EagleParserException("No DTD definition has been found");
		} finally {
			if(in!=null)
				in.close();
		}
		return new ByteArrayInputStream(buf.toString().getBytes());
	}

}