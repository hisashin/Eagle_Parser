package st.tori.eagle.parser.draw;

import magick.MagickException;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;

public abstract class AbstractEagleDrawer {

	public final void draw(Eagle eagle, String dirPath) throws MagickException {
		DrawManager m = new DrawManager(eagle);
		draw(eagle,m,dirPath);
	}
	
	public abstract void draw(Eagle eagle, DrawManager m, String dirPath) throws MagickException;
	
}
