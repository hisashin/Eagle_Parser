package st.tori.eagle.parser.draw;

import java.io.File;

import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;

public class EagleDrawerJMagick extends AbstractEagleDrawer {

	@Override
	public void draw(Eagle eagle, DrawManager m, String dirPath) throws MagickException {
		System.out.println("DRAW START:dirPath="+dirPath);
		new File(dirPath).mkdirs();
		//ImageInfo ii = new ImageInfo("xc:none");
		ImageInfo ii = new ImageInfo("xc:white");
		System.out.println("size:"+m.getImageWidth()+","+m.getImageHeight());
		ii.setSize(m.getImageWidth()+"x"+m.getImageHeight());
		
		MagickImage mi = new MagickImage(ii);
		eagle.draw(m,mi,ii);
		mi.setFileName(dirPath+"/eagle"+System.currentTimeMillis()+".png");
		mi.writeImage(ii);
		System.out.println("DRAW END:dirPath="+dirPath);
	}

}
