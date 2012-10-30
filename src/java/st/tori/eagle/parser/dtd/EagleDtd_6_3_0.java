package st.tori.eagle.parser.dtd;

import java.util.ArrayList;
import java.util.List;

import org.xml.sax.Attributes;

public class EagleDtd_6_3_0 extends AbstractEagleDtd {

	@Override
	public Object newInstance(String qName) {
		// TODO Auto-generated method stub
		return null;
	}

	//----------------------------------------
	//		Entity
	//----------------------------------------
	
	public enum GridUnit {
		mic(1),mm(1),mil(1),inch(1);
		
		private double scale;
		GridUnit(double scale) { this.scale = scale; }
		public double getScale() { return scale; }
	}
	private static GridUnit getGridUnit(String str) {
		if("mic".equals(str))return GridUnit.mic;
		if("mm".equals(str))return GridUnit.mm;
		if("mil".equals(str))return GridUnit.mil;
		if("inch".equals(str))return GridUnit.inch;
		return null;
	}
	
	public enum GridStyle {
		lines,dots,
	}
	private static GridStyle getGridStyle(String str) {
		if("lines".equals(str))return GridStyle.lines;
		if("dots".equals(str))return GridStyle.dots;
		return null;
	}
	
	public enum WireStyle {
		continuous,longdash,shortdash,dashdot,
	}
	private static WireStyle getWireStyle(String str) {
		if("continuous".equals(str))return WireStyle.continuous;
		if("longdash".equals(str))return WireStyle.longdash;
		if("shortdash".equals(str))return WireStyle.shortdash;
		if("dashdot".equals(str))return WireStyle.dashdot;
		return null;
	}
	
	public enum WireCap {
		flat,round,
	}
	private static WireCap getWireCap(String str) {
		if("flat".equals(str))return WireCap.flat;
		if("round".equals(str))return WireCap.round;
		return null;
	}
	
