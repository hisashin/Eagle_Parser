package st.tori.eagle.parser.draw;

import java.io.File;

import magick.DrawInfo;
import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;
import magick.PixelPacket;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;

public class EagleDrawerJMagick extends AbstractEagleDrawer {

	@Override
	public void draw(Eagle eagle, DrawManager m, String dirPath) throws MagickException {
		System.out.println("DRAW START:dirPath="+dirPath);
		new File(dirPath).mkdirs();
		ImageInfo ii = new ImageInfo("xc:none");
		System.out.println("size:"+m.getImageWidth()+","+m.getImageHeight());
		ii.setSize(m.getImageWidth()+"x"+m.getImageHeight());
		
		System.out.println("minXY="+eagle.minXY);
		System.out.println("maxXY="+eagle.maxXY);
		MagickImage mi = new MagickImage(ii);
		//drawLine(m,mi,ii);
		eagle.draw(m,mi,ii);
		mi.setFileName(dirPath+"/eagle"+System.currentTimeMillis()+".png");
		mi.writeImage(ii);
		System.out.println("DRAW END:dirPath="+dirPath);
	}
	
	private static void drawLine(DrawManager m, MagickImage mi, ImageInfo ii) throws MagickException {
		DrawInfo di = new DrawInfo(ii);
		di.setStroke(new PixelPacket(0xbb*256, 0xdd*256, 0xff*256, 0));
		di.setStrokeWidth(3);
		di.setPrimitive("line 20,10, 980,490");
		mi.drawImage(di);
	}

}
