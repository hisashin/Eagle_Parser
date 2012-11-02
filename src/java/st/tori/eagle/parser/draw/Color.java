package st.tori.eagle.parser.draw;

import java.util.HashMap;
import java.util.Map;

import magick.PixelPacket;

public class Color {
	
	public static Color BLACK = new Color(0,null,255,255,255);
	public static Color WHITE = new Color(0,null,0,0,0);
	
	public static Color get(int layer) {
		return layerMap.get(layer);
	}
	public static Color get(LayerName name) {
		return nameMap.get(name);
	}

	int layer;
	LayerName name;
	int red;
	int green;
	int blue;
	int opacy = 0;
	public PixelPacket pixelPacket;
	
	public Color(int layer,LayerName name,int red,int green,int blue) {
		this.layer = layer;
		this.name = name;
		this.red = red;
		this.green = green;
		this.blue = blue;
		this.pixelPacket = new PixelPacket(0xbb*red, 0xdd*green, 0xff*blue, 0);
	}

	public enum LayerName {
		Top,
		Bottom,
		Pads,
		Vias,
		Unrouted,
		Dimension,
		tPlace,
		bPlace,
		tOrigins,
		bOrigins,
		tNames,
		bNames,
		tValues,
		bValues,
		tStop,
		bStop,
		tCream,
		bCream,
		tFinish,
		bFinish,
		tGlue,
		bGlue,
		tTest,
		bTest,
		tKeepout,
		bKeepout,
		tRestrict,
		bRestrict,
		vRestrict,
		Drills,
		Holes,
		Milling,
		Measures,
		Document,
		Reference,
		tDocu,
		bDocu,
	}
	static Map<Integer, Color> layerMap = new HashMap<Integer, Color>();
	static Map<LayerName, Color> nameMap = new HashMap<LayerName, Color>();
	static void put(Color color) {
		layerMap.put(color.layer, color);
		nameMap.put(color.name, color);
	}
	static {
		put(new Color(1,LayerName.Top,165,75,75));
		put(new Color(16,LayerName.Bottom,74,75,165));
		put(new Color(17,LayerName.Pads,75,165,75));
		put(new Color(18,LayerName.Vias,75,165,75));
		put(new Color(19,LayerName.Unrouted,165,165,75));
		put(new Color(20,LayerName.Dimension,75,75,75));
		put(new Color(21,LayerName.tPlace,165,165,165));
		put(new Color(22,LayerName.bPlace,165,165,165));
		put(new Color(23,LayerName.tOrigins,75,75,75));
		put(new Color(24,LayerName.bOrigins,75,75,75));
		put(new Color(25,LayerName.tNames,165,165,165));
		put(new Color(26,LayerName.bNames,165,165,165));
		put(new Color(27,LayerName.tValues,165,165,165));
		put(new Color(28,LayerName.bValues,165,165,165));
		put(new Color(29,LayerName.tStop,186,186,186));
		put(new Color(30,LayerName.bStop,140,140,140));
		put(new Color(31,LayerName.tCream,161,161,161));
		put(new Color(32,LayerName.bCream,174,174,174));
		put(new Color(33,LayerName.tFinish,191,192,126));
		put(new Color(34,LayerName.bFinish,181,181,103));
		put(new Color(35,LayerName.tGlue,166,166,166));
		put(new Color(36,LayerName.bGlue,168,168,168));
		put(new Color(37,LayerName.tTest,165,165,165));
		put(new Color(38,LayerName.bTest,165,165,165));
		put(new Color(39,LayerName.tKeepout,178,101,99));
		put(new Color(40,LayerName.bKeepout,126,124,190));
		put(new Color(41,LayerName.tRestrict,160,65,62));
		put(new Color(42,LayerName.bRestrict,118,120,186));
		put(new Color(43,LayerName.vRestrict,105,182,104));
		put(new Color(44,LayerName.Drills,165,165,165));
		put(new Color(45,LayerName.Holes,165,165,165));
		put(new Color(46,LayerName.Milling,75,165,165));
		put(new Color(47,LayerName.Measures,165,165,165));
		put(new Color(48,LayerName.Document,165,165,165));
		put(new Color(49,LayerName.Reference,165,165,165));
		put(new Color(51,LayerName.tDocu,165,165,165));
		put(new Color(52,LayerName.bDocu,165,165,165));
	}
	
	
}