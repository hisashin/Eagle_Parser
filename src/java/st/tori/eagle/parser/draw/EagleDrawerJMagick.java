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
		//ii.setSize("3000x3000");
		
		MagickImage mi = new MagickImage(ii);
		eagle.draw(m,mi,ii);
		//draw(m,mi,ii);
		/*
		drawLine(m,mi,ii,30,120,463,120);	//OK(433)
		drawLine(m,mi,ii,30,150,464,150);	//NG
		
		drawLine(m,mi,ii,30,200,30,768);	//OK(668)
		drawLine(m,mi,ii,60,200,60,769);	//NG
		
		drawLine(m,mi,ii,1409.7021276595744,1245.4553191489363, 1409.7021276595744,1270.9872340425532);
		*/
		mi.setFileName(dirPath+"/eagle"+System.currentTimeMillis()+".png");
		mi.writeImage(new ImageInfo());
		System.out.println("DRAW END:dirPath="+dirPath);
	}

	private static void draw(DrawManager m, MagickImage mi, ImageInfo ii) throws MagickException {
		DrawInfo di = new DrawInfo(ii);
		di.setStroke(PixelPacket.queryColorDatabase("Red"));
		di.setStrokeWidth(20);
		//di.setPrimitive("line 20,10, 980,490");
		di.setPrimitive("stroke-linecap round line 20,20 180,20");
		mi.drawImage(di);
	}
	private static void drawLine(DrawManager m, MagickImage mi, ImageInfo ii, double x1, double y1, double x2, double y2) throws MagickException {
		DrawInfo di = new DrawInfo(ii);
		di.setStroke(PixelPacket.queryColorDatabase("Red"));
		di.setStrokeWidth(20);
		di.setPrimitive("stroke-linecap round line "+x1+","+y1+" "+x2+","+y2);
		mi.drawImage(di);
	}

}
