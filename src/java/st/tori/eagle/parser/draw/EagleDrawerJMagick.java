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
		//ImageInfo ii = new ImageInfo("xc:none");
		ImageInfo ii = new ImageInfo("xc:white");
		System.out.println("size:"+m.getImageWidth()+","+m.getImageHeight());
		ii.setSize(m.getImageWidth()+"x"+m.getImageHeight());
		ii.setSize("550x550");
		
		MagickImage mi = new MagickImage(ii);
		//eagle.draw(m,mi,ii);
		drawLine(m,mi,ii);
		mi.setFileName(dirPath+"/eagle"+System.currentTimeMillis()+".png");
		mi.writeImage(new ImageInfo());
		System.out.println("DRAW END:dirPath="+dirPath);
	}

	private static void drawLine(DrawManager m, MagickImage mi, ImageInfo ii) throws MagickException {
		DrawInfo di = new DrawInfo(ii);
		di.setStroke(PixelPacket.queryColorDatabase("Red"));
		di.setStrokeWidth(20);
		//di.setPrimitive("line 20,10, 980,490");
		di.setPrimitive("stroke-linecap round line 20,20 180,20");
		mi.drawImage(di);
	}

}
