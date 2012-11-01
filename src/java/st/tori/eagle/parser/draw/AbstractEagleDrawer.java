package st.tori.eagle.parser.draw;

import magick.MagickException;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;
import st.tori.eagle.parser.parse.AbstractEagleParser.XYPosition;

public abstract class AbstractEagleDrawer {

	public final void draw(Eagle eagle, String dirPath) throws MagickException {
		DrawManager m = new DrawManager(eagle);
		draw(eagle,m,dirPath);
	}
	
	public abstract void draw(Eagle eagle, DrawManager m, String dirPath) throws MagickException;

	public static class DrawManager {
		
		double origW;
		double origH;
		double width = 1000;
		double height = 500;
		double paddingX = 50;
		double paddingY = 50;
		XYPosition minXY;
		
		public DrawManager(Eagle eagle) {
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
	}
	
}
