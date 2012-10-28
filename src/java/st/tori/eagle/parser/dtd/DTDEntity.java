package st.tori.eagle.parser.dtd;

public class DTDEntity {

	public enum FileType {
		library,schematic,board,
	}
	
	public enum GridUnit {
		mic(1),mm(1),mil(1),inch(1);
		
		private double scale;
		GridUnit(double scale) { this.scale = scale; }
		public double getScale() { return scale; }
	}
	public static GridUnit getGridUnit(String str) {
		if("mic".equals(str))return GridUnit.mic;
		if("mm".equals(str))return GridUnit.mm;
		if("mil".equals(str))return GridUnit.mil;
		if("inch".equals(str))return GridUnit.inch;
		return null;
	}
	
	public enum GridStyle {
		lines,dots,
	}
	public static GridStyle getGridStyle(String str) {
		if("lines".equals(str))return GridStyle.lines;
		if("dots".equals(str))return GridStyle.dots;
		return null;
	}
	
	public enum WireStyle {
		continuous,longdash,shortdash,dashdot,
	}
	public static WireStyle getWireStyle(String str) {
		if("continuous".equals(str))return WireStyle.continuous;
		if("longdash".equals(str))return WireStyle.longdash;
		if("shortdash".equals(str))return WireStyle.shortdash;
		if("dashdot".equals(str))return WireStyle.dashdot;
		return null;
	}
	
	public enum WireCap {
		flat,round,
	}
	public static WireCap getWireCap(String str) {
		if("flat".equals(str))return WireCap.flat;
		if("round".equals(str))return WireCap.round;
		return null;
	}
	
	public enum PadShape {
		square,round,octagon,longShape,offset,
	}
	public static PadShape getPadShape(String str) {
		if("square".equals(str))return PadShape.square;
		if("round".equals(str))return PadShape.round;
		if("octagon".equals(str))return PadShape.octagon;
		if("long".equals(str))return PadShape.longShape;
		if("offset".equals(str))return PadShape.offset;
		return null;
	}
	
	public enum ViaShape {
		square,round,octagon,
	}
	public static ViaShape getViaShape(String str) {
		if("square".equals(str))return ViaShape.square;
		if("round".equals(str))return ViaShape.round;
		if("octagon".equals(str))return ViaShape.octagon;
		return null;
	}
	
	public enum TextFont {
		vector,proportional,fixed,
	}
	public static TextFont getTextFont(String str) {
		if("vector".equals(str))return TextFont.vector;
		if("proportional".equals(str))return TextFont.proportional;
		if("fixed".equals(str))return TextFont.fixed;
		return null;
	}
	
	public enum AttributeDisplay {
		off,value,name,both,
	}
	public static AttributeDisplay getAttributeDisplay(String str) {
		if("off".equals(str))return AttributeDisplay.off;
		if("value".equals(str))return AttributeDisplay.value;
		if("name".equals(str))return AttributeDisplay.name;
		if("both".equals(str))return AttributeDisplay.both;
		return null;
	}
	
	public enum PolygonPour {
		solid,hatch,cutout,
	}
	public static PolygonPour getPolygonPour(String str) {
		if("solid".equals(str))return PolygonPour.solid;
		if("hatch".equals(str))return PolygonPour.hatch;
		if("cutout".equals(str))return PolygonPour.cutout;
		return null;
	}
	
	public enum PinVisible {
		off,pad,pin,both,
	}
	public static PinVisible getPinVisible(String str) {
		if("off".equals(str))return PinVisible.off;
		if("pad".equals(str))return PinVisible.pad;
		if("pin".equals(str))return PinVisible.pin;
		if("both".equals(str))return PinVisible.both;
		return null;
	}
	
	public enum PinLength {
		point,shortLength,middle,longLength,
	}
	public static PinLength getPinLength(String str) {
		if("point".equals(str))return PinLength.point;
		if("shortLength".equals(str))return PinLength.shortLength;
		if("middle".equals(str))return PinLength.middle;
		if("longLength".equals(str))return PinLength.longLength;
		return null;
	}
	
	public enum PinDirection {
		nc,in,out,io,oc,pwr,pas,hiz,sup,
	}
	public static PinDirection getPinDirection(String str) {
		if("nc".equals(str))return PinDirection.nc;
		if("in".equals(str))return PinDirection.in;
		if("out".equals(str))return PinDirection.out;
		if("io".equals(str))return PinDirection.io;
		if("oc".equals(str))return PinDirection.oc;
		if("pwr".equals(str))return PinDirection.pwr;
		if("pas".equals(str))return PinDirection.pas;
		if("hiz".equals(str))return PinDirection.hiz;
		if("sup".equals(str))return PinDirection.sup;
		return null;
	}
	
	public enum PinFunction {
		none,dot,clk,dotclk,
	}
	public static PinFunction getPinFunction(String str) {
		if("none".equals(str))return PinFunction.none;
		if("dot".equals(str))return PinFunction.dot;
		if("clk".equals(str))return PinFunction.clk;
		if("dotclk".equals(str))return PinFunction.dotclk;
		return null;
	}
	
	public enum GateAddLevel {
		must,can,next,request,always,
	}
	public static GateAddLevel getGateAddLevel(String str) {
		if("must".equals(str))return GateAddLevel.must;
		if("can".equals(str))return GateAddLevel.can;
		if("next".equals(str))return GateAddLevel.next;
		if("request".equals(str))return GateAddLevel.request;
		if("always".equals(str))return GateAddLevel.always;
		return null;
	}
	
	public enum ContactRoute {
		all,any,
	}
	public static ContactRoute getContactRoute(String str) {
		if("all".equals(str))return ContactRoute.all;
		if("any".equals(str))return ContactRoute.any;
		return null;
	}
	
	public enum DimensionType {
		parallel,horizontal,vertical,radius,diameter,
	}
	public static DimensionType getDimensionType(String str) {
		if("parallel".equals(str))return DimensionType.parallel;
		if("horizontal".equals(str))return DimensionType.horizontal;
		if("vertical".equals(str))return DimensionType.vertical;
		if("radius".equals(str))return DimensionType.radius;
		if("diameter".equals(str))return DimensionType.diameter;
		return null;
	}
	
	public enum Severity {
		info,warning,error,
	}
	public static Severity getSeverity(String str) {
		if("info".equals(str))return Severity.info;
		if("warning".equals(str))return Severity.warning;
		if("error".equals(str))return Severity.error;
		return null;
	}
	
	public enum Align {
		bottom_left,bottom_center,bottom_right,center_left,center,center_right,top_left,top_center,top_right,
	}
	public static Align getAlign(String str) {
		if("bottom-left".equals(str))return Align.bottom_left;
		if("bottom-center".equals(str))return Align.bottom_center;
		if("bottom-right".equals(str))return Align.bottom_right;
		if("center-left".equals(str))return Align.center_left;
		if("center".equals(str))return Align.center;
		if("center-right".equals(str))return Align.center_right;
		if("top-left".equals(str))return Align.top_left;
		if("top-center".equals(str))return Align.top_center;
		if("top-right".equals(str))return Align.top_right;
		return null;
	}
	
	public enum VerticalText {
		up,down,
	}
	public static VerticalText getVerticalText(String str) {
		if("up".equals(str))return VerticalText.up;
		if("down".equals(str))return VerticalText.down;
		return null;
	}

}
