package st.tori.eagle.parser.dtd;

import java.util.ArrayList;
import java.util.List;

import st.tori.eagle.parser.dtd.DTDEntity.GridStyle;
import st.tori.eagle.parser.dtd.DTDEntity.GridUnit;
import st.tori.eagle.parser.dtd.DTDEntity.Severity;
import st.tori.eagle.parser.dtd.DTDEntity.VerticalText;

public class DTDElement {

	public static class Eagle {
		List<Compatibility> compatibilityList = new ArrayList<Compatibility>();
		Drawing drawing;
		double version;
	}
	public static class Note {
		String value;
		double version;
		Severity severity;
	}
	public static class Drawing {
		List<Setting> settings = new ArrayList<Setting>();
		Grid grid;
		List<Layer> layers = new ArrayList<Layer>();
		Library library;
		Schematic schematic;
		Board board;
	}
	public static interface FileTypeInterface {}
	public static class Library implements FileTypeInterface {
		
	}
	public static class Schematic implements FileTypeInterface {
		
	}
	public static class Board implements FileTypeInterface {
		
	}
	
	
	public static class Variantdef {
		
	}
	public static class Setting {
		boolean alwaysvectorfont;
		VerticalText verticaltext = VerticalText.up;
	}
	public static class Sheet {
		
	}
	public static class Layer {
		Layer number;
		String name;
		int color;
		int fill;
		boolean visible = true;
		boolean active = true;
	}
	public static class Package {
		
	}
	public static class Symbol {
		
	}
	public static class Deviceset {
		
	}
	public static class Gate {
		
	}
	public static class Device {
		
	}
	public static class Library {
		
	}
	public static class Connect {
		
	}
	public static class Technology {
		
	}
	public static class Attribute {
		
	}
	public static class Class {
		List<Clearance> clearanceList = new ArrayList<Clearance>();
		Class number;
		String name;
		Dimension width = new Dimension(0);
		Dimension drill = new Dimension(0);
	}
	public static class Clearance {
		Class classObj;
		Dimension value = new Dimension(0);
	}
	public static class Part {
		
	}
	public static class Instance {
		
	}
	public static class Approved {
		String hash;
	}
	public static interface PlainInterface{};
	public static class Polygon implements PlainInterface {
		
	}
	public static class Wire implements PlainInterface {
		
	}
	public static class Text implements PlainInterface {
		
	}
	public static class Circle implements PlainInterface {
		
	}
	public static class Rectangle implements PlainInterface {
		
	}
	public static class Frame implements PlainInterface {
		
	}
	public static class Hole implements PlainInterface {
		
	}
	public static class Pass {
		List<Param> paramList = new ArrayList<Param>();
		String name;
		String refer;
		boolean active = true;
	}
	public static class Element {
		
	}
	public static class Signal {
		
	}
	public static class Bus {
		
	}
	public static class Net {
		
	}

	public static class Designrules {
		List<Description> descriptionList = new ArrayList<Description>();
		List<Param> paramList = new ArrayList<Param>();
		String name;
	}
	public static class Grid {
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
	public static class Description {
		String value;
		String language = "en";
	}
	public static class Param {
		String name;
		String value;
	}
	
}
