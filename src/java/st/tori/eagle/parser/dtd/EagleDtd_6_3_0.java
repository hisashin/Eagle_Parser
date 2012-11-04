package st.tori.eagle.parser.dtd;

import java.util.ArrayList;
import java.util.List;

import magick.DrawInfo;
import magick.GravityType;
import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;
import st.tori.eagle.parser.draw.Color;
import st.tori.eagle.parser.draw.Color.LayerName;
import st.tori.eagle.parser.draw.DrawManager;
import st.tori.eagle.parser.dru.EagleDru;
import st.tori.eagle.parser.exception.DruParserException;
import st.tori.eagle.parser.exception.EagleParserException;
import st.tori.eagle.parser.parse.AbstractEagleParser.XYPosition;

public class EagleDtd_6_3_0 extends AbstractEagleDtd {

	@Override
	public Object newInstance(String qName) throws EagleParserException {
		if ("eagle".equals(qName))
			return new Eagle();
		else if ("compatibility".equals(qName))
			return new Compatibility();
		else if ("note".equals(qName))
			return new Note();
		else if ("drawing".equals(qName))
			return new Drawing();
		else if ("library".equals(qName))
			return new Library();
		else if ("schematic".equals(qName))
			return new Schematic();
		else if ("board".equals(qName))
			return new Board();
		else if ("sheet".equals(qName))
			return new Sheet();
		else if ("package".equals(qName))
			return new Package();
		else if ("symbol".equals(qName))
			return new Symbol();
		else if ("deviceset".equals(qName))
			return new Deviceset();
		else if ("device".equals(qName))
			return new Device();
		else if ("bus".equals(qName))
			return new Bus();
		else if ("net".equals(qName))
			return new Net();
		else if ("segment".equals(qName))
			return new Segment();
		else if ("signal".equals(qName))
			return new Signal();
		else if ("sariantdef".equals(qName))
			return new Variantdef();
		else if ("variant".equals(qName))
			return new Variant();
		else if ("gate".equals(qName))
			return new Gate();
		else if ("wire".equals(qName))
			return new Wire();
		else if ("dimension".equals(qName))
			return new Dimension();
		else if ("text".equals(qName))
			return new Text();
		else if ("circle".equals(qName))
			return new Circle();
		else if ("rectangle".equals(qName))
			return new Rectangle();
		else if ("frame".equals(qName))
			return new Frame();
		else if ("hole".equals(qName))
			return new Hole();
		else if ("pad".equals(qName))
			return new Pad();
		else if ("smd".equals(qName))
			return new Smd();
		else if ("element".equals(qName))
			return new Element();
		else if ("via".equals(qName))
			return new Via();
		else if ("polygon".equals(qName))
			return new Polygon();
		else if ("vertex".equals(qName))
			return new Vertex();
		else if ("pin".equals(qName))
			return new Pin();
		else if ("part".equals(qName))
			return new Part();
		else if ("instance".equals(qName))
			return new Instance();
		else if ("label".equals(qName))
			return new Label();
		else if ("junction".equals(qName))
			return new Junction();
		else if ("connect".equals(qName))
			return new Connect();
		else if ("technology".equals(qName))
			return new Technology();
		else if ("attribute".equals(qName))
			return new Attribute();
		else if ("pinref".equals(qName))
			return new Pinref();
		else if ("contactref".equals(qName))
			return new Contactref();
		else if ("setting".equals(qName))
			return new Setting();
		else if ("designrules".equals(qName))
			return new Designrules();
		else if ("grid".equals(qName))
			return new Grid();
		else if ("layer".equals(qName))
			return new Layer();
		else if ("class".equals(qName))
			return new Class();
		else if ("clearance".equals(qName))
			return new Clearance();
		else if ("description".equals(qName))
			return new Description();
		else if ("param".equals(qName))
			return new Param();
		else if ("pass".equals(qName))
			return new Pass();
		else if ("approved".equals(qName))
			return new Approved();
		else if (isIgnoreQName(qName))
			return null;
		throw new EagleParserException("Unkown qName " + qName);
	}

	@Override
	public boolean isIgnoreQName(String qName) {
		return ("variantdefs".equals(qName) || "settings".equals(qName)
				|| "sheets".equals(qName) || "layers".equals(qName)
				|| "packages".equals(qName) || "symbols".equals(qName)
				|| "devicesets".equals(qName) || "gates".equals(qName)
				|| "devices".equals(qName) || "libraries".equals(qName)
				|| "connects".equals(qName) || "technologies".equals(qName)
				|| "attributes".equals(qName) || "classes".equals(qName)
				|| "parts".equals(qName) || "instances".equals(qName)
				|| "errors".equals(qName) || "plain".equals(qName)
				|| "autorouter".equals(qName) || "elements".equals(qName)
				|| "signals".equals(qName) || "busses".equals(qName) || "nets"
					.equals(qName));
	}

	// ----------------------------------------
	// Entity
	// ----------------------------------------

	public enum GridUnit {
		mic(1), mm(1), mil(1), inch(1);

		private double scale;

		GridUnit(double scale) {
			this.scale = scale;
		}

		public double getScale() {
			return scale;
		}
	}

	private static GridUnit getGridUnit(String str) {
		if ("mic".equals(str))
			return GridUnit.mic;
		if ("mm".equals(str))
			return GridUnit.mm;
		if ("mil".equals(str))
			return GridUnit.mil;
		if ("inch".equals(str))
			return GridUnit.inch;
		return null;
	}

	public enum GridStyle {
		lines, dots,
	}

	private static GridStyle getGridStyle(String str) {
		if ("lines".equals(str))
			return GridStyle.lines;
		if ("dots".equals(str))
			return GridStyle.dots;
		return null;
	}

	public enum WireStyle {
		continuous, longdash, shortdash, dashdot,
	}

	private static WireStyle getWireStyle(String str) {
		if ("continuous".equals(str))
			return WireStyle.continuous;
		if ("longdash".equals(str))
			return WireStyle.longdash;
		if ("shortdash".equals(str))
			return WireStyle.shortdash;
		if ("dashdot".equals(str))
			return WireStyle.dashdot;
		return null;
	}

	public enum WireCap {
		flat, round,
	}

	private static WireCap getWireCap(String str) {
		if ("flat".equals(str))
			return WireCap.flat;
		if ("round".equals(str))
			return WireCap.round;
		return null;
	}

	public enum PadShape {
		square, round, octagon, longShape, offset,
	}

	private static PadShape getPadShape(String str) {
		if ("square".equals(str))
			return PadShape.square;
		if ("round".equals(str))
			return PadShape.round;
		if ("octagon".equals(str))
			return PadShape.octagon;
		if ("long".equals(str))
			return PadShape.longShape;
		if ("offset".equals(str))
			return PadShape.offset;
		return null;
	}

	public enum ViaShape {
		square, round, octagon,
	}

	private static ViaShape getViaShape(String str) {
		if ("square".equals(str))
			return ViaShape.square;
		if ("round".equals(str))
			return ViaShape.round;
		if ("octagon".equals(str))
			return ViaShape.octagon;
		return null;
	}

	public enum TextFont {
		vector, proportional, fixed,
	}

	private static TextFont getTextFont(String str) {
		if ("vector".equals(str))
			return TextFont.vector;
		if ("proportional".equals(str))
			return TextFont.proportional;
		if ("fixed".equals(str))
			return TextFont.fixed;
		return null;
	}

	public enum AttributeDisplay {
		off, value, name, both,
	}

	private static AttributeDisplay getAttributeDisplay(String str) {
		if ("off".equals(str))
			return AttributeDisplay.off;
		if ("value".equals(str))
			return AttributeDisplay.value;
		if ("name".equals(str))
			return AttributeDisplay.name;
		if ("both".equals(str))
			return AttributeDisplay.both;
		return null;
	}

	public enum PolygonPour {
		solid, hatch, cutout,
	}

	private static PolygonPour getPolygonPour(String str) {
		if ("solid".equals(str))
			return PolygonPour.solid;
		if ("hatch".equals(str))
			return PolygonPour.hatch;
		if ("cutout".equals(str))
			return PolygonPour.cutout;
		return null;
	}

	public enum PinVisible {
		off, pad, pin, both,
	}

	private static PinVisible getPinVisible(String str) {
		if ("off".equals(str))
			return PinVisible.off;
		if ("pad".equals(str))
			return PinVisible.pad;
		if ("pin".equals(str))
			return PinVisible.pin;
		if ("both".equals(str))
			return PinVisible.both;
		return null;
	}

