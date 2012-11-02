package st.tori.eagle.parser.draw;

import magick.MagickException;
import st.tori.eagle.parser.dru.EagleDru;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;

public abstract class AbstractEagleDrawer {

	public final void draw(EagleDru dru, Eagle eagle, String dirPath) throws MagickException {
		DrawManager m = new DrawManager(dru,eagle);
		draw(eagle,m,dirPath);
	}
	
	public abstract void draw(Eagle eagle, DrawManager m, String dirPath) throws MagickException;
	
}
