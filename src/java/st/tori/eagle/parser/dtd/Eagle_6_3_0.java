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
		public List<Compatibility> compatibilityList = new ArrayList<Compatibility>();
		public Drawing drawing;
		//	attr
		public double version;
	}
	public static class Compatibility {
		public List<Note> noteList = new ArrayList<Note>();
	}
	public static class Note {
		public String value;
		//	attr
		public double version;
		public Severity severity;
	}
	public static class Drawing {
		public List<Setting> settings = new ArrayList<Setting>();
		public Grid grid;
		public List<Layer> layers = new ArrayList<Layer>();
		public DrawingInterface content;
	}
	public static interface DrawingInterface {}
	public static class Library implements DrawingInterface {
		public Description description;
		public List<Package> packages = new ArrayList<Package>();
		public List<Symbol> symbols = new ArrayList<Symbol>();
		public List<Deviceset> devicesets = new ArrayList<Deviceset>();
		//	attr
		public String name;
	}
	public static class Schematic implements DrawingInterface {
		public Description description;
		public List<Library> libraries = new ArrayList<Library>();
		public List<Attribute> attributes = new ArrayList<Attribute>();
		public List<Variantdef> variantdefs = new ArrayList<Variantdef>();
		public List<Class> classes = new ArrayList<Class>();
		public List<Part> parts = new ArrayList<Part>();
		public List<Sheet> sheets = new ArrayList<Sheet>();
		public List<Error> errors = new ArrayList<Error>();
		//	attr
		public String xreflabel;
		public String xrefpart;
	}
	public static class Board implements DrawingInterface {
		public Description description;
		public List<PlainInterface> plainList = new ArrayList<PlainInterface>();
		public List<Library> libraries = new ArrayList<Library>();
		public List<Attribute> attributes = new ArrayList<Attribute>();
		public List<Variantdef> variantdefs = new ArrayList<Variantdef>();
		public List<Class> classes = new ArrayList<Class>();
		public Designrules designrules;
		public List<Pass> autorouter = new ArrayList<Pass>();
		public List<Element> elements = new ArrayList<Element>();
		public List<Signal> signals = new ArrayList<Signal>();
		List<Approved> errors = new ArrayList<Approved>();
	}
	
	//----------------------------------------
	//	High level objects
	//----------------------------------------

	public static class Sheet {
		public Description description;
		public List<PlainInterface> plainList = new ArrayList<PlainInterface>();
		public List<Instance> instances = new ArrayList<Instance>();
		public List<Bus> busses = new ArrayList<Bus>();
		public List<Net> nets = new ArrayList<Net>();
	}
	public static class Package {
		public Description description;
		public List<PlainInterface> elements = new ArrayList<PlainInterface>();
		//	attr
		public String name;
	}
	public static class Symbol extends Package {}
	public static class Deviceset {
		public Description description;
		public List<Gate> gates = new ArrayList<Gate>();
		public List<Device> devices = new ArrayList<Device>();
		//	attr
		public String name;
		public String prefix = "";
		public boolean uservalue = false;
	}
	public static class Device {
		public List<Connect> connects = new ArrayList<Connect>();
		public List<Technology> technologies = new ArrayList<Technology>();
		//	attr
		public String name;
		public String packageValue;
	}
	public static class Bus {
		public List<Segment> segmentList = new ArrayList<Segment>();
		//	attr
		public String name;
	}
	public static class Net extends Bus {
		//	attr
		public int classValue = 0;
	}
	public static class Segment {
		public List<Pinref> pinrefList = new ArrayList<Pinref>();	//	only valid in a <net> context
		public List<Wire> wireList = new ArrayList<Wire>();	//	only valid in a <net> context
		public List<Junction> junctionList = new ArrayList<Junction>();
		public List<Label> labelList = new ArrayList<Label>();
	}
	public static class Signal {
		public List<Contactref> contactrefList = new ArrayList<Contactref>();
		public List<Polygon> polygonList = new ArrayList<Polygon>();
		public List<Wire> wireList = new ArrayList<Wire>();
		public List<Via> viaList = new ArrayList<Via>();
		//	attr
		public String name;
		public int classValue = 0;
		public boolean airwireshidden = false;
	}
	
	//----------------------------------------
	//	Basic objects
	//----------------------------------------

	public static class Variantdef {
		//	attr
		public String name;
		public boolean current = false;
	}
	public static class Variant {
		//	attr
		public String name;
		public boolean populate = true;
		public String value;
		public String technology;	//	Only in part context
	}
	public static class Gate {
		//	attr
		public String name;
		public String symbol;
		public double x;
		public double y;
		public GateAddLevel addlevel = GateAddLevel.next;
		public int swaplevel = 0;
	}
	public static class Wire implements PlainInterface {
		//	attr
		public double x1;
		public double y1;
		public double x2;
		public double y2;
		public double width;
		public Layer layer;
		public String extent;	//	Only applicable for airwires
		public WireStyle style = WireStyle.continuous;
		public double curve = 0;
		public WireCap cap = WireCap.round;	//	Only applicable if 'curve' is not zero
	}
	public static class Dimension {
		//	attr
		public double x1;
		public double y1;
		public double x2;
		public double y2;
		public double x3;
		public double y3;
		public Layer layer;
		public DimensionType dtype = DimensionType.parallel;
	}
	public static class Text implements PlainInterface {
		public String value;
		//	attr
		public double x;
		public double y;
		public double size;
		public Layer layer;
		public TextFont font = TextFont.proportional;
		public int ratio = 8;
		public Rotation rot = new Rotation("R0");
		public Align align = new Align("bottom-left");
		public int distance = 50;
	}
	public static class Circle implements PlainInterface {
		//	attr
		public double x;
		public double y;
		public double radius;
		public double width;
		public Layer layer;
	}
	public static class Rectangle implements PlainInterface {
		//	attr
		public double x1;
		public double y1;
		public double x2;
		public double y2;
		public Layer layer;
		public Rotation rot = new Rotation("R0");
	}
	public static class Frame implements PlainInterface {
		//	attr
		public double x1;
		public double y1;
		public double x2;
		public double y2;
		public int columns;
		public int rows;
		public Layer layer;
		public boolean border_left = true;
		public boolean border_top = true;
		public boolean border_right = true;
		public boolean border_bottom = true;
	}
	public static class Hole implements PlainInterface {
		//	attr
		public double x;
		public double y;
		public double drill;
	}
	public static class Pad implements PlainInterface {
		//	attr
		public String name;
		public double x;
		public double y;
		public double drill;
		public double diameter = 0;
		public PadShape shape = PadShape.round;
		public Rotation rot = new Rotation("R0");
		public boolean stop = true;
		public boolean thermals = true;
		public boolean first = false;
	}
	public static class Smd implements PlainInterface {
		//	attr
		public String name;
		public double x;
		public double y;
		public double dx;
		public double dy;
		public Layer layer;
		public int roundness = 0;
		public Rotation rot = new Rotation("R0");
		public boolean stop = true;
		public boolean thermals = true;
		public boolean cream = true;
	}
	public static class Element {
		public List<Attribute> attributeList = new ArrayList<Attribute>();
		public List<Variant> variantList = new ArrayList<Variant>();
		//	attr
		public String name;
		public String library;
		public String packageValue;
		public String value;
		public double x;
		public double y;
		public boolean locked = false;
		public boolean smashed = false;
		public Rotation rot = new Rotation("R0");
	}
	public static class Via {
		//	attr
		public double x;
		public double y;
		public String extent;
		public double drill;
		public double diameter = 0;
		public ViaShape shape = ViaShape.round;
		public boolean alwaysstop = false;
	}
	public static interface PlainInterface {}
	public static class Polygon implements PlainInterface {
		public List<Vertex> vertextList = new ArrayList<Vertex>();	//	the vertexes must define a valid polygon; if the last vertex is the same as the first one, it is ignored
		//	attr
		public double width;
		public Layer layer;
		public double spacing;
		public PolygonPour pour = PolygonPour.solid;
		public double isolate;	//	Only in <signal> or <package> context
		public boolean orphans = false;	//	Only in <signal> context
		public boolean thermals = true;	//	Only in <signal> context
		public int rank = 0;	//	1..6 in <signal> context,0 or 7 in <package> context
	}
	public static class Vertex {
		//	attr
		public double x;
		public double y;
		public double curve = 0;	//	The curvature from this vertext to the next one
	}
	public static class Pin {
		//	attr
		public String name;
		public double x;
		public double y;
		public PinVisible visible = PinVisible.both;
		public PinLength length = PinLength.longLength;
		public PinDirection direction = PinDirection.io;
		public PinFunction function = PinFunction.none;
		public int swaplevel = 0;
		public Rotation rot = new Rotation("R0");
	}
	public static class Part {
		public List<Attribute> attributeList = new ArrayList<Attribute>();
		public List<Variant> variantList = new ArrayList<Variant>();
		//	attr
		public String name;
		public String library;
		public String deviceset;
		public String device;
		public String technology = "";
		public String value;
	}
	public static class Instance {
		public List<Attribute> attributeList = new ArrayList<Attribute>();
		//	attr
		public String part;
		public String gate;
		public double x;
		public double y;
		public boolean smashed = false;
		public Rotation rot = new Rotation("R0");	//	Only 0,90,180 or 270
	}
	public static class Label {
		//	attr
		public double x;
		public double y;
		public double size;
		public Layer layer;
		public TextFont font = TextFont.proportional;
		public int ratio = 8;
		public Rotation rot = new Rotation("R0");	//	Onlhy 0,90,180 or 270
		public boolean xref = false;	//	only in <net> context
	}
	public static class Junction {
		//	attr
		public double x;
		public double y;
	}
	public static class Connect {
		//	attr
		public String gate;
		public String pin;
		public String pad;
		public ContactRoute route = ContactRoute.all;
	}
	public static class Technology {
		public List<Attribute> attributeList = new ArrayList<Attribute>();
		//	attr
		public String name;
	}
	public static class Attribute {
		//	attr
		public String name;
		public String value;
		public double x;
		public double y;
		public double size;
		public Layer layer;
		public TextFont font;
		public int ratio;
		public Rotation rot = new Rotation("R0");
		public AttributeDisplay display = AttributeDisplay.value;	//	Only in <element> or <instance> context
		public boolean constant = false;	//	Only in <device> context
	}
	public static class Pinref {
		//	attr
		public String part;
		public String gate;
		public String pin;
	}
	public static class Contactref {
		//	attr
		public String element;
		public String pad;
		public ContactRoute route = ContactRoute.all;
		public String routetag = "";
	}
		
	//----------------------------------------
	//	Miscellaneous objects
	//----------------------------------------

	public static class Setting {
		//	attr
		public boolean alwaysvectorfont;
		public VerticalText verticaltext = VerticalText.up;
	}
	public static class Designrules {
		public List<Description> descriptionList = new ArrayList<Description>();
		public List<Param> paramList = new ArrayList<Param>();
		//	attr
		public String name;
	}
	public static class Grid {
		//	attr
		public double distance;
		public GridUnit unitdist;
		public GridUnit unit;
		public GridStyle style = GridStyle.lines;
		public int multiple = 1;
		public boolean display = false;
		public double altdistance;
		public GridUnit altunitdist;
		public GridUnit altunit;
	}
	public static class Layer {
		//	attr
		public int number;
		public String name;
		public int color;
		public int fill;
		public boolean visible = true;
		public boolean active = true;
	}
	public static class Class {
		public List<Clearance> clearanceList = new ArrayList<Clearance>();
		//	attr
		public int number;
		public String name;
		public double width = 0;
		public double drill = 0;
	}
	public static class Clearance {
		//	attr
		public int classValue;
		public double value = 0;
	}
	public static class Description {
		String value;
		//	attr
		public String language = "en";
	}
	public static class Param {
		//	attr
		public String name;
		public String value;
	}
	public static class Pass {
		public List<Param> paramList = new ArrayList<Param>();
		//	attr
		public String name;
		public String refer;
		public boolean active = true;
	}
	public static class Approved {
		//	attr
		public String hash;
	}

	//----------------------------------------
	//	Others
	//----------------------------------------
	
	private static class SimpleStringObject {
		public String value;
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