	public enum PinLength {
		point, shortLength, middle, longLength,
	}

	private static PinLength getPinLength(String str) {
		if ("point".equals(str))
			return PinLength.point;
		if ("shortLength".equals(str))
			return PinLength.shortLength;
		if ("middle".equals(str))
			return PinLength.middle;
		if ("longLength".equals(str))
			return PinLength.longLength;
		return null;
	}

	public enum PinDirection {
		nc, in, out, io, oc, pwr, pas, hiz, sup,
	}

	private static PinDirection getPinDirection(String str) {
		if ("nc".equals(str))
			return PinDirection.nc;
		if ("in".equals(str))
			return PinDirection.in;
		if ("out".equals(str))
			return PinDirection.out;
		if ("io".equals(str))
			return PinDirection.io;
		if ("oc".equals(str))
			return PinDirection.oc;
		if ("pwr".equals(str))
			return PinDirection.pwr;
		if ("pas".equals(str))
			return PinDirection.pas;
		if ("hiz".equals(str))
			return PinDirection.hiz;
		if ("sup".equals(str))
			return PinDirection.sup;
		return null;
	}

	public enum PinFunction {
		none, dot, clk, dotclk,
	}

	private static PinFunction getPinFunction(String str) {
		if ("none".equals(str))
			return PinFunction.none;
		if ("dot".equals(str))
			return PinFunction.dot;
		if ("clk".equals(str))
			return PinFunction.clk;
		if ("dotclk".equals(str))
			return PinFunction.dotclk;
		return null;
	}

	public enum GateAddLevel {
		must, can, next, request, always,
	}

	private static GateAddLevel getGateAddLevel(String str) {
		if ("must".equals(str))
			return GateAddLevel.must;
		if ("can".equals(str))
			return GateAddLevel.can;
		if ("next".equals(str))
			return GateAddLevel.next;
		if ("request".equals(str))
			return GateAddLevel.request;
		if ("always".equals(str))
			return GateAddLevel.always;
		return null;
	}

	public enum ContactRoute {
		all, any,
	}

	private static ContactRoute getContactRoute(String str) {
		if ("all".equals(str))
			return ContactRoute.all;
		if ("any".equals(str))
			return ContactRoute.any;
		return null;
	}

	public enum DimensionType {
		parallel, horizontal, vertical, radius, diameter,
	}

	private static DimensionType getDimensionType(String str) {
		if ("parallel".equals(str))
			return DimensionType.parallel;
		if ("horizontal".equals(str))
			return DimensionType.horizontal;
		if ("vertical".equals(str))
			return DimensionType.vertical;
		if ("radius".equals(str))
			return DimensionType.radius;
		if ("diameter".equals(str))
			return DimensionType.diameter;
		return null;
	}

	public enum Severity {
		info, warning, error,
	}

	private static Severity getSeverity(String str) {
		if ("info".equals(str))
			return Severity.info;
		if ("warning".equals(str))
			return Severity.warning;
		if ("error".equals(str))
			return Severity.error;
		return null;
	}

	public enum Align {
		bottom_left, bottom_center, bottom_right, center_left, center, center_right, top_left, top_center, top_right,
	}

	private static Align getAlign(String str) {
		if ("bottom-left".equals(str))
			return Align.bottom_left;
		if ("bottom-center".equals(str))
			return Align.bottom_center;
		if ("bottom-right".equals(str))
			return Align.bottom_right;
		if ("center-left".equals(str))
			return Align.center_left;
		if ("center".equals(str))
			return Align.center;
		if ("center-right".equals(str))
			return Align.center_right;
		if ("top-left".equals(str))
			return Align.top_left;
		if ("top-center".equals(str))
			return Align.top_center;
		if ("top-right".equals(str))
			return Align.top_right;
		return null;
	}

	public enum VerticalText {
		up, down,
	}

	private static VerticalText getVerticalText(String str) {
		if ("up".equals(str))
			return VerticalText.up;
		if ("down".equals(str))
			return VerticalText.down;
		return null;
	}

	// ----------------------------------------
	// Drawing Definitions
	// ----------------------------------------

	public static class Eagle implements ParentInterface, HasAttrInterface {
		List<Compatibility> compatibilityList = new ArrayList<Compatibility>();
		Drawing drawing;

		@Override
		public void addChild(Object child) {
			if (child instanceof Compatibility)
				compatibilityList.add((Compatibility) child);
			else if (child instanceof Drawing)
				drawing = (Drawing) child;
		}

		// attr
		double version;

		@Override
		public void setAttr(String qName, String value) {
			if ("version".equals(qName))
				version = Double.parseDouble(value);
		}

		@Override
		public String toString() {
			return "Eagle[compatibilityList.size()=" + compatibilityList.size()
					+ ",drawing=" + drawing + ",version=" + version + "]";
		}

		// special
		public XYPosition minXY;
		public XYPosition maxXY;

		public void draw(DrawManager m, MagickImage mi, ImageInfo ii)
				throws MagickException {
			if (drawing != null)
				drawing.draw(m, mi, ii);
		}
	}

