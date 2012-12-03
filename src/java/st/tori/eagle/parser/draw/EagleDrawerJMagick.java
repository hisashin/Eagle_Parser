package st.tori.eagle.parser.draw;

import java.io.File;

import magick.CompositeOperator;
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
		//ImageInfo ii = new ImageInfo("xc:green");
		System.out.println("size:"+m.getImageWidth()+","+m.getImageHeight());
		//ii.setSize(m.getImageWidth()+"x"+m.getImageHeight());
		ii.setSize("450x450");
		//ii.setSize((62*50)+"x100");
		
		MagickImage mi = new MagickImage(ii);
		//eagle.draw(m,mi,ii);
		/*
		draw(m,mi,ii);
		drawLine(m,mi,ii,30,120,463,120);	//OK(433)
		drawLine(m,mi,ii,30,150,464,150);	//NG
		
		drawLine(m,mi,ii,30,200,30,768);	//OK(668)
		drawLine(m,mi,ii,60,200,60,769);	//NG
		
		drawLine(m,mi,ii,1409.7021276595744,1245.4553191489363, 1409.7021276595744,1270.9872340425532);
		rectangleWithPattern(m,mi,ii);
		for(int i=1;i<=62;i++) {
			pattern(m, mi, ii, dirPath, i);
		}
		*/
		//rectangleWithPattern2(m,mi,ii);
		{
			ImageInfo _iiB = new ImageInfo("xc:blue");
			_iiB.setSize("150x150");
			ImageInfo _iiP = new ImageInfo("pattern:GRAY95");
			_iiP.setSize("150x150");
			
			MagickImage _mi = new MagickImage(_iiB);
			_mi.compositeImage(CompositeOperator.BlendCompositeOp, new MagickImage(_iiP), 0, 0);
			_mi.transparentImage(PixelPacket.queryColorDatabase("white"), 255);
			mi.compositeImage(CompositeOperator.BlendCompositeOp, _mi, 150, 150);
		}
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
	private static void pattern(DrawManager m, MagickImage mi, ImageInfo ii, String dirPath, int compositeOperator) throws MagickException {
		int x = (compositeOperator-1)*50;

		ImageInfo _iiB = new ImageInfo("xc:blue");
		_iiB.setSize("50x50");
		ImageInfo _iiP = new ImageInfo("pattern:GRAY95");
		_iiP.setSize("50x50");
		ImageInfo _iiN = new ImageInfo("xc:none");
		_iiN.setSize("50x50");
/*
		//if(6<=compositeOperator&&compositeOperator<=7)return;
		//if(15<=compositeOperator&&compositeOperator<=19)return;
		//if(compositeOperator==27||compositeOperator==48||compositeOperator==56)return;

		MagickImage _mi = new MagickImage(_iiB);
		//BcompP: AddCompositeOp(hueX),BlendCompositeOp,LightenCompositeOp,PlusCompositeOp,ScreenCompositeOp,LinearDodgeCompositeOp
		//PcompB: AddCompositeOp(hueX),BlendCompositeOp,LightenCompositeOp,PlusCompositeOp,ScreenCompositeOp,LinearDodgeCompositeOp
		_mi.compositeImage(CompositeOperator.BlendCompositeOp, new MagickImage(_iiP), 0, 0);
		_mi.transparentImage(new PixelPacket(255,255,255,0), 255);
		//MagickImage _miN = new MagickImage(_iiN);
		//_mi.compositeImage(compositeOperator, _miN, 0, 0);
		//only31	HueCompositeOp
		//mi.compositeImage(compositeOperator, _mi, x, 0);

		DrawInfo di = new DrawInfo(ii);
		di.setStroke(Color.GRAY.pixelPacket);
		di.setStrokeWidth(0);
		di.setFill(Color.GRAY.pixelPacket);
		di.setPrimitive("polygon "+x+",0 "+x+",50 "+(x+50)+",50 "+(x+50)+",0");
		mi.drawImage(di);
*/
		
		ImageInfo _iiL = new ImageInfo("label:"+compositeOperator);
		_iiL.setPointSize(25);
		mi.compositeImage(CompositeOperator.SrcInCompositeOp, new MagickImage(_iiL), x, 75);
	}
	private static void rectangleWithPattern2(DrawManager m, MagickImage mi, ImageInfo ii) throws MagickException {
		ImageInfo _iiB = new ImageInfo("xc:blue");
		_iiB.setSize("150x150");
		ImageInfo _iiP = new ImageInfo("pattern:GRAY95");
		_iiP.setSize("150x150");
		ImageInfo _iiN = new ImageInfo("xc:none");
		_iiN.setSize("150x150");
		

		MagickImage _miP = new MagickImage(_iiP);
		_miP.compositeImage(CompositeOperator.BlendCompositeOp, new MagickImage(_iiB), 0, 0);
		_miP.transparentImage(PixelPacket.queryColorDatabase("white"), 255);
		
		mi.setBackgroundColor(new PixelPacket(0,0,0,255));
		mi.compositeImage(CompositeOperator.ScreenCompositeOp, _miP, 150, 150);
		
		//MagickImage _miN = new MagickImage(_iiN);
		//_miN.compositeImage(CompositeOperator.HueCompositeOp, _miP, 0, 0);
		
		//mi.compositeImage(CompositeOperator.BlendCompositeOp, _miN, 150, 150);
	}
	private static void rectangleWithPattern(DrawManager m, MagickImage mi, ImageInfo ii) throws MagickException {
		ImageInfo _ii = new ImageInfo("pattern:GRAY95");
		_ii.setSize("50x50");
		ImageInfo _iiB = new ImageInfo("xc:blue");
		_iiB.setSize("50x50");
		ImageInfo _iiN = new ImageInfo("xc:none");
		_iiN.setSize("50x50");
		MagickImage _mi = new MagickImage(_iiB);
		_mi.compositeImage(CompositeOperator.AddCompositeOp, new MagickImage(_ii), 0, 0);
		MagickImage _miN = new MagickImage(_iiN);
		_miN.compositeImage(CompositeOperator.AddCompositeOp, _mi, 0, 0);

		DrawInfo di = new DrawInfo(ii);
		di.setPrimitive("polygon 150,150 150,300 300,300 300,150");
		di.setTile(_miN);
		mi.drawImage(di);
	}
	private MagickImage getPattern(String pattern,double dx,double dy) throws MagickException {
		ImageInfo iiPattern = new ImageInfo("pattern:"+pattern);
		iiPattern.setSize(dx+"x"+dy);
		ImageInfo iiBase = new ImageInfo();
		iiBase.setSize(dx+"x"+dy);
		MagickImage mi = new MagickImage(iiBase);
		mi.compositeImage(CompositeOperator.AddCompositeOp, new MagickImage(iiPattern), 0, 0);
		return mi;
	}

}