	public enum PadShape {
		square,round,octagon,longShape,offset,
	}
	private static PadShape getPadShape(String str) {
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
	private static ViaShape getViaShape(String str) {
		if("square".equals(str))return ViaShape.square;
		if("round".equals(str))return ViaShape.round;
		if("octagon".equals(str))return ViaShape.octagon;
		return null;
	}
	
	public enum TextFont {
		vector,proportional,fixed,
	}
	private static TextFont getTextFont(String str) {
		if("vector".equals(str))return TextFont.vector;
		if("proportional".equals(str))return TextFont.proportional;
		if("fixed".equals(str))return TextFont.fixed;
		return null;
	}
	
	public enum AttributeDisplay {
		off,value,name,both,
	}
	private static AttributeDisplay getAttributeDisplay(String str) {
		if("off".equals(str))return AttributeDisplay.off;
		if("value".equals(str))return AttributeDisplay.value;
		if("name".equals(str))return AttributeDisplay.name;
		if("both".equals(str))return AttributeDisplay.both;
		return null;
	}
	
	public enum PolygonPour {
		solid,hatch,cutout,
	}
	private static PolygonPour getPolygonPour(String str) {
		if("solid".equals(str))return PolygonPour.solid;
		if("hatch".equals(str))return PolygonPour.hatch;
		if("cutout".equals(str))return PolygonPour.cutout;
		return null;
	}
	
	public enum PinVisible {
		off,pad,pin,both,
	}
	private static PinVisible getPinVisible(String str) {
		if("off".equals(str))return PinVisible.off;
		if("pad".equals(str))return PinVisible.pad;
		if("pin".equals(str))return PinVisible.pin;
		if("both".equals(str))return PinVisible.both;
		return null;
	}
	
	public enum PinLength {
		point,shortLength,middle,longLength,
	}
	private static PinLength getPinLength(String str) {
		if("point".equals(str))return PinLength.point;
		if("shortLength".equals(str))return PinLength.shortLength;
		if("middle".equals(str))return PinLength.middle;
		if("longLength".equals(str))return PinLength.longLength;
		return null;
	}
	
	public enum PinDirection {
		nc,in,out,io,oc,pwr,pas,hiz,sup,
	}
	private static PinDirection getPinDirection(String str) {
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
	private static PinFunction getPinFunction(String str) {
		if("none".equals(str))return PinFunction.none;
		if("dot".equals(str))return PinFunction.dot;
		if("clk".equals(str))return PinFunction.clk;
		if("dotclk".equals(str))return PinFunction.dotclk;
		return null;
	}
	
	public enum GateAddLevel {
		must,can,next,request,always,
	}
	private static GateAddLevel getGateAddLevel(String str) {
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
	private static ContactRoute getContactRoute(String str) {
		if("all".equals(str))return ContactRoute.all;
		if("any".equals(str))return ContactRoute.any;
		return null;
	}
	
	public enum DimensionType {
		parallel,horizontal,vertical,radius,diameter,
	}
	private static DimensionType getDimensionType(String str) {
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
	private static Severity getSeverity(String str) {
		if("info".equals(str))return Severity.info;
		if("warning".equals(str))return Severity.warning;
		if("error".equals(str))return Severity.error;
		return null;
	}
	
	public enum AlignEntity {
		bottom_left,bottom_center,bottom_right,center_left,center,center_right,top_left,top_center,top_right,
	}
	private static AlignEntity getAlignEntity(String str) {
		if("bottom-left".equals(str))return AlignEntity.bottom_left;
		if("bottom-center".equals(str))return AlignEntity.bottom_center;
		if("bottom-right".equals(str))return AlignEntity.bottom_right;
		if("center-left".equals(str))return AlignEntity.center_left;
		if("center".equals(str))return AlignEntity.center;
		if("center-right".equals(str))return AlignEntity.center_right;
		if("top-left".equals(str))return AlignEntity.top_left;
		if("top-center".equals(str))return AlignEntity.top_center;
		if("top-right".equals(str))return AlignEntity.top_right;
		return null;
	}
	
	public enum VerticalText {
		up,down,
	}
	private static VerticalText getVerticalText(String str) {
		if("up".equals(str))return VerticalText.up;
		if("down".equals(str))return VerticalText.down;
		return null;
	}

	//----------------------------------------
	//		Drawing Definitions
	//----------------------------------------

	public static class Eagle implements ParentInterface,HasAttrInterface {
		List<Compatibility> compatibilityList = new ArrayList<Compatibility>();
		Drawing drawing;
		//	attr
		double version;
		@Override
		public void setAttr(String qName, String value) {
			if("version".equals(qName))version = Double.parseDouble(value);
		}
	}
	public static class Compatibility implements ParentInterface {
		List<Note> noteList = new ArrayList<Note>();
	}
	public static class Note implements HasTextInterface,HasAttrInterface {
		String text;
		@Override
		public String getText()	{	return text;	}
		@Override
		public void setText(String text) {	this.text = text;	}
		//	attr
		double version;
		Severity severity;
		@Override
		public void setAttr(String qName, String value) {
			if("version".equals(qName))version = Double.parseDouble(value);
			else if("severity".equals(qName))severity = getSeverity(value);
		}
	}
	public static class Drawing implements ParentInterface {
		List<Setting> settings = new ArrayList<Setting>();
		Grid grid;
		List<Layer> layers = new ArrayList<Layer>();
		DrawingInterface content;
	}
	public static interface DrawingInterface {}
	public static class Library implements DrawingInterface,ParentInterface,HasAttrInterface {
		Description description;
		List<Package> packages = new ArrayList<Package>();
		List<Symbol> symbols = new ArrayList<Symbol>();
		List<Deviceset> devicesets = new ArrayList<Deviceset>();
		//	attr
		String name;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
		}
	}
	public static class Schematic implements DrawingInterface,ParentInterface,HasAttrInterface {
		Description description;
		List<Library> libraries = new ArrayList<Library>();
		List<Attribute> attributes = new ArrayList<Attribute>();
		List<Variantdef> variantdefs = new ArrayList<Variantdef>();
		List<Class> classes = new ArrayList<Class>();
		List<Part> parts = new ArrayList<Part>();
		List<Sheet> sheets = new ArrayList<Sheet>();
		List<Error> errors = new ArrayList<Error>();
		//	attr
		String xreflabel;
		String xrefpart;
		@Override
		public void setAttr(String qName, String value) {
			if("xreflabel".equals(qName))xreflabel = value;
			else if("xrefpart".equals(qName))xrefpart = value;
		}
	}
	public static class Board implements DrawingInterface,ParentInterface {
		Description description;
		List<PlainInterface> plainList = new ArrayList<PlainInterface>();
		List<Library> libraries = new ArrayList<Library>();
		List<Attribute> attributes = new ArrayList<Attribute>();
		List<Variantdef> variantdefs = new ArrayList<Variantdef>();
		List<Class> classes = new ArrayList<Class>();
		Designrules designrules;
		List<Pass> autorouter = new ArrayList<Pass>();
		List<Element> elements = new ArrayList<Element>();
		List<Signal> signals = new ArrayList<Signal>();
		List<Approved> errors = new ArrayList<Approved>();
	}
	
	//----------------------------------------
	//	High level objects
	//----------------------------------------

	public static class Sheet implements ParentInterface {
		Description description;
		List<PlainInterface> plainList = new ArrayList<PlainInterface>();
		List<Instance> instances = new ArrayList<Instance>();
		List<Bus> busses = new ArrayList<Bus>();
		List<Net> nets = new ArrayList<Net>();
	}
	public static class Package implements ParentInterface,HasAttrInterface {
		Description description;
		List<PlainInterface> elements = new ArrayList<PlainInterface>();
		//	attr
		String name;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
		}
	}
	public static class Symbol extends Package {}
	public static class Deviceset implements ParentInterface,HasAttrInterface {
		Description description;
		List<Gate> gates = new ArrayList<Gate>();
		List<Device> devices = new ArrayList<Device>();
		//	attr
		String name;
		String prefix = "";
		boolean uservalue = false;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("prefix".equals(qName))prefix = value;
			else if("uservalue".equals(qName))uservalue = "yes".equals(value);
		}
	}
	public static class Device implements ParentInterface,HasAttrInterface {
		List<Connect> connects = new ArrayList<Connect>();
		List<Technology> technologies = new ArrayList<Technology>();
		//	attr
		String name;
		String packageValue;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("package".equals(qName))packageValue = value;
		}
	}
	public static class Bus implements ParentInterface,HasAttrInterface {
		List<Segment> segmentList = new ArrayList<Segment>();
		//	attr
		String name;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
		}
	}
	public static class Net extends Bus {
		//	attr
		int classValue = 0;
		@Override
		public void setAttr(String qName, String value) {
			if("class".equals(qName))classValue = Integer.parseInt(value);
		}
	}
	public static class Segment implements ParentInterface {
		List<Pinref> pinrefList = new ArrayList<Pinref>();	//	only valid in a <net> context
		List<Wire> wireList = new ArrayList<Wire>();	//	only valid in a <net> context
		List<Junction> junctionList = new ArrayList<Junction>();
		List<Label> labelList = new ArrayList<Label>();
	}
	public static class Signal implements ParentInterface,HasAttrInterface {
		List<Contactref> contactrefList = new ArrayList<Contactref>();
		List<Polygon> polygonList = new ArrayList<Polygon>();
		List<Wire> wireList = new ArrayList<Wire>();
		List<Via> viaList = new ArrayList<Via>();
		//	attr
		String name;
		int classValue = 0;
		boolean airwireshidden = false;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("class".equals(qName))classValue = Integer.parseInt(value);
			else if("airwireshidden".equals(qName))airwireshidden = "yes".equals(value);
		}
	}
	
	//----------------------------------------
	//	Basic objects
	//----------------------------------------

	public static class Variantdef implements HasAttrInterface {
		//	attr
		String name;
		boolean current = false;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("current".equals(qName))current = "yes".equals(value);
		}
	}
	public static class Variant implements HasAttrInterface {
		//	attr
		String name;
		boolean populate = true;
		String value;
		String technology;	//	Only in part context
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("populate".equals(qName))populate = !"no".equals(value);
			else if("value".equals(qName))this.value = value;
			else if("technology".equals(qName))technology = value;
		}
	}
	public static class Gate implements HasAttrInterface {
		//	attr
		String name;
		String symbol;
		double x;
		double y;
		GateAddLevel addlevel = GateAddLevel.next;
		int swaplevel = 0;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("symbol".equals(qName))symbol = value;
			else if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("addlevel".equals(qName))addlevel = getGateAddLevel(value);
			else if("swaplevel".equals(qName))swaplevel = Integer.parseInt(value);
		}
	}
	public static class Wire implements PlainInterface,HasAttrInterface {
		//	attr
		double x1;
		double y1;
		double x2;
		double y2;
		double width;
		int layer;
		String extent;	//	Only applicable for airwires
		WireStyle style = WireStyle.continuous;
		double curve = 0;
		WireCap cap = WireCap.round;	//	Only applicable if 'curve' is not zero
		@Override
		public void setAttr(String qName, String value) {
			if("x1".equals(qName))x1 = Double.parseDouble(value);
			else if("y1".equals(qName))y1 = Double.parseDouble(value);
			else if("x2".equals(qName))x2 = Double.parseDouble(value);
			else if("y2".equals(qName))y2 = Double.parseDouble(value);
			else if("width".equals(qName))width = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("extent".equals(qName))extent = value;
			else if("style".equals(qName))style = getWireStyle(value);
			else if("curve".equals(qName))curve = Double.parseDouble(value);
			else if("cap".equals(qName))cap = getWireCap(value);
		}
	}
	public static class Dimension implements HasAttrInterface {
		//	attr
		double x1;
		double y1;
		double x2;
		double y2;
		double x3;
		double y3;
		int layer;
		DimensionType dtype = DimensionType.parallel;
		@Override
		public void setAttr(String qName, String value) {
			if("x1".equals(qName))x1 = Double.parseDouble(value);
			else if("y1".equals(qName))y1 = Double.parseDouble(value);
			else if("x2".equals(qName))x2 = Double.parseDouble(value);
			else if("y2".equals(qName))y2 = Double.parseDouble(value);
			else if("x3".equals(qName))x3 = Double.parseDouble(value);
			else if("y3".equals(qName))y3 = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("dtype".equals(qName))dtype = getDimensionType(value);
		}
	}
	public static class Text implements PlainInterface,HasTextInterface,HasAttrInterface {
		String text;
		@Override
		public String getText()	{	return text;	}
		@Override
		public void setText(String text) {	this.text = text;	}
		//	attr
		double x;
		double y;
		double size;
		int layer;
		TextFont font = TextFont.proportional;
		int ratio = 8;
		Rotation rot = new Rotation("R0");
		Align align = new Align("bottom-left");
		int distance = 50;
		@Override
		public void setAttr(String qName, String value) {
			if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("size".equals(qName))size = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("font".equals(qName))font = getTextFont(value);
			else if("ratio".equals(qName))ratio = Integer.parseInt(value);
			else if("rot".equals(qName))rot = new Rotation(value);
			else if("align".equals(qName))align = new Align(value);
			else if("distance".equals(qName))distance = Integer.parseInt(value);
		}
	}
	public static class Circle implements PlainInterface,HasAttrInterface {
		//	attr
		double x;
		double y;
		double radius;
		double width;
		int layer;
		@Override
		public void setAttr(String qName, String value) {
			if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("radius".equals(qName))radius = Double.parseDouble(value);
			else if("width".equals(qName))width = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
		}
	}
	public static class Rectangle implements PlainInterface,HasAttrInterface {
		//	attr
		double x1;
		double y1;
		double x2;
		double y2;
		int layer;
		Rotation rot = new Rotation("R0");
		@Override
		public void setAttr(String qName, String value) {
			if("x1".equals(qName))x1 = Double.parseDouble(value);
			else if("y1".equals(qName))y1 = Double.parseDouble(value);
			else if("x2".equals(qName))x2 = Double.parseDouble(value);
			else if("y2".equals(qName))y2 = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("rot".equals(qName))rot = new Rotation(value);
		}
	}
	public static class Frame implements PlainInterface,HasAttrInterface {
		//	attr
		double x1;
		double y1;
		double x2;
		double y2;
		int columns;
		int rows;
		int layer;
		boolean border_left = true;
		boolean border_top = true;
		boolean border_right = true;
		boolean border_bottom = true;
		@Override
		public void setAttr(String qName, String value) {
			if("x1".equals(qName))x1 = Double.parseDouble(value);
			else if("y1".equals(qName))y1 = Double.parseDouble(value);
			else if("x2".equals(qName))x2 = Double.parseDouble(value);
			else if("y2".equals(qName))y2 = Double.parseDouble(value);
			else if("columns".equals(qName))columns = Integer.parseInt(value);
			else if("rows".equals(qName))rows = Integer.parseInt(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("border-left".equals(qName))border_left = !"no".equals(value);
			else if("border-top".equals(qName))border_top = !"no".equals(value);
			else if("border-right".equals(qName))border_right = !"no".equals(value);
			else if("border-bottom".equals(qName))border_bottom = !"no".equals(value);
		}
	}
	public static class Hole implements PlainInterface,HasAttrInterface {
		//	attr
		double x;
		double y;
		double drill;
		@Override
		public void setAttr(String qName, String value) {
			if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("drill".equals(qName))drill = Double.parseDouble(value);
		}
	}
	public static class Pad implements PlainInterface,HasAttrInterface {
		//	attr
		String name;
		double x;
		double y;
		double drill;
		double diameter = 0;
		PadShape shape = PadShape.round;
		Rotation rot = new Rotation("R0");
		boolean stop = true;
		boolean thermals = true;
		boolean first = false;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("drill".equals(qName))drill = Double.parseDouble(value);
			else if("diameter".equals(qName))diameter = Double.parseDouble(value);
			else if("shape".equals(qName))shape = getPadShape(value);
			else if("rot".equals(qName))rot = new Rotation(value);
			else if("stop".equals(qName))stop = !"no".equals(value);
			else if("thermals".equals(qName))thermals = !"no".equals(value);
			else if("first".equals(qName))first = "yes".equals(value);
		}
	}
	public static class Smd implements PlainInterface,HasAttrInterface {
		//	attr
		String name;
		double x;
		double y;
		double dx;
		double dy;
		int layer;
		int roundness = 0;
		Rotation rot = new Rotation("R0");
		boolean stop = true;
		boolean thermals = true;
		boolean cream = true;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("dx".equals(qName))dx = Double.parseDouble(value);
			else if("dy".equals(qName))dy = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("roundness".equals(qName))roundness = Integer.parseInt(value);
			else if("rot".equals(qName))rot = new Rotation(value);
			else if("stop".equals(qName))stop = !"no".equals(value);
			else if("thermals".equals(qName))thermals = !"no".equals(value);
			else if("cream".equals(qName))cream = !"no".equals(value);
		}
	}
	public static class Element implements ParentInterface,HasAttrInterface {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		List<Variant> variantList = new ArrayList<Variant>();
		//	attr
		String name;
		String library;
		String packageValue;
		String value;
		double x;
		double y;
		boolean locked = false;
		boolean smashed = false;
		Rotation rot = new Rotation("R0");
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("library".equals(qName))name = value;
			else if("package".equals(qName))packageValue = value;
			else if("value".equals(qName))this.value = value;
			else if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("locked".equals(qName))locked = "yes".equals(value);
			else if("smashed".equals(qName))smashed = "yes".equals(value);
			else if("rot".equals(qName))rot = new Rotation(value);
		}
	}
	public static class Via implements HasAttrInterface {
		//	attr
		double x;
		double y;
		String extent;
		double drill;
		double diameter = 0;
		ViaShape shape = ViaShape.round;
		boolean alwaysstop = false;
		@Override
		public void setAttr(String qName, String value) {
			if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("extent".equals(qName))extent = value;
			else if("drill".equals(qName))drill = Double.parseDouble(value);
			else if("diameter".equals(qName))diameter = Double.parseDouble(value);
			else if("shape".equals(qName))shape = getViaShape(value);
			else if("alwaysstop".equals(qName))alwaysstop = "yes".equals(value);
		}
	}
	public static interface PlainInterface {}
	public static class Polygon implements PlainInterface,ParentInterface,HasAttrInterface {
		List<Vertex> vertextList = new ArrayList<Vertex>();	//	the vertexes must define a valid polygon; if the last vertex is the same as the first one, it is ignored
		//	attr
		double width;
		int layer;
		double spacing;
		PolygonPour pour = PolygonPour.solid;
		double isolate;	//	Only in <signal> or <package> context
		boolean orphans = false;	//	Only in <signal> context
		boolean thermals = true;	//	Only in <signal> context
		int rank = 0;	//	1..6 in <signal> context,0 or 7 in <package> context
		@Override
		public void setAttr(String qName, String value) {
			if("width".equals(qName))width = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("spacing".equals(qName))spacing = Double.parseDouble(value);
			else if("pour".equals(qName))pour = getPolygonPour(value);
			else if("isolate".equals(qName))isolate = Double.parseDouble(value);
			else if("orphans".equals(qName))orphans = "yes".equals(value);
			else if("thermals".equals(qName))thermals = !"no".equals(value);
			else if("rank".equals(qName))rank = Integer.parseInt(value);
		}
	}
	public static class Vertex implements HasAttrInterface {
		//	attr
		double x;
		double y;
		double curve = 0;	//	The curvature from this vertext to the next one
		@Override
		public void setAttr(String qName, String value) {
			if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("curve".equals(qName))curve = Double.parseDouble(value);
		}
	}
	public static class Pin implements HasAttrInterface {
		//	attr
		String name;
		double x;
		double y;
		PinVisible visible = PinVisible.both;
		PinLength length = PinLength.longLength;
		PinDirection direction = PinDirection.io;
		PinFunction function = PinFunction.none;
		int swaplevel = 0;
		Rotation rot = new Rotation("R0");
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("visible".equals(qName))visible = getPinVisible(value);
			else if("length".equals(qName))length = getPinLength(value);
			else if("direction".equals(qName))direction = getPinDirection(value);
			else if("function".equals(qName))function = getPinFunction(value);
			else if("swaplevel".equals(qName))swaplevel = Integer.parseInt(value);
			else if("rot".equals(qName))rot = new Rotation(value);
		}
	}
	public static class Part implements ParentInterface,HasAttrInterface {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		List<Variant> variantList = new ArrayList<Variant>();
		//	attr
		String name;
		String library;
		String deviceset;
		String device;
		String technology = "";
		String value;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("library".equals(qName))library = value;
			else if("deviceset".equals(qName))deviceset = value;
			else if("device".equals(qName))device = value;
			else if("technology".equals(qName))technology = value;
			else if("value".equals(qName))this.value = value;
		}
	}
	public static class Instance implements ParentInterface,HasAttrInterface {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		//	attr
		String part;
		String gate;
		double x;
		double y;
		boolean smashed = false;
		Rotation rot = new Rotation("R0");	//	Only 0,90,180 or 270
		@Override
		public void setAttr(String qName, String value) {
			if("part".equals(qName))part = value;
			else if("gate".equals(qName))gate = value;
			else if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("smashed".equals(qName))smashed = "yes".equals(value);
			else if("rot".equals(qName))rot = new Rotation(value);
		}
	}
	public static class Label implements HasAttrInterface {
		//	attr
		double x;
		double y;
		double size;
		int layer;
		TextFont font = TextFont.proportional;
		int ratio = 8;
		Rotation rot = new Rotation("R0");	//	Onlhy 0,90,180 or 270
		boolean xref = false;	//	only in <net> context
		@Override
		public void setAttr(String qName, String value) {
			if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("size".equals(qName))size = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("font".equals(qName))font = getTextFont(value);
			else if("ratio".equals(qName))ratio = Integer.parseInt(value);
			else if("rot".equals(qName))rot = new Rotation(value);
			else if("xref".equals(qName))xref = "yes".equals(value);
		}
	}
	public static class Junction implements HasAttrInterface {
		//	attr
		double x;
		double y;
		@Override
		public void setAttr(String qName, String value) {
			if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
		}
	}
	public static class Connect implements HasAttrInterface {
		//	attr
		String gate;
		String pin;
		String pad;
		ContactRoute route = ContactRoute.all;
		@Override
		public void setAttr(String qName, String value) {
			if("gate".equals(qName))gate = value;
			else if("pin".equals(qName))pin = value;
			else if("pad".equals(qName))pad = value;
			else if("route".equals(qName))route = getContactRoute(value);
		}
	}
	public static class Technology implements ParentInterface,HasAttrInterface {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		//	attr
		String name;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
		}
	}
	public static class Attribute implements HasAttrInterface {
		//	attr
		String name;
		String value;
		double x;
		double y;
		double size;
		int layer;
		TextFont font;
		int ratio;
		Rotation rot = new Rotation("R0");
		AttributeDisplay display = AttributeDisplay.value;	//	Only in <element> or <instance> context
		boolean constant = false;	//	Only in <device> context
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("value".equals(qName))this.value = value;
			else if("x".equals(qName))x = Double.parseDouble(value);
			else if("y".equals(qName))y = Double.parseDouble(value);
			else if("size".equals(qName))size = Double.parseDouble(value);
			else if("layer".equals(qName))layer = Integer.parseInt(value);
			else if("font".equals(qName))font = getTextFont(value);
			else if("ratio".equals(qName))ratio = Integer.parseInt(value);
			else if("rot".equals(qName))rot = new Rotation(value);
			else if("display".equals(qName))display = getAttributeDisplay(value);
			else if("constant".equals(qName))constant = "yes".equals(value);
		}
	}
	public static class Pinref implements HasAttrInterface {
		//	attr
		String part;
		String gate;
		String pin;
		@Override
		public void setAttr(String qName, String value) {
			if("part".equals(qName))part = value;
			else if("gate".equals(qName))gate = value;
			else if("pin".equals(qName))pin = value;
		}
	}
	public static class Contactref implements HasAttrInterface {
		//	attr
		String element;
		String pad;
		ContactRoute route = ContactRoute.all;
		String routetag = "";
		@Override
		public void setAttr(String qName, String value) {
			if("element".equals(qName))element = value;
			else if("pad".equals(qName))pad = value;
			else if("route".equals(qName))route = getContactRoute(value);
			else if("routetag".equals(qName))routetag = value;
		}
	}
		
	//----------------------------------------
	//	Miscellaneous objects
	//----------------------------------------

	public static class Setting implements HasAttrInterface {
		//	attr
		boolean alwaysvectorfont;
		VerticalText verticaltext = VerticalText.up;
		@Override
		public void setAttr(String qName, String value) {
			if("alwaysvectorfont".equals(qName))alwaysvectorfont = "yes".equals(value);
			else if("verticaltext".equals(qName))verticaltext = getVerticalText(value);
		}
	}
	public static class Designrules implements ParentInterface,HasAttrInterface {
		List<Description> descriptionList = new ArrayList<Description>();
		List<Param> paramList = new ArrayList<Param>();
		//	attr
		String name;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
		}
	}
	public static class Grid implements HasAttrInterface {
		//	attr
		double distance;
		GridUnit unitdist;
		GridUnit unit;
		GridStyle style = GridStyle.lines;
		int multiple = 1;
		boolean display = false;
		double altdistance;
		GridUnit altunitdist;
		GridUnit altunit;
		@Override
		public void setAttr(String qName, String value) {
			if("distance".equals(qName))distance = Double.parseDouble(value);
			else if("unitdist".equals(qName))unitdist = getGridUnit(value);
			else if("unit".equals(qName))unit = getGridUnit(value);
			else if("style".equals(qName))style = getGridStyle(value);
			else if("multiple".equals(qName))multiple = Integer.parseInt(value);
			else if("display".equals(qName))display = "yes".equals(value);
			else if("altdistance".equals(qName))altdistance = Double.parseDouble(value);
			else if("altunitdist".equals(qName))altunitdist = getGridUnit(value);
			else if("altunit".equals(qName))altunit = getGridUnit(value);
		}
	}
	public static class Layer implements HasAttrInterface {
		//	attr
		int number;
		String name;
		int color;
		int fill;
		boolean visible = true;
		boolean active = true;
		@Override
		public void setAttr(String qName, String value) {
			if("number".equals(qName))number = Integer.parseInt(value);
			else if("name".equals(qName))name = value;
			else if("color".equals(qName))color = Integer.parseInt(value);
			else if("fill".equals(qName))fill = Integer.parseInt(value);
			else if("visible".equals(qName))visible = !"no".equals(value);
			else if("active".equals(qName))active = !"no".equals(value);
		}
	}
	public static class Class implements ParentInterface,HasAttrInterface {
		List<Clearance> clearanceList = new ArrayList<Clearance>();
		//	attr
		int number;
		String name;
		double width = 0;
		double drill = 0;
		@Override
		public void setAttr(String qName, String value) {
			if("number".equals(qName))number = Integer.parseInt(value);
			else if("name".equals(qName))name = value;
			else if("width".equals(qName))width = Double.parseDouble(value);
			else if("drill".equals(qName))drill = Double.parseDouble(value);
		}
	}
	public static class Clearance implements HasAttrInterface {
		//	attr
		int classValue;
		double value = 0;
		@Override
		public void setAttr(String qName, String value) {
			if("class".equals(qName))classValue = Integer.parseInt(value);
			else if("value".equals(qName))this.value = Double.parseDouble(value);
		}
	}
	public static class Description implements HasTextInterface,HasAttrInterface {
		String text;
		@Override
		public String getText()	{	return text;	}
		@Override
		public void setText(String text) {	this.text = text;	}
		//	attr
		Language language = new Language("en");
		@Override
		public void setAttr(String qName, String value) {
			if("language".equals(qName))language = new Language(value);
		}
	}
	public static class Param implements HasAttrInterface {
		//	attr
		String name;
		String value;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("value".equals(qName))this.value = value;
		}
	}
	public static class Pass implements ParentInterface,HasAttrInterface {
		List<Param> paramList = new ArrayList<Param>();
		//	attr
		String name;
		String refer;
		boolean active = true;
		@Override
		public void setAttr(String qName, String value) {
			if("name".equals(qName))name = value;
			else if("refer".equals(qName))refer = value;
			else if("active".equals(qName))active = !"no".equals(value);
		}
	}
	public static class Approved implements HasAttrInterface {
		//	attr
		String hash;
		@Override
		public void setAttr(String qName, String value) {
			if("hash".equals(qName))hash = value;
		}
	}

	//----------------------------------------
	//	Others
	//----------------------------------------
	
	private static class SimpleStringObject {
		String value;
		SimpleStringObject(String value) {
			this.value = value;
		}
	}
	public static class Rotation extends SimpleStringObject {
		Rotation(String value) {
			super(value);
		}
	}
	public static class Align extends SimpleStringObject {
		Align(String value) {
			super(value);
		}
	}
	public static class Language extends SimpleStringObject {
		Language(String value) {
			super(value);
		}
	}
	
}