	public static class Compatibility implements ParentInterface {
		List<Note> noteList = new ArrayList<Note>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Note)
				noteList.add((Note) child);
		}

		@Override
		public String toString() {
			return "Compatibility[noteList.size()=" + noteList.size() + "]";
		}
	}

	public static class Note implements HasTextInterface, HasAttrInterface {
		String text;

		@Override
		public String getText() {
			return text;
		}

		@Override
		public void setText(String text) {
			this.text = text;
		}

		// attr
		double version;
		Severity severity;

		@Override
		public void setAttr(String qName, String value) {
			if ("version".equals(qName))
				version = Double.parseDouble(value);
			else if ("severity".equals(qName))
				severity = getSeverity(value);
		}

		@Override
		public String toString() {
			return "Note[text=" + text + ",version=" + version + ",severity="
					+ severity + "]";
		}
	}

	public static class Drawing implements ParentInterface {
		List<Setting> settings = new ArrayList<Setting>();
		Grid grid;
		List<Layer> layers = new ArrayList<Layer>();
		DrawingInterface content;

		@Override
		public void addChild(Object child) {
			if (child instanceof Setting)
				settings.add((Setting) child);
			else if (child instanceof Grid)
				grid = (Grid) child;
			else if (child instanceof Layer)
				layers.add((Layer) child);
			else if (child instanceof DrawingInterface)
				content = (DrawingInterface) child;
		}

		public void draw(DrawManager m, MagickImage mi, ImageInfo ii)
				throws MagickException {
			if (content != null)
				content.draw(m, mi, ii);
		}

		@Override
		public String toString() {
			return "Drawing[settings.size()=" + settings.size() + ",grid="
					+ grid + ",layers.size()=" + layers.size() + ",content="
					+ content + "]";
		}
	}

	public static interface DrawingInterface {
		void draw(DrawManager m, MagickImage mi, ImageInfo ii)
				throws MagickException;
	}

	public static class Library implements DrawingInterface, ParentInterface,
			HasAttrInterface {
		Description description;
		public List<Package> packages = new ArrayList<Package>();
		List<Symbol> symbols = new ArrayList<Symbol>();
		List<Deviceset> devicesets = new ArrayList<Deviceset>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Description)
				description = (Description) child;
			else if (child instanceof Package)
				packages.add((Package) child);
			else if (child instanceof Symbol)
				symbols.add((Symbol) child);
			else if (child instanceof Deviceset)
				devicesets.add((Deviceset) child);
		}

		// attr
		public String name;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
		}

		@Override
		public String toString() {
			return "Library[description=" + description + ",packages.size()="
					+ packages.size() + ",symbols.size()=" + symbols.size()
					+ ",devicesets.size()=" + devicesets.size() + ",name="
					+ name + "]";
		}

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii)
				throws MagickException {
			for (int i = 0; i < packages.size(); i++)
				packages.get(i).draw(m, mi, ii);
			for (int i = 0; i < symbols.size(); i++)
				symbols.get(i).draw(m, mi, ii);
		}
	}

	public static class Schematic implements DrawingInterface, ParentInterface,
			HasAttrInterface {
		Description description;
		List<Library> libraries = new ArrayList<Library>();
		List<Attribute> attributes = new ArrayList<Attribute>();
		List<Variantdef> variantdefs = new ArrayList<Variantdef>();
		List<Class> classes = new ArrayList<Class>();
		List<Part> parts = new ArrayList<Part>();
		List<Sheet> sheets = new ArrayList<Sheet>();
		List<Error> errors = new ArrayList<Error>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Description)
				description = (Description) child;
			else if (child instanceof Library)
				libraries.add((Library) child);
			else if (child instanceof Attribute)
				attributes.add((Attribute) child);
			else if (child instanceof Variantdef)
				variantdefs.add((Variantdef) child);
			else if (child instanceof Class)
				classes.add((Class) child);
			else if (child instanceof Part)
				parts.add((Part) child);
			else if (child instanceof Sheet)
				sheets.add((Sheet) child);
			else if (child instanceof Error)
				errors.add((Error) child);
		}

		// attr
		String xreflabel;
		String xrefpart;

		@Override
		public void setAttr(String qName, String value) {
			if ("xreflabel".equals(qName))
				xreflabel = value;
			else if ("xrefpart".equals(qName))
				xrefpart = value;
		}

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii) {
			// TODO Auto-generated method stub

		}

		@Override
		public String toString() {
			return "Schematic[description=" + description
					+ ",libraries.size()=" + libraries.size()
					+ ",attributes.size()=" + attributes.size()
					+ ",variantdefs.size()=" + variantdefs.size()
					+ ",classes.size()=" + classes.size() + ",parts.size()="
					+ parts.size() + ",sheets.size()=" + sheets.size()
					+ ",errors.size()=" + errors.size() + ",xreflabel="
					+ xreflabel + ",xrefpart=" + xrefpart + "]";
		}
	}

	public static class Board implements DrawingInterface, ParentInterface {
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

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii)
				throws MagickException {
			Library lib;
			Package pack;
			for (int i = 0; i < libraries.size(); i++) {
				lib = libraries.get(i);
				for (int j = 0; j < lib.packages.size(); j++) {
					pack = lib.packages.get(j);
					m.addPackage(lib.name, pack.name, pack);
				}
			}
			for (int i = 0; i < plainList.size(); i++)
				plainList.get(i).draw(m, mi, ii, 0, 0, 0);
			for (int i = 0; i < signals.size(); i++)
				signals.get(i).draw(m, mi, ii);
			for (int i = 0; i < elements.size(); i++)
				elements.get(i).draw(m, mi, ii);
		}

		@Override
		public void addChild(Object child) {
			if (child instanceof Description)
				description = (Description) child;
			else if (child instanceof PlainInterface)
				plainList.add((PlainInterface) child);
			else if (child instanceof Library)
				libraries.add((Library) child);
			else if (child instanceof Attribute)
				attributes.add((Attribute) child);
			else if (child instanceof Variantdef)
				variantdefs.add((Variantdef) child);
			else if (child instanceof Class)
				classes.add((Class) child);
			else if (child instanceof Designrules)
				designrules = (Designrules) child;
			else if (child instanceof Pass)
				autorouter.add((Pass) child);
			else if (child instanceof Element)
				elements.add((Element) child);
			else if (child instanceof Signal)
				signals.add((Signal) child);
			else if (child instanceof Approved)
				errors.add((Approved) child);
		}

		@Override
		public String toString() {
			return "Board[description=" + description + ",plainList.size()="
					+ plainList.size() + ",libraries.size()="
					+ libraries.size() + ",attributes.size()="
					+ attributes.size() + ",variantdefs.size()="
					+ variantdefs.size() + ",classes.size()=" + classes.size()
					+ ",designrules=" + designrules + ",autorouter.size()="
					+ autorouter.size() + ",elements.size()=" + elements.size()
					+ ",signals.size()=" + signals.size() + ",errors.size()="
					+ errors.size() + "]";
		}

	}

	// ----------------------------------------
	// High level objects
	// ----------------------------------------

	public static class Sheet implements ParentInterface {
		Description description;
		List<PlainInterface> plainList = new ArrayList<PlainInterface>();
		List<Instance> instances = new ArrayList<Instance>();
		List<Bus> busses = new ArrayList<Bus>();
		List<Net> nets = new ArrayList<Net>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Description)
				description = (Description) child;
			else if (child instanceof PlainInterface)
				plainList.add((PlainInterface) child);
			else if (child instanceof Instance)
				instances.add((Instance) child);
			else if (child instanceof Bus)
				busses.add((Bus) child);
			else if (child instanceof Net)
				nets.add((Net) child);
		}

		@Override
		public String toString() {
			return "Sheet[description=" + description + ",plainList.size()="
					+ plainList.size() + ",instances.size()="
					+ instances.size() + ",busses.size()=" + busses.size()
					+ ",nets.size()=" + nets.size() + "]";
		}
	}

	public static class Package implements ParentInterface, HasAttrInterface {
		Description description;
		public List<PlainInterface> elements = new ArrayList<PlainInterface>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Description)
				description = (Description) child;
			else if (child instanceof PlainInterface)
				elements.add((PlainInterface) child);
		}

		public void draw(DrawManager m, MagickImage mi, ImageInfo ii)
				throws MagickException {
			for (int i = 0; i < elements.size(); i++)
				elements.get(i).draw(m, mi, ii, 0, 0, 0);
		}

		// attr
		public String name;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
		}

		@Override
		public String toString() {
			return "Package[description=" + description + ",elements.size()="
					+ elements.size() + ",name=" + name + "]";
		}
	}

	public static class Symbol extends Package {
		@Override
		public String toString() {
			return "Symbol[description=" + description + ",elements.size()="
					+ elements.size() + ",name=" + name + "]";
		}
	}

	public static class Deviceset implements ParentInterface, HasAttrInterface {
		Description description;
		List<Gate> gates = new ArrayList<Gate>();
		List<Device> devices = new ArrayList<Device>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Description)
				description = (Description) child;
			else if (child instanceof Gate)
				gates.add((Gate) child);
			else if (child instanceof Device)
				devices.add((Device) child);
		}

		// attr
		String name;
		String prefix = "";
		boolean uservalue = false;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("prefix".equals(qName))
				prefix = value;
			else if ("uservalue".equals(qName))
				uservalue = "yes".equals(value);
		}

		@Override
		public String toString() {
			return "Deviceset[description=" + description + ",gates.size()="
					+ gates.size() + ",devices.size()=" + devices.size()
					+ ",name=" + name + ",prefix=" + prefix + ",uservalue="
					+ uservalue + "]";
		}
	}

	public static class Device implements ParentInterface, HasAttrInterface {
		List<Connect> connects = new ArrayList<Connect>();
		List<Technology> technologies = new ArrayList<Technology>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Connect)
				connects.add((Connect) child);
			else if (child instanceof Technology)
				technologies.add((Technology) child);
		}

		// attr
		String name;
		String packageValue;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("package".equals(qName))
				packageValue = value;
		}

		@Override
		public String toString() {
			return "Device[connects.size()=" + connects.size()
					+ ",technologies.size()=" + technologies.size() + ",name="
					+ name + ",packageValue=" + packageValue + "]";
		}
	}

	public static class Bus implements ParentInterface, HasAttrInterface {
		List<Segment> segmentList = new ArrayList<Segment>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Segment)
				segmentList.add((Segment) child);
		}

		// attr
		String name;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
		}

		@Override
		public String toString() {
			return "Bus[segmentList.size()=" + segmentList.size() + ",name="
					+ name + "]";
		}
	}

	public static class Net extends Bus {
		// attr
		int classValue = 0;

		@Override
		public void setAttr(String qName, String value) {
			if ("class".equals(qName))
				classValue = Integer.parseInt(value);
		}

		@Override
		public String toString() {
			return "Net[segmentList.size()=" + segmentList.size() + ",name="
					+ name + "]";
		}
	}

	public static class Segment implements ParentInterface {
		List<Pinref> pinrefList = new ArrayList<Pinref>(); // only valid in a
															// net context
		List<Wire> wireList = new ArrayList<Wire>(); // only valid in a net
														// context
		List<Junction> junctionList = new ArrayList<Junction>();
		List<Label> labelList = new ArrayList<Label>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Pinref)
				pinrefList.add((Pinref) child);
			else if (child instanceof Wire)
				wireList.add((Wire) child);
			else if (child instanceof Junction)
				junctionList.add((Junction) child);
			else if (child instanceof Label)
				labelList.add((Label) child);
		}

		@Override
		public String toString() {
			return "Segment[pinrefList.size()=" + pinrefList.size()
					+ ",wireList.size()=" + wireList.size()
					+ ",junctionList.size()=" + junctionList.size()
					+ ",labelList.size()=" + labelList.size() + "]";
		}
	}

	public static class Signal implements ParentInterface, HasAttrInterface {
		List<Contactref> contactrefList = new ArrayList<Contactref>();
		List<Polygon> polygonList = new ArrayList<Polygon>();
		List<Wire> wireList = new ArrayList<Wire>();
		List<Via> viaList = new ArrayList<Via>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Contactref)
				contactrefList.add((Contactref) child);
			else if (child instanceof Polygon)
				polygonList.add((Polygon) child);
			else if (child instanceof Wire)
				wireList.add((Wire) child);
			else if (child instanceof Via)
				viaList.add((Via) child);
		}

		public void draw(DrawManager m, MagickImage mi, ImageInfo ii)
				throws MagickException {
			for (int i = 0; i < polygonList.size(); i++)
				polygonList.get(i).draw(m, mi, ii, 0, 0, 0);
			for (int i = 0; i < wireList.size(); i++)
				wireList.get(i).draw(m, mi, ii, 0, 0, 0);
			for (int i = 0; i < viaList.size(); i++)
				viaList.get(i).draw(m, mi, ii, 0, 0, 0);
		}

		// attr
		String name;
		int classValue = 0;
		boolean airwireshidden = false;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("class".equals(qName))
				classValue = Integer.parseInt(value);
			else if ("airwireshidden".equals(qName))
				airwireshidden = "yes".equals(value);
		}

		@Override
		public String toString() {
			return "Signal[contactrefList.size()=" + contactrefList.size()
					+ ",polygonList.size()=" + polygonList.size()
					+ ",wireList.size()=" + wireList.size()
					+ ",viaList.size()=" + viaList.size() + ",name=" + name
					+ ",classValue=" + classValue + ",airwireshidden="
					+ airwireshidden + "]";
		}
	}

	// ----------------------------------------
	// Basic objects
	// ----------------------------------------

	public static class Variantdef implements HasAttrInterface {
		// attr
		String name;
		boolean current = false;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("current".equals(qName))
				current = "yes".equals(value);
		}

		@Override
		public String toString() {
			return "Variantdef[name=" + name + ",current=" + current + "]";
		}
	}

	public static class Variant implements HasAttrInterface {
		// attr
		String name;
		boolean populate = true;
		String value;
		String technology; // Only in part context

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("populate".equals(qName))
				populate = !"no".equals(value);
			else if ("value".equals(qName))
				this.value = value;
			else if ("technology".equals(qName))
				technology = value;
		}

		@Override
		public String toString() {
			return "Variant[name=" + name + ",populate=" + populate + ",value="
					+ value + ",technology=" + technology + "]";
		}
	}

	public static class Gate implements HasAttrInterface,
			HasXYPositionInterface {
		// attr
		String name;
		String symbol;
		double x;
		double y;
		GateAddLevel addlevel = GateAddLevel.next;
		int swaplevel = 0;

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("symbol".equals(qName))
				symbol = value;
			else if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("addlevel".equals(qName))
				addlevel = getGateAddLevel(value);
			else if ("swaplevel".equals(qName))
				swaplevel = Integer.parseInt(value);
		}

		@Override
		public String toString() {
			return "Gate[name=" + name + ",symbol=" + symbol + ",x=" + x
					+ ",y=" + y + ",addlevel=" + addlevel + ",swaplevel="
					+ swaplevel + "]";
		}
	}

	public static class Wire implements PlainInterface, HasAttrInterface,
			HasXYPositionInterface {
		// attr
		double x1;
		double y1;
		double x2;
		double y2;
		double width;
		int layer;
		String extent; // Only applicable for airwires
		WireStyle style = WireStyle.continuous;
		double curve = 0;
		WireCap cap = WireCap.round; // Only applicable if 'curve' is not zero

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			DrawInfo di = new DrawInfo(ii);
			di.setStroke(Color.get(layer).pixelPacket);
			di.setStrokeWidth(m.scale(width));
			double[] _xy1 = DrawManager.convert(new double[] { x1, y1 },
					offsetX, offsetY, rad);
			double[] _xy2 = DrawManager.convert(new double[] { x2, y2 },
					offsetX, offsetY, rad);
			di.setPrimitive("stroke-linecap round line " + m.x(_xy1[0]) + ","
					+ m.y(_xy1[1]) + ", " + m.x(_xy2[0]) + "," + m.y(_xy2[1]));
			mi.drawImage(di);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x1, y1 }, { x2, y2 } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x1".equals(qName))
				x1 = Double.parseDouble(value);
			else if ("y1".equals(qName))
				y1 = Double.parseDouble(value);
			else if ("x2".equals(qName))
				x2 = Double.parseDouble(value);
			else if ("y2".equals(qName))
				y2 = Double.parseDouble(value);
			else if ("width".equals(qName))
				width = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("extent".equals(qName))
				extent = value;
			else if ("style".equals(qName))
				style = getWireStyle(value);
			else if ("curve".equals(qName))
				curve = Double.parseDouble(value);
			else if ("cap".equals(qName))
				cap = getWireCap(value);
		}

		@Override
		public String toString() {
			return "Gate[x1=" + x1 + ",y1=" + y1 + ",x2=" + x2 + ",y2=" + y2
					+ ",width=" + width + ",layer=" + layer + ",extent="
					+ extent + ",style=" + style + ",curve=" + curve + ",cap="
					+ cap + "]";
		}

	}

	public static class Dimension implements HasAttrInterface,
			HasXYPositionInterface {
		// attr
		double x1;
		double y1;
		double x2;
		double y2;
		double x3;
		double y3;
		int layer;
		DimensionType dtype = DimensionType.parallel;

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x1, y1 }, { x2, y2 }, { x3, y3 } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x1".equals(qName))
				x1 = Double.parseDouble(value);
			else if ("y1".equals(qName))
				y1 = Double.parseDouble(value);
			else if ("x2".equals(qName))
				x2 = Double.parseDouble(value);
			else if ("y2".equals(qName))
				y2 = Double.parseDouble(value);
			else if ("x3".equals(qName))
				x3 = Double.parseDouble(value);
			else if ("y3".equals(qName))
				y3 = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("dtype".equals(qName))
				dtype = getDimensionType(value);
		}

		@Override
		public String toString() {
			return "Gate[x1=" + x1 + ",y1=" + y1 + ",x2=" + x2 + ",y2=" + y2
					+ ",x3=" + x3 + ",y3=" + y3 + ",layer=" + layer + ",dtype="
					+ dtype + "]";
		}
	}

	public static class Text implements PlainInterface, HasTextInterface,
			HasAttrInterface, HasXYPositionInterface {
		String text;

		@Override
		public String getText() {
			return text;
		}

		@Override
		public void setText(String text) {
			this.text = text;
		}

		// attr
		double x;
		double y;
		double size;
		int layer;
		TextFont font = TextFont.proportional;
		int ratio = 8;
		Rotation rot = new Rotation("R0");
		Align align = Align.bottom_left;
		int distance = 50;

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			if (text == null || text.startsWith(">"))
				return;
			DrawInfo di = new DrawInfo(ii);
			Color color = Color.get(layer);
			di.setFill(color.pixelPacket);
			di.setPointsize(size * 100);
			double[] _xy = DrawManager.convert(new double[] { x, y }, offsetX,
					offsetY, rad);
			double deg = rot.getDeg();
			if("HARPY ADK Board".equals(text)) {
				boolean reversed = rot.isReversed();
				System.out.println("reversed="+reversed);
			}
			//di.setPrimitive(((deg != 0) ? ("rotate " + deg) : "") + " text " + m.x(_xy[0]) + "," + m.y(_xy[1]) + " '" + text + "'");
			di.setPrimitive("translate " + m.x(_xy[0]) + "," + m.y(_xy[1]) + " rotate " + deg + " text 0,0 '" + text + "'");
			if(rot.isReversed())
				di.set
			mi.drawImage(di);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("size".equals(qName))
				size = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("font".equals(qName))
				font = getTextFont(value);
			else if ("ratio".equals(qName))
				ratio = Integer.parseInt(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
			else if ("align".equals(qName))
				align = getAlign(value);
			else if ("distance".equals(qName))
				distance = Integer.parseInt(value);
		}

		@Override
		public String toString() {
			return "Text[text=" + text + ",x=" + x + ",y=" + y + ",size="
					+ size + ",layer=" + layer + ",font=" + font + ",ratio="
					+ ratio + ",rot=" + rot + ",align=" + align + ",distance="
					+ distance + "]";
		}
	}

	public static class Circle implements PlainInterface, HasAttrInterface,
			HasXYPositionInterface {
		// attr
		double x;
		double y;
		double radius;
		double width;
		int layer;

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			DrawInfo di = new DrawInfo(ii);
			di.setStroke(Color.get(layer).pixelPacket);
			di.setStrokeWidth(m.scale(width));
			double[] _xy = DrawManager.convert(new double[] { x, y }, offsetX,
					offsetY, rad);
			double[] _xr = DrawManager.convert(new double[] { x, y - radius },
					offsetX, offsetY, rad);
			di.setPrimitive("fill #000000 fill-opacity 0 circle " + m.x(_xy[0])
					+ "," + m.y(_xy[1]) + ", " + m.x(_xr[0]) + ","
					+ m.y(_xr[1]));
			mi.drawImage(di);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("radius".equals(qName))
				radius = Double.parseDouble(value);
			else if ("width".equals(qName))
				width = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
		}

		@Override
		public String toString() {
			return "Circle[x=" + x + ",y=" + y + ",radius=" + radius
					+ ",width=" + width + ",layer=" + layer + "]";
		}
	}

	public static class Rectangle implements PlainInterface, HasAttrInterface,
			HasXYPositionInterface {
		// attr
		double x1;
		double y1;
		double x2;
		double y2;
		int layer;
		Rotation rot = new Rotation("R0");

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			DrawInfo di = new DrawInfo(ii);
			di.setStroke(Color.get(layer).pixelPacket);
			double dx = x2 - x1;
			double dy = y2 - y1;
			double x = (x1 + x2) / 2;
			double y = (y1 + y2) / 2;
			double[] _xy1 = DrawManager.convert(
					new double[] { -dx / 2, -dy / 2 }, x, y, rot.getRad());
			_xy1 = DrawManager.convert(_xy1, offsetX, offsetY, rad);
			double[] _xy2 = DrawManager.convert(
					new double[] { +dx / 2, -dy / 2 }, x, y, rot.getRad());
			_xy2 = DrawManager.convert(_xy2, offsetX, offsetY, rad);
			double[] _xy3 = DrawManager.convert(
					new double[] { +dx / 2, +dy / 2 }, x, y, rot.getRad());
			_xy3 = DrawManager.convert(_xy3, offsetX, offsetY, rad);
			double[] _xy4 = DrawManager.convert(
					new double[] { -dx / 2, +dy / 2 }, x, y, rot.getRad());
			_xy4 = DrawManager.convert(_xy4, offsetX, offsetY, rad);
			di.setPrimitive("fill " + Color.get(layer).rgb + " polygon "
					+ m.x(_xy1[0]) + "," + m.y(_xy1[1]) + ", " + m.x(_xy2[0])
					+ "," + m.y(_xy2[1]) + ", " + m.x(_xy3[0]) + ","
					+ m.y(_xy3[1]) + ", " + m.x(_xy4[0]) + "," + m.y(_xy4[1]));
			mi.drawImage(di);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x1, y1 }, { x2, y2 } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x1".equals(qName))
				x1 = Double.parseDouble(value);
			else if ("y1".equals(qName))
				y1 = Double.parseDouble(value);
			else if ("x2".equals(qName))
				x2 = Double.parseDouble(value);
			else if ("y2".equals(qName))
				y2 = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
		}

		@Override
		public String toString() {
			return "Rectangle[x1=" + x1 + ",y1=" + y1 + ",x2=" + x2 + ",y2="
					+ y2 + ",layer=" + layer + ",rot=" + rot + "]";
		}
	}

	public static class Frame implements PlainInterface, HasAttrInterface,
			HasXYPositionInterface {
		// attr
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
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			// TODO Auto-generated method stub
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x1, y1 }, { x2, y2 } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x1".equals(qName))
				x1 = Double.parseDouble(value);
			else if ("y1".equals(qName))
				y1 = Double.parseDouble(value);
			else if ("x2".equals(qName))
				x2 = Double.parseDouble(value);
			else if ("y2".equals(qName))
				y2 = Double.parseDouble(value);
			else if ("columns".equals(qName))
				columns = Integer.parseInt(value);
			else if ("rows".equals(qName))
				rows = Integer.parseInt(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("border-left".equals(qName))
				border_left = !"no".equals(value);
			else if ("border-top".equals(qName))
				border_top = !"no".equals(value);
			else if ("border-right".equals(qName))
				border_right = !"no".equals(value);
			else if ("border-bottom".equals(qName))
				border_bottom = !"no".equals(value);
		}

		@Override
		public String toString() {
			return "Frame[x1=" + x1 + ",y1=" + y1 + ",x2=" + x2 + ",y2=" + y2
					+ ",columns=" + columns + ",rows=" + rows + ",layer="
					+ layer + ",border_left=" + border_left + ",border_top="
					+ border_top + ",border_right=" + border_right
					+ ",border_bottom=" + border_bottom + "]";
		}
	}

	public static class Hole implements PlainInterface, HasAttrInterface,
			HasXYPositionInterface {
		// attr
		double x;
		double y;
		double drill;

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			drawCircle(m, mi, ii, offsetX, offsetY, rad,
					Color.get(LayerName.Holes), x, y, drill / 2);
			drawCircle(m, mi, ii, offsetX, offsetY, rad, Color.GRAY, x, y,
					drill / 3);
			drawCircle(m, mi, ii, offsetX, offsetY, rad, Color.GRAY, x, y,
					drill / 6);
		}

		private static void drawCircle(DrawManager m, MagickImage mi,
				ImageInfo ii, double offsetX, double offsetY, double rad,
				Color color, double x, double y, double radius)
				throws MagickException {
			DrawInfo di = new DrawInfo(ii);
			di.setStroke(color.pixelPacket);
			di.setStrokeWidth(m.scale(0.1));
			double[] _xy = DrawManager.convert(new double[] { x, y }, offsetX,
					offsetY, rad);
			double[] _xr = DrawManager.convert(new double[] { x, y - radius },
					offsetX, offsetY, rad);
			di.setPrimitive("fill #000000 fill-opacity 0 circle " + m.x(_xy[0])
					+ "," + m.y(_xy[1]) + ", " + m.x(_xr[0]) + ","
					+ m.y(_xr[1]));
			mi.drawImage(di);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("drill".equals(qName))
				drill = Double.parseDouble(value);
		}

		@Override
		public String toString() {
			return "Hole[x=" + x + ",y=" + y + ",drill=" + drill + "]";
		}
	}

	public static class Pad implements PlainInterface, HasAttrInterface,
			HasXYPositionInterface {
		// attr
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
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			DrawInfo di = new DrawInfo(ii);
			di.setStroke(Color.get(LayerName.Pads).pixelPacket);
			if (diameter == 0)
				diameter = drill * (1 + m.dru.rvPadTop.getDouble() * 2);
			double width = (diameter - drill) / 2;
			di.setStrokeWidth(m.scale(width));
			double[] _xy = DrawManager.convert(new double[] { 0, 0 }, x, y,
					rot.getRad());
			_xy = DrawManager.convert(_xy, offsetX, offsetY, rad);
			double[] _xr = DrawManager.convert(new double[] { 0,
					0 - diameter / 2 + width / 2 }, x, y, rot.getRad());
			_xr = DrawManager.convert(_xr, offsetX, offsetY, rad);
			di.setPrimitive("fill #000000 fill-opacity 0 circle " + m.x(_xy[0])
					+ "," + m.y(_xy[1]) + ", " + m.x(_xr[0]) + ","
					+ m.y(_xr[1]));
			mi.drawImage(di);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("drill".equals(qName))
				drill = Double.parseDouble(value);
			else if ("diameter".equals(qName))
				diameter = Double.parseDouble(value);
			else if ("shape".equals(qName))
				shape = getPadShape(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
			else if ("stop".equals(qName))
				stop = !"no".equals(value);
			else if ("thermals".equals(qName))
				thermals = !"no".equals(value);
			else if ("first".equals(qName))
				first = "yes".equals(value);
		}

		@Override
		public String toString() {
			return "Pad[name=" + name + ",x=" + x + ",y=" + y + ",drill="
					+ drill + ",diameter=" + diameter + ",shape=" + shape
					+ ",rot=" + rot + ",stop=" + stop + ",thermals=" + thermals
					+ ",first=" + first + "]";
		}
	}

	public static class Smd implements PlainInterface, HasAttrInterface,
			HasXYPositionInterface {
		// attr
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
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			DrawInfo di = new DrawInfo(ii);
			di.setStroke(Color.get(layer).pixelPacket);
			double[] _xy1 = DrawManager.convert(
					new double[] { -dx / 2, -dy / 2 }, x, y, rot.getRad());
			_xy1 = DrawManager.convert(_xy1, offsetX, offsetY, rad);
			double[] _xy2 = DrawManager.convert(
					new double[] { +dx / 2, -dy / 2 }, x, y, rot.getRad());
			_xy2 = DrawManager.convert(_xy2, offsetX, offsetY, rad);
			double[] _xy3 = DrawManager.convert(
					new double[] { +dx / 2, +dy / 2 }, x, y, rot.getRad());
			_xy3 = DrawManager.convert(_xy3, offsetX, offsetY, rad);
			double[] _xy4 = DrawManager.convert(
					new double[] { -dx / 2, +dy / 2 }, x, y, rot.getRad());
			_xy4 = DrawManager.convert(_xy4, offsetX, offsetY, rad);
			di.setPrimitive("fill " + Color.get(layer).rgb + " polygon "
					+ m.x(_xy1[0]) + "," + m.y(_xy1[1]) + ", " + m.x(_xy2[0])
					+ "," + m.y(_xy2[1]) + ", " + m.x(_xy3[0]) + ","
					+ m.y(_xy3[1]) + ", " + m.x(_xy4[0]) + "," + m.y(_xy4[1]));
			mi.drawImage(di);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("dx".equals(qName))
				dx = Double.parseDouble(value);
			else if ("dy".equals(qName))
				dy = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("roundness".equals(qName))
				roundness = Integer.parseInt(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
			else if ("stop".equals(qName))
				stop = !"no".equals(value);
			else if ("thermals".equals(qName))
				thermals = !"no".equals(value);
			else if ("cream".equals(qName))
				cream = !"no".equals(value);
		}

		@Override
		public String toString() {
			return "Smd[name=" + name + ",x=" + x + ",y=" + y + ",dx=" + dx
					+ ",dy=" + dy + ",layer=" + layer + ",roundness="
					+ roundness + ",rot=" + rot + ",stop=" + stop
					+ ",thermals=" + thermals + ",cream=" + cream + "]";
		}
	}

	public static class Element implements ParentInterface, HasAttrInterface,
			HasXYPositionInterface {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		List<Variant> variantList = new ArrayList<Variant>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Attribute)
				attributeList.add((Attribute) child);
			else if (child instanceof Variant)
				variantList.add((Variant) child);
		}

		// attr
		String name;
		public String library;
		public String packageValue;
		String value;
		public double x;
		public double y;
		boolean locked = false;
		boolean smashed = false;
		public Rotation rot = new Rotation("R0");

		public void draw(DrawManager m, MagickImage mi, ImageInfo ii)
				throws MagickException {
			Package pack = m.getPackage(library, packageValue);
			if (pack == null)
				return;
			double rad = rot.getRad();
			for (int i = 0; i < pack.elements.size(); i++)
				pack.elements.get(i).draw(m, mi, ii, x, y, rad);
			for (int i = 0; i < attributeList.size(); i++)
				attributeList.get(i).draw(m, mi, ii, 0, 0, 0, this);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("library".equals(qName))
				library = value;
			else if ("package".equals(qName))
				packageValue = value;
			else if ("value".equals(qName))
				this.value = value;
			else if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("locked".equals(qName))
				locked = "yes".equals(value);
			else if ("smashed".equals(qName))
				smashed = "yes".equals(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
		}

		@Override
		public String toString() {
			return "Element[attributeList.size()=" + attributeList.size()
					+ ",variantList.size()=" + variantList.size() + ",library="
					+ library + ",packageValue=" + packageValue + ",value="
					+ value + ",x=" + x + ",y=" + y + ",locked=" + locked
					+ ",smashed=" + smashed + ",rot=" + rot + "]";
		}
	}

	public static class Via implements HasAttrInterface, HasXYPositionInterface {
		// attr
		double x;
		double y;
		String extent;
		double drill;
		double diameter = 0;
		ViaShape shape = ViaShape.round;
		boolean alwaysstop = false;

		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			DrawInfo di = new DrawInfo(ii);
			di.setStroke(Color.get(LayerName.Vias).pixelPacket);
			if (diameter == 0)
				diameter = drill * (1 + m.dru.rvViaOuter.getDouble() * 2);
			double width = (diameter - drill) / 2;
			di.setStrokeWidth(m.scale(width));
			double[] _xy = DrawManager.convert(new double[] { 0, 0 }, x, y, 0);
			_xy = DrawManager.convert(_xy, offsetX, offsetY, rad);
			double[] _xr = DrawManager.convert(new double[] { 0,
					0 - diameter / 2 + width / 2 }, x, y, 0);
			_xr = DrawManager.convert(_xr, offsetX, offsetY, rad);
			di.setPrimitive("fill #000000 fill-opacity 0 circle " + m.x(_xy[0])
					+ "," + m.y(_xy[1]) + ", " + m.x(_xr[0]) + ","
					+ m.y(_xr[1]));
			mi.drawImage(di);
		}

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("extent".equals(qName))
				extent = value;
			else if ("drill".equals(qName))
				drill = Double.parseDouble(value);
			else if ("diameter".equals(qName))
				diameter = Double.parseDouble(value);
			else if ("shape".equals(qName))
				shape = getViaShape(value);
			else if ("alwaysstop".equals(qName))
				alwaysstop = "yes".equals(value);
		}

		@Override
		public String toString() {
			return "Via[x=" + x + ",y=" + y + ",extent=" + extent + ",drill="
					+ drill + ",diameter=" + diameter + ",shape=" + shape
					+ ",alwaysstop=" + alwaysstop + "]";
		}
	}

	public static interface PlainInterface {
		void draw(DrawManager m, MagickImage mi, ImageInfo ii, double x,
				double y, double rad) throws MagickException;
	}

	public static class Polygon implements PlainInterface, ParentInterface,
			HasAttrInterface {
		List<Vertex> vertexList = new ArrayList<Vertex>(); // the vertexes must
															// define a valid
															// polygon; if the
															// last vertex is
															// the same as the
															// first one, it is
															// ignored

		@Override
		public void addChild(Object child) {
			if (child instanceof Vertex)
				vertexList.add((Vertex) child);
		}

		// attr
		double width;
		int layer;
		double spacing;
		PolygonPour pour = PolygonPour.solid;
		double isolate; // Only in <signal> or <package> context
		boolean orphans = false; // Only in <signal> context
		boolean thermals = true; // Only in <signal> context
		int rank = 0; // 1..6 in <signal> context,0 or 7 in <package> context

		@Override
		public void draw(DrawManager m, MagickImage mi, ImageInfo ii,
				double offsetX, double offsetY, double rad)
				throws MagickException {
			if (vertexList.size() < 1)
				return;
			Vertex v0 = vertexList.get(0);
			Vertex v1 = vertexList.get(0);
			Vertex v2 = null;
			for (int i = 1; i < vertexList.size(); i++) {
				v2 = vertexList.get(i);
				DrawInfo di = new DrawInfo(ii);
				di.setStroke(Color.get(layer).pixelPacket);
				di.setStrokeWidth(m.scale(width));
				di.setPrimitive("line " + m.x(v1.x) + "," + m.y(v1.y) + ", "
						+ m.x(v2.x) + "," + m.y(v2.y));
				mi.drawImage(di);
				v1 = v2;
			}
			if (v2 != null && (v2.x != v0.x) || (v2.y != v0.y)) {
				DrawInfo di = new DrawInfo(ii);
				di.setStroke(Color.get(layer).pixelPacket);
				di.setStrokeWidth(m.scale(width));
				di.setPrimitive("line " + m.x(v2.x) + "," + m.y(v2.y) + ", "
						+ m.x(v0.x) + "," + m.y(v0.y));
				mi.drawImage(di);
			}
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("width".equals(qName))
				width = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("spacing".equals(qName))
				spacing = Double.parseDouble(value);
			else if ("pour".equals(qName))
				pour = getPolygonPour(value);
			else if ("isolate".equals(qName))
				isolate = Double.parseDouble(value);
			else if ("orphans".equals(qName))
				orphans = "yes".equals(value);
			else if ("thermals".equals(qName))
				thermals = !"no".equals(value);
			else if ("rank".equals(qName))
				rank = Integer.parseInt(value);
		}

		@Override
		public String toString() {
			return "Polygon[vertexList.size()=" + vertexList.size() + ",width="
					+ width + ",layer=" + layer + ",spacing=" + spacing
					+ ",pour=" + pour + ",isolate=" + isolate + ",orphans="
					+ orphans + ",thermals=" + thermals + ",rank=" + rank + "]";
		}
	}

	public static class Vertex implements HasAttrInterface,
			HasXYPositionInterface {
		// attr
		double x;
		double y;
		double curve = 0; // The curvature from this vertext to the next one

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("curve".equals(qName))
				curve = Double.parseDouble(value);
		}

		@Override
		public String toString() {
			return "Vertex[x=" + x + ",y=" + y + ",curve=" + curve + "]";
		}
	}

	public static class Pin implements HasAttrInterface, HasXYPositionInterface {
		// attr
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
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("visible".equals(qName))
				visible = getPinVisible(value);
			else if ("length".equals(qName))
				length = getPinLength(value);
			else if ("direction".equals(qName))
				direction = getPinDirection(value);
			else if ("function".equals(qName))
				function = getPinFunction(value);
			else if ("swaplevel".equals(qName))
				swaplevel = Integer.parseInt(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
		}

		@Override
		public String toString() {
			return "Pin[name=" + name + ",x=" + x + ",y=" + y + ",visible="
					+ visible + ",length=" + length + ",direction=" + direction
					+ ",function=" + function + ",swaplevel=" + swaplevel
					+ ",rot=" + rot + "]";
		}
	}

	public static class Part implements ParentInterface, HasAttrInterface {
		List<Attribute> attributeList = new ArrayList<Attribute>();
		List<Variant> variantList = new ArrayList<Variant>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Attribute)
				attributeList.add((Attribute) child);
			else if (child instanceof Variant)
				variantList.add((Variant) child);
		}

		// attr
		String name;
		String library;
		String deviceset;
		String device;
		String technology = "";
		String value;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("library".equals(qName))
				library = value;
			else if ("deviceset".equals(qName))
				deviceset = value;
			else if ("device".equals(qName))
				device = value;
			else if ("technology".equals(qName))
				technology = value;
			else if ("value".equals(qName))
				this.value = value;
		}

		@Override
		public String toString() {
			return "Part[attributeList.size()=" + attributeList.size()
					+ ",variantList.size()=" + variantList.size() + ",name="
					+ name + ",library=" + library + ",deviceset=" + deviceset
					+ ",technology=" + technology + ",value=" + value + "]";
		}
	}

	public static class Instance implements ParentInterface, HasAttrInterface,
			HasXYPositionInterface {
		List<Attribute> attributeList = new ArrayList<Attribute>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Attribute)
				attributeList.add((Attribute) child);
		}

		// attr
		String part;
		String gate;
		double x;
		double y;
		boolean smashed = false;
		Rotation rot = new Rotation("R0"); // Only 0,90,180 or 270

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("part".equals(qName))
				part = value;
			else if ("gate".equals(qName))
				gate = value;
			else if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("smashed".equals(qName))
				smashed = "yes".equals(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
		}

		@Override
		public String toString() {
			return "Instance[attributeList.size()=" + attributeList.size()
					+ ",part=" + part + ",gate=" + gate + ",x=" + x + ",y=" + y
					+ ",smashed=" + smashed + ",rot=" + rot + "]";
		}
	}

	public static class Label implements HasAttrInterface,
			HasXYPositionInterface {
		// attr
		double x;
		double y;
		double size;
		int layer;
		TextFont font = TextFont.proportional;
		int ratio = 8;
		Rotation rot = new Rotation("R0"); // Onlhy 0,90,180 or 270
		boolean xref = false; // only in <net> context

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("size".equals(qName))
				size = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("font".equals(qName))
				font = getTextFont(value);
			else if ("ratio".equals(qName))
				ratio = Integer.parseInt(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
			else if ("xref".equals(qName))
				xref = "yes".equals(value);
		}

		@Override
		public String toString() {
			return "Label[x=" + x + ",y=" + y + ",size=" + size + ",layer="
					+ layer + ",font=" + font + ",ratio=" + ratio + ",rot="
					+ rot + ",xref=" + xref + "]";
		}
	}

	public static class Junction implements HasAttrInterface,
			HasXYPositionInterface {
		// attr
		double x;
		double y;

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
		}

		@Override
		public String toString() {
			return "Junction[x=" + x + ",y=" + y + "]";
		}
	}

	public static class Connect implements HasAttrInterface {
		// attr
		String gate;
		String pin;
		String pad;
		ContactRoute route = ContactRoute.all;

		@Override
		public void setAttr(String qName, String value) {
			if ("gate".equals(qName))
				gate = value;
			else if ("pin".equals(qName))
				pin = value;
			else if ("pad".equals(qName))
				pad = value;
			else if ("route".equals(qName))
				route = getContactRoute(value);
		}

		@Override
		public String toString() {
			return "Connect[gate=" + gate + ",pin=" + pin + ",pad=" + pad
					+ ",route=" + route + "]";
		}
	}

	public static class Technology implements ParentInterface, HasAttrInterface {
		List<Attribute> attributeList = new ArrayList<Attribute>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Attribute)
				attributeList.add((Attribute) child);
		}

		// attr
		String name;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
		}

		@Override
		public String toString() {
			return "Technology[attributeList.size()=" + attributeList.size()
					+ ",name=" + name + "]";
		}
	}

	public static class Attribute implements HasAttrInterface,
			HasXYPositionInterface {
		// attr
		String name;
		String value;
		double x;
		double y;
		double size;
		int layer;
		TextFont font;
		int ratio;
		Rotation rot = new Rotation("R0");
		AttributeDisplay display = AttributeDisplay.value; // Only in <element>
															// or <instance>
															// context
		boolean constant = false; // Only in <device> context

		@Override
		public double[][] getXYPositions() {
			return new double[][] { { x, y } };
		}

		public void draw(DrawManager m, MagickImage mi, ImageInfo ii, double offsetX, double offsetY, double rad, Element element) throws MagickException {
			if(display==AttributeDisplay.off)return;
			String text = null;
			if("NAME".equals(name))
				text = element.name;
			else if("VALUE".equals(name))
				text = element.value;
			if(text!=null && text.length()>0) {
				DrawInfo di = new DrawInfo(ii);
				Color color = Color.get(layer);
				di.setFill(color.pixelPacket);
				di.setPointsize(size * 100);
				double[] _xy = DrawManager.convert(new double[] { x, y }, offsetX, offsetY, rad);
				double deg = rot.getDeg();
				di.setPrimitive("translate " + m.x(_xy[0]) + "," + m.y(_xy[1]) + " rotate " + deg + " text 0,0 '" + element.name + "'");
				mi.drawImage(di);
			}
		}

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("value".equals(qName))
				this.value = value;
			else if ("x".equals(qName))
				x = Double.parseDouble(value);
			else if ("y".equals(qName))
				y = Double.parseDouble(value);
			else if ("size".equals(qName))
				size = Double.parseDouble(value);
			else if ("layer".equals(qName))
				layer = Integer.parseInt(value);
			else if ("font".equals(qName))
				font = getTextFont(value);
			else if ("ratio".equals(qName))
				ratio = Integer.parseInt(value);
			else if ("rot".equals(qName))
				rot = new Rotation(value);
			else if ("display".equals(qName))
				display = getAttributeDisplay(value);
			else if ("constant".equals(qName))
				constant = "yes".equals(value);
		}

		@Override
		public String toString() {
			return "Attribute[name=" + name + ",value=" + value + ",x=" + x
					+ ",y=" + y + ",size=" + size + ",layer=" + layer
					+ ",font=" + font + ",ratio=" + ratio + ",rot=" + rot
					+ ",display=" + display + ",constant=" + constant + "]";
		}
	}

	public static class Pinref implements HasAttrInterface {
		// attr
		String part;
		String gate;
		String pin;

		@Override
		public void setAttr(String qName, String value) {
			if ("part".equals(qName))
				part = value;
			else if ("gate".equals(qName))
				gate = value;
			else if ("pin".equals(qName))
				pin = value;
		}

		@Override
		public String toString() {
			return "Pinref[part=" + part + ",gate=" + gate + ",pin=" + pin
					+ "]";
		}
	}

	public static class Contactref implements HasAttrInterface {
		// attr
		String element;
		String pad;
		ContactRoute route = ContactRoute.all;
		String routetag = "";

		@Override
		public void setAttr(String qName, String value) {
			if ("element".equals(qName))
				element = value;
			else if ("pad".equals(qName))
				pad = value;
			else if ("route".equals(qName))
				route = getContactRoute(value);
			else if ("routetag".equals(qName))
				routetag = value;
		}

		@Override
		public String toString() {
			return "Contactref[element=" + element + ",pad=" + pad + ",route="
					+ route + ",routetag=" + routetag + "]";
		}
	}

	// ----------------------------------------
	// Miscellaneous objects
	// ----------------------------------------

	public static class Setting implements HasAttrInterface {
		// attr
		boolean alwaysvectorfont;
		VerticalText verticaltext = VerticalText.up;

		@Override
		public void setAttr(String qName, String value) {
			if ("alwaysvectorfont".equals(qName))
				alwaysvectorfont = "yes".equals(value);
			else if ("verticaltext".equals(qName))
				verticaltext = getVerticalText(value);
		}

		@Override
		public String toString() {
			return "Setting[alwaysvectorfont=" + alwaysvectorfont
					+ ",verticaltext=" + verticaltext + "]";
		}
	}

	public static class Designrules implements ParentInterface,
			HasAttrInterface {

		public EagleDru dru = new EagleDru();
		List<Description> descriptionList = new ArrayList<Description>();
		List<Param> paramList = new ArrayList<Param>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Description)
				descriptionList.add((Description) child);
			else if (child instanceof Param)
				paramList.add((Param) child);
		}

		public void parse() throws DruParserException {
			dru.parse(descriptionList, paramList);
		}

		// attr
		String name;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
		}

		@Override
		public String toString() {
			return "Designrules[descriptionList.size()="
					+ descriptionList.size() + ",paramList.size()="
					+ paramList.size() + ",name=" + name + "]";
		}
	}

	public static class Grid implements HasAttrInterface {
		// attr
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
			if ("distance".equals(qName))
				distance = Double.parseDouble(value);
			else if ("unitdist".equals(qName))
				unitdist = getGridUnit(value);
			else if ("unit".equals(qName))
				unit = getGridUnit(value);
			else if ("style".equals(qName))
				style = getGridStyle(value);
			else if ("multiple".equals(qName))
				multiple = Integer.parseInt(value);
			else if ("display".equals(qName))
				display = "yes".equals(value);
			else if ("altdistance".equals(qName))
				altdistance = Double.parseDouble(value);
			else if ("altunitdist".equals(qName))
				altunitdist = getGridUnit(value);
			else if ("altunit".equals(qName))
				altunit = getGridUnit(value);
		}

		@Override
		public String toString() {
			return "Grid[distance=" + distance + ",unitdist=" + unitdist
					+ ",unit=" + unit + ",style=" + style + ",multiple="
					+ multiple + ",display=" + display + ",altdistance="
					+ altdistance + ",altunitdist=" + altunitdist + ",altunit="
					+ altunit + "]";
		}
	}

	public static class Layer implements HasAttrInterface {
		// attr
		int number;
		String name;
		int color;
		int fill;
		boolean visible = true;
		boolean active = true;

		@Override
		public void setAttr(String qName, String value) {
			if ("number".equals(qName))
				number = Integer.parseInt(value);
			else if ("name".equals(qName))
				name = value;
			else if ("color".equals(qName))
				color = Integer.parseInt(value);
			else if ("fill".equals(qName))
				fill = Integer.parseInt(value);
			else if ("visible".equals(qName))
				visible = !"no".equals(value);
			else if ("active".equals(qName))
				active = !"no".equals(value);
		}

		@Override
		public String toString() {
			return "Layer[number=" + number + ",name=" + name + ",color="
					+ color + ",fill=" + fill + ",visible=" + visible
					+ ",active=" + active + "]";
		}
	}

	public static class Class implements ParentInterface, HasAttrInterface {
		List<Clearance> clearanceList = new ArrayList<Clearance>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Clearance)
				clearanceList.add((Clearance) child);
		}

		// attr
		int number;
		String name;
		double width = 0;
		double drill = 0;

		@Override
		public void setAttr(String qName, String value) {
			if ("number".equals(qName))
				number = Integer.parseInt(value);
			else if ("name".equals(qName))
				name = value;
			else if ("width".equals(qName))
				width = Double.parseDouble(value);
			else if ("drill".equals(qName))
				drill = Double.parseDouble(value);
		}

		@Override
		public String toString() {
			return "Class[clearanceList.size()=" + clearanceList.size()
					+ ",number=" + number + ",name=" + name + ",width=" + width
					+ ",drill=" + drill + "]";
		}
	}

	public static class Clearance implements HasAttrInterface {
		// attr
		int classValue;
		double value = 0;

		@Override
		public void setAttr(String qName, String value) {
			if ("class".equals(qName))
				classValue = Integer.parseInt(value);
			else if ("value".equals(qName))
				this.value = Double.parseDouble(value);
		}

		@Override
		public String toString() {
			return "Clearance[classValue=" + classValue + ",value=" + value
					+ "]";
		}
	}

	public static class Description implements HasTextInterface,
			HasAttrInterface {
		String text;

		@Override
		public String getText() {
			return text;
		}

		@Override
		public void setText(String text) {
			this.text = text;
		}

		// attr
		public Language language = new Language("en");

		@Override
		public void setAttr(String qName, String value) {
			if ("language".equals(qName))
				language = new Language(value);
		}

		@Override
		public String toString() {
			return "Description[text=" + text + ",language=" + language + "]";
		}
	}

	public static class Param implements HasAttrInterface {
		// attr
		public String name;
		public String value;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("value".equals(qName))
				this.value = value;
		}

		@Override
		public String toString() {
			return "Param[name=" + name + ",value=" + value + "]";
		}
	}

	public static class Pass implements ParentInterface, HasAttrInterface {
		List<Param> paramList = new ArrayList<Param>();

		@Override
		public void addChild(Object child) {
			if (child instanceof Param)
				paramList.add((Param) child);
		}

		// attr
		String name;
		String refer;
		boolean active = true;

		@Override
		public void setAttr(String qName, String value) {
			if ("name".equals(qName))
				name = value;
			else if ("refer".equals(qName))
				refer = value;
			else if ("active".equals(qName))
				active = !"no".equals(value);
		}

		@Override
		public String toString() {
			return "Pass[paramList.size()=" + paramList.size() + ",name="
					+ name + ",refer=" + refer + ",active=" + active + "]";
		}
	}

	public static class Approved implements HasAttrInterface {
		// attr
		String hash;

		@Override
		public void setAttr(String qName, String value) {
			if ("hash".equals(qName))
				hash = value;
		}

		@Override
		public String toString() {
			return "Approved[hash=" + hash + "]";
		}
	}

	// ----------------------------------------
	// Others
	// ----------------------------------------

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

		static double deg2rad = Math.PI / 180;

		public boolean isReversed() {
			return (value.startsWith("SML")||value.startsWith("SMR"));
		}
		
		public double getRad() {
			return getDeg() * deg2rad;
		}
		public double getDeg() {
			double deg;
			if (value == null)
				deg = 0;
			else if (value.startsWith("L"))
				deg = Double.parseDouble(value.substring(1));
			else if (value.startsWith("R"))
				deg = (360 - Double.parseDouble(value.substring(1)));
			else if (value.startsWith("SL"))
				deg = Double.parseDouble(value.substring(2));
			else if (value.startsWith("SR"))
				deg = (360 - Double.parseDouble(value.substring(2)));
			else if (value.startsWith("SML"))
				deg = Double.parseDouble(value.substring(3));
			else if (value.startsWith("SMR"))
				deg = (360 - Double.parseDouble(value.substring(3)));
			else
				deg = 0;
			while(deg>=360)deg -= 360;
			while(deg<0)deg += 360;
			return deg;
		}
	}

	public static class Language extends SimpleStringObject {
		Language(String value) {
			super(value);
		}
	}

}
