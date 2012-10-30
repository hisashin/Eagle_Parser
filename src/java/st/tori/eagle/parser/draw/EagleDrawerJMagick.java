package st.tori.eagle.parser.draw;

import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;

public class EagleDrawerJMagick extends AbstractEagleDrawer {

	@Override
	public void draw(Eagle eagle, String dirPath) {
		ImageInfo ii;
		try {
			ii = new ImageInfo();
			ii.setSize("100x50");
			MagickImage mi = new MagickImage(ii);
			mi.setFileName(dirPath+"sample.png");
			mi.writeImage(new ImageInfo());
		} catch (MagickException e) {
			e.printStackTrace();
		}
	}

}
