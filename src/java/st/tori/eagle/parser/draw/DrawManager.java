package st.tori.eagle.parser.draw;

import st.tori.eagle.parser.dru.EagleDru;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;
import st.tori.eagle.parser.parse.AbstractEagleParser.XYPosition;

public class DrawManager extends PackageContainer {
	
	public EagleDru dru;
	
	double origW;
	double origH;
	double width = 3000;
	double height = 1500;
	double paddingX = 50;
	double paddingY = 50;
	XYPosition minXY;
	
	public DrawManager(EagleDru dru, Eagle eagle) {
		this.dru = dru;
		origW = eagle.maxXY.x - eagle.minXY.x;
		origH = eagle.maxXY.y - eagle.minXY.y;
		minXY = eagle.minXY;
		if(origW>width) {
			width = origW;
			height = origH;
		} else if(origW>0 && origH>0) {
			height = width*origH/origW;
		} else {
			origW = width;
			origH = height;
		}
		System.out.println("DrawManager:origW/H="+origW+"/"+origH+",w/h="+width+"/"+height+",padX/Y="+paddingX+"/"+paddingY);
	}
	public double getImageWidth() {
		return width + 2*paddingX;
	}
	public double getImageHeight() {
		return height + 2*paddingY;
	}
	//	Proper scaled value
	public double scale(double value) {
		return value*width/origW;
	}
	//	Proper X value to draw
	public double x(double x) {
		return scale(x-minXY.x)+paddingX;
	}
	//	Proper Y value to draw
	public double y(double y) {
		return height-scale(y-minXY.y)+paddingY;
	}
	//	move&rot
	public static double[] convert(double[] xy,double offsetX,double offsetY,double rad) {
		if(offsetX==0&&offsetY==0&&rad==0)return xy;
		double sin = Math.sin(rad);
		double cos = Math.cos(rad);
		return new double[]{offsetX+xy[1]*sin+xy[0]*cos,offsetY+xy[1]*cos-xy[0]*sin};
	}
	
}