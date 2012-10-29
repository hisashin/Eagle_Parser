package st.tori.eagle.parser.dtd;

import java.util.ArrayList;
import java.util.List;

public class Eagle_6_3_0 {

	//----------------------------------------
	//		Entity
	//----------------------------------------
	
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
	
	public enum AlignEntity {
		bottom_left,bottom_center,bottom_right,center_left,center,center_right,top_left,top_center,top_right,
	}
	public static AlignEntity getAlignEntity(String str) {
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
	public static VerticalText getVerticalText(String str) {
		if("up".equals(str))return VerticalText.up;
		if("down".equals(str))return VerticalText.down;
		return null;
	}

	//----------------------------------------
	//		Drawing Definitions
	//----------------------------------------

	public static class Eagle {
		List<Compatibility> compatibilityList = new ArrayList<Compatibility>();
		Drawing drawing;
		//	attr
		double version;
	}
	public static class Compatibility {
		List<Note> noteList = new ArrayList<Note>();
	}
	public static class Note {
		String value;
		//	attr
		double version;
		Severity severity;
	}
	public static class Drawing {
		List<Setting> settings = new ArrayList<Setting>();
		Grid grid;
		List<Layer> layers = new ArrayList<Layer>();
		DrawingInterface content;
	}
	public static interface DrawingInterface {}
	public static class Library implements DrawingInterface {
		Description description;
		List<Package> packages = new ArrayList<Package>();
		List<Symbol> symbols = new ArrayList<Symbol>();
		List<Deviceset> devicesets = new ArrayList<Deviceset>();
		//	attr
		String name;
	}
	public static class Schematic implements DrawingInterface {
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
	}
	public static class Board implements DrawingInterface {
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

	public static class Sheet {
		Description description;
		List<PlainInterface> plainList = new ArrayList<PlainInterface>();
		List<Instance> instances = new ArrayList<Instance>();
		List<Bus> busses = new ArrayList<Bus>();
		List<Net> nets = new ArrayList<Net>();
	}
	public static class Package {
		Description description;
		List<PlainInterface> elements = new ArrayList<PlainInterface>();
		//	attr
		String name;
	}
	public static class Symbol extends Package {}
	public static class Deviceset {
		Description description;
		List<Gate> gates = new ArrayList<Gate>();
		List<Device> devices = new ArrayList<Device>();
		//	attr
		String name;
		String prefix = "";
		boolean uservalue = false;
	}
	public static class Device {
		List<Connect> connects = new ArrayList<Connect>();
		List<Technology> technologies = new ArrayList<Technology>();
		//	attr
		String name;
		String packageValue;
	}
	public static class Bus {
		List<Segment> segmentList = new ArrayList<Segment>();
		//	attr
		String name;
	}
	public static class Net extends Bus {
		//	attr
		int classValue = 0;
	}
	public static class Segment {
		List<Pinref> pinrefList = new ArrayList<Pinref>();	//	only valid in a <net> context
		List<Wire> wireList = new ArrayList<Wire>();	//	only valid in a <net> context
		List<Junction> junctionList = new ArrayList<Junction>();
		List<Label> labelList = new ArrayList<Label>();
	}
	public static class Signal {
		List<Contactref> contactrefList = new ArrayList<Contactref>();
		List<Polygon> polygonList = new ArrayList<Polygon>();
		List<Wire> wireList = new ArrayList<Wire>();
		List<Via> viaList = new ArrayList<Via>();
		//	attr
		String name;
		int classValue = 0;
		boolean airwireshidden = false;
	}
	
	//----------------------------------------
	//	Basic objects
	//----------------------------------------

	public static class Variantdef {
		//	attr
		String name;
		boolean current = false;
	}
	public static class Variant {
		//	attr
		String name;
		boolean populate = true;
		String value;
		String technology;	//	Only in part context
	}
	public static class Gate {
		//	attr
		String name;
		String symbol;
		double x;
		double y;
		GateAddLevel addlevel = GateAddLevel.next;
		int swaplevel = 0;
	}
	public static class Wire implements PlainInterface {
		//	attr
		double x1;
		double y1;
		double x2;
		double y2;
		double width;
		Layer layer;
		String extent;	//	Only applicable for airwires
		WireStyle style = WireStyle.continuous;
		double curve = 0;
		WireCap cap = WireCap.round;	//	Only applicable if 'curve' is not zero
	}
	public static class Dimension {
		//	attr
		double x1;
		double y1;
		double x2;
		double y2;
		double x3;
		double y3;
		Layer layer;
		DimensionType dtype = DimensionType.parallel;
	}
	public static class Text implements PlainInterface {
		String value;
		//	attr
		double x;
		double y;
		double size;
		Layer layer;
		TextFont font = TextFont.proportional;
		int ratio = 8;
		Rotation rot = new Rotation("R0");
		Align align = new Align("bottom-left");
		int distance = 50;
	}
	public static class Circle implements PlainInterface {
		//	attr
		double x;
		double y;
		double radius;
		double width;
		Layer layer;
	}
	public static class Rectangle implements PlainInterface {
		//	attr
		double x1;
		double y1;
		double x2;
		double y2;
		Layer layer;
		Rotation rot = new Rotation("R0");
	}
	public static class Frame implements PlainInterface {
		//	attr
		double x1;
		double y1;
		double x2;
		double y2;
		int columns;
		int rows;
		Layer layer;
		boolean border_left = true;
		boolean border_top = true;
		boolean border_right = true;
		boolean border_bottom = true;
	}
	public static class Hole implements PlainInterface {
		//	attr
		double x;
		double y;
		double drill;
	}
	public static class Pad implements PlainInterface {
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
	}
	public static class Smd implements PlainInterface {
		//	attr
		String name;
		double x;
		double y;
		double dx;
		double dy;
		Layer layer;
		int roundness = 0;
		Rotation rot = new Rotation("R0");
		boolean stop = true;
		boolean thermals = true;
		boolean cream = true;
	}
	public static class Element {
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
	}
	public static class Via {
		//	attr
		double x;
		double y;
		String extent;
		double drill;
		double diameter = 0;
		ViaShape shape = ViaShape.round;
		boolean alwaysstop = false;
	}
	public static interface PlainInterface {}
	public static class Polygon implements PlainInterface {
		List<Vertex> vertextList = new ArrayList<Vertex>();	//	the vertexes must define a valid polygon; if the last vertex is the same as the first one, it is ignored
		//	attr
		double width;
		Layer layer;
		double spacing;
		PolygonPour pour = PolygonPour.solid;
		double isolate;	//	Only in <signal> or <package> context
		boolean orphans = false;	//	Only in <signal> context
		boolean thermals = true;	//	Only in <signal> context
		int rank = 0;	//	1..6 in <signal> context,0 or 7 in <package> context
	}
	public static class Vertex {
		//	attr
		double x;
		double y;
		double curve = 0;	//	The curvature from this vertext to the next one
	}
	public static class Pin {
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
	}
	public static class Part {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		List<Variant> variantList = new ArrayList<Variant>();
		//	attr
		String name;
		String library;
		String deviceset;
		String device;
		String technology = "";
		String value;
	}
	public static class Instance {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		//	attr
		String part;
		String gate;
		double x;
		double y;
		boolean smashed = false;
		Rotation rot = new Rotation("R0");	//	Only 0,90,180 or 270
	}
	public static class Label {
		//	attr
		double x;
		double y;
		double size;
		Layer layer;
		TextFont font = TextFont.proportional;
		int ratio = 8;
		Rotation rot = new Rotation("R0");	//	Onlhy 0,90,180 or 270
		boolean xref = false;	//	only in <net> context
	}
	public static class Junction {
		//	attr
		double x;
		double y;
	}
	public static class Connect {
		//	attr
		String gate;
		String pin;
		String pad;
		ContactRoute route = ContactRoute.all;
	}
	public static class Technology {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		//	attr
		String name;
	}
	public static class Attribute {
		//	attr
		String name;
		String value;
		double x;
		double y;
		double size;
		Layer layer;
		TextFont font;
		int ratio;
		Rotation rot = new Rotation("R0");
		AttributeDisplay display = AttributeDisplay.value;	//	Only in <element> or <instance> context
		boolean constant = false;	//	Only in <device> context
	}
	public static class Pinref {
		//	attr
		String part;
		String gate;
		String pin;
	}
	public static class Contactref {
		//	attr
		String element;
		String pad;
		ContactRoute route = ContactRoute.all;
		String routetag = "";
	}
		
	//----------------------------------------
	//	Miscellaneous objects
	//----------------------------------------

	public static class Setting {
		//	attr
		boolean alwaysvectorfont;
		VerticalText verticaltext = VerticalText.up;
	}
	public static class Designrules {
		List<Description> descriptionList = new ArrayList<Description>();
		List<Param> paramList = new ArrayList<Param>();
		//	attr
		String name;
	}
	public static class Grid {
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
	}
	public static class Layer {
		//	attr
		int number;
		String name;
		int color;
		int fill;
		boolean visible = true;
		boolean active = true;
	}
	public static class Class {
		List<Clearance> clearanceList = new ArrayList<Clearance>();
		//	attr
		int number;
		String name;
		double width = 0;
		double drill = 0;
	}
	public static class Clearance {
		//	attr
		int classValue;
		double value = 0;
	}
	public static class Description {
		String value;
		//	attr
		String language = "en";
	}
	public static class Param {
		//	attr
		String name;
		String value;
	}
	public static class Pass {
		List<Param> paramList = new ArrayList<Param>();
		//	attr
		String name;
		String refer;
		boolean active = true;
	}
	public static class Approved {
		//	attr
		String hash;
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
	

	


	
}
