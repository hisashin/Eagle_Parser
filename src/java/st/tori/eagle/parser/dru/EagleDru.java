package st.tori.eagle.parser.dru;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Param;
import st.tori.eagle.parser.exception.DruParserException;

public class EagleDru {

	static double MIL_TO_MM = 0.0254;
	static Pattern PATTERN_ARRAY = Pattern.compile("([^=]+)\\[(.+)\\] *= *(.*)");
	static Pattern PATTERN_UNIQ = Pattern.compile("([^=]+) *= *(.*)");
	
	public static EagleDru DRU_DEFAULT	 = new EagleDru();
	public static EagleDru DRU_FUSION	 = new EagleDru();
	public static EagleDru DRU_OLIMEX	 = new EagleDru();
	static {
		try {
			DRU_DEFAULT.parse("/Users/shingo/Eagle_Parser/doc/dru/default.dru");
			DRU_FUSION.parse("/Users/shingo/Eagle_Parser/doc/dru/Fusion_eagle_rule_v1.1.dru");
			DRU_OLIMEX.parse("/Users/shingo/Eagle_Parser/doc/dru/Olimex_8mils.dru");
		} catch (DruParserException e) {
			e.printStackTrace();
		}
	}
	
	public static abstract class HasPropObject {
		protected Map<String, String> map = new HashMap<String, String>();
		public void put(String prop,String val) {
			map.put(prop, val);
		}
		public String get(String prop) {
			return map.get(prop);
		}
	}
	public static abstract class NoPropObject {
		protected String value;
		void put(String value) {
			this.value = value;
		}
		String value() {
			return value;
		}
	    public int getInt() {	return Integer.parseInt(value);	}
	    public double getDouble() {	return Double.parseDouble(value);	}
		public double[] getArrayInMM() {
			String[] _array = value.split(" ");
			double[] array = new double[_array.length];
			for(int i=0;i<_array.length;i++)
				array[i] = Double.parseDouble(_array[i].replaceFirst("mm", ""));
			return array;
		}
	    public double getMil() {
	    	if(value.endsWith("mil"))
	    		return Double.parseDouble(value.replaceFirst("mil", ""));
	    	else if(value.endsWith("mm"))
	    		return Double.parseDouble(value.replaceFirst("mm", ""))/MIL_TO_MM;
	    	return 0;
	    }
	    public double getMM() {
	    	if(value.endsWith("mil"))
	    		return Double.parseDouble(value.replaceFirst("mil", ""))*MIL_TO_MM;
	    	else if(value.endsWith("mm"))
	    		return Double.parseDouble(value.replaceFirst("mm", ""));
	    	return 0;
	    }
	}
	
	public final void parse(List<st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Description> descriptionList, List<Param> paramList) throws DruParserException {
		Iterator<st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Description> iteDesc = descriptionList.iterator();
		while(iteDesc.hasNext()) {
			st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Description obj = iteDesc.next();
			description.put(obj.language.value, obj.getText());
		}
		Iterator<Param> iteParam = paramList.iterator();
		while(iteParam.hasNext()) {
			Param param = iteParam.next();
			Object obj = getInstance(param.name);
			if(obj==null||!(obj instanceof NoPropObject))
				throw new DruParserException("Cannot create instance for key="+param.name);
			((NoPropObject)obj).put(param.value);
		}
	}
	public final void parse(String druFilePath) throws DruParserException {
		File file = new File(druFilePath);
		BufferedReader buffReader = null;
		try {
			buffReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
			String line;
			Matcher m;
			String key = null;
			String prop = null;
			String value = null;
			while((line = buffReader.readLine()) != null){
				line = line.trim();
				if(line.length()<=0)continue;
				//System.out.println(line);
				m = PATTERN_ARRAY.matcher(line);
				if(m.find()) {
					key = m.group(1).trim();
					prop = m.group(2).trim();
					value = m.group(3).trim();
					//System.out.println ("key="+key+",prop="+prop+",value="+value);
					Object obj = getInstance(key);
					if(obj==null||!(obj instanceof HasPropObject))
						throw new DruParserException("Cannot create instance for key="+key+",prop="+prop);
					((HasPropObject)obj).put(prop, value);
				}else{
					m = PATTERN_UNIQ.matcher(line);
					if(m.find()) {
						key = m.group(1).trim();
						prop = null;
						value = m.group(2).trim();
						//System.out.println ("key="+key+",prop="+prop+",value="+value);
						Object obj = getInstance(key);
						if(obj==null||!(obj instanceof NoPropObject))
							throw new DruParserException("Cannot create instance for key="+key+",prop="+prop);
						((NoPropObject)obj).put(value);
					}else{
						throw new DruParserException("Parse fail:"+line);
					}
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
			throw new DruParserException("Cannot read "+druFilePath);
		} finally {
			try {
				buffReader.close();
			} catch (IOException e) {
				e.printStackTrace();
				throw new DruParserException("Cannot close "+druFilePath);
			}
		}
	}

	public Description description = new Description();
	public LayerSetup layerSetup = new LayerSetup();
	public MtCopper mtCopper = new MtCopper();
	public MtIsolate mtIsolate = new MtIsolate();
	public MdWireWire mdWireWire = new MdWireWire();
	public MdWirePad mdWirePad = new MdWirePad();
	public MdWireVia mdWireVia = new MdWireVia();
	public MdPadPad mdPadPad = new MdPadPad();
	public MdPadVia mdPadVia = new MdPadVia();
	public MdViaVia mdViaVia = new MdViaVia();
	public MdSmdPad mdSmdPad = new MdSmdPad();
	public MdSmdVia mdSmdVia = new MdSmdVia();
	public MdSmdSmd mdSmdSmd = new MdSmdSmd();
	public MdViaViaSameLayer mdViaViaSameLayer = new MdViaViaSameLayer();
	public MnLayersViaInSmd mnLayersViaInSmd = new MnLayersViaInSmd();
	public MdCopperDimension mdCopperDimension = new MdCopperDimension();
	public MdDrill mdDrill = new MdDrill();
	public MdSmdStop mdSmdStop = new MdSmdStop();
	public MsWidth msWidth = new MsWidth();
	public MsDrill msDrill = new MsDrill();
	public MsMicroVia msMicroVia = new MsMicroVia();
	public MsBlindViaRatio msBlindViaRatio = new MsBlindViaRatio();
	public RvPadTop rvPadTop = new RvPadTop();
	public RvPadInner rvPadInner = new RvPadInner();
	public RvPadBottom rvPadBottom = new RvPadBottom();
	public RvViaOuter rvViaOuter = new RvViaOuter();
	public RvViaInner rvViaInner = new RvViaInner();
	public RvMicroViaOuter rvMicroViaOuter = new RvMicroViaOuter();
	public RvMicroViaInner rvMicroViaInner = new RvMicroViaInner();
	public RlMinPadTop rlMinPadTop = new RlMinPadTop();
	public RlMaxPadTop rlMaxPadTop = new RlMaxPadTop();
	public RlMinPadInner rlMinPadInner = new RlMinPadInner();
	public RlMaxPadInner rlMaxPadInner = new RlMaxPadInner();
	public RlMinPadBottom rlMinPadBottom = new RlMinPadBottom();
	public RlMaxPadBottom rlMaxPadBottom = new RlMaxPadBottom();
	public RlMinViaOuter rlMinViaOuter = new RlMinViaOuter();
	public RlMaxViaOuter rlMaxViaOuter = new RlMaxViaOuter();
	public RlMinViaInner rlMinViaInner = new RlMinViaInner();
	public RlMaxViaInner rlMaxViaInner = new RlMaxViaInner();
	public RlMinMicroViaOuter rlMinMicroViaOuter = new RlMinMicroViaOuter();
	public RlMaxMicroViaOuter rlMaxMicroViaOuter = new RlMaxMicroViaOuter();
	public RlMinMicroViaInner rlMinMicroViaInner = new RlMinMicroViaInner();
	public RlMaxMicroViaInner rlMaxMicroViaInner = new RlMaxMicroViaInner();
	public PsTop psTop = new PsTop();
	public PsBottom psBottom = new PsBottom();
	public PsFirst psFirst = new PsFirst();
	public PsElongationLong psElongationLong = new PsElongationLong();
	public PsElongationOffset psElongationOffset = new PsElongationOffset();
	public MvStopFrame mvStopFrame = new MvStopFrame();
	public MvCreamFrame mvCreamFrame = new MvCreamFrame();
	public MlMinStopFrame mlMinStopFrame = new MlMinStopFrame();
	public MlMaxStopFrame mlMaxStopFrame = new MlMaxStopFrame();
	public MlMinCreamFrame mlMinCreamFrame = new MlMinCreamFrame();
	public MlMaxCreamFrame mlMaxCreamFrame = new MlMaxCreamFrame();
	public MlViaStopLimit mlViaStopLimit = new MlViaStopLimit();
	public SrRoundness srRoundness = new SrRoundness();
	public SrMinRoundness srMinRoundness = new SrMinRoundness();
	public SrMaxRoundness srMaxRoundness = new SrMaxRoundness();
	public SlThermalGap slThermalGap = new SlThermalGap();
	public SlMinThermalGap slMinThermalGap = new SlMinThermalGap();
	public SlMaxThermalGap slMaxThermalGap = new SlMaxThermalGap();
	public SlAnnulusIsolate slAnnulusIsolate = new SlAnnulusIsolate();
	public SlThermalIsolate slThermalIsolate = new SlThermalIsolate();
	public SlAnnulusRestring slAnnulusRestring = new SlAnnulusRestring();
	public SlThermalRestring slThermalRestring = new SlThermalRestring();
	public SlThermalsForVias slThermalsForVias = new SlThermalsForVias();
	public CheckGrid checkGrid = new CheckGrid();
	public CheckAngle checkAngle = new CheckAngle();
	public CheckFont checkFont = new CheckFont();
	public CheckRestrict checkRestrict = new CheckRestrict();
	public UseDiameter useDiameter = new UseDiameter();
	public MaxErrors maxErrors = new MaxErrors();
	
	Object getInstance(String qName) throws DruParserException {
		if ("description".equals(qName))return description;
		else if("layerSetup".equals(qName))return layerSetup;
		else if("mtCopper".equals(qName))return mtCopper;
		else if("mtIsolate".equals(qName))return mtIsolate;
		else if("mdWireWire".equals(qName))return mdWireWire;
		else if("mdWirePad".equals(qName))return mdWirePad;
		else if("mdWireVia".equals(qName))return mdWireVia;
		else if("mdPadPad".equals(qName))return mdPadPad;
		else if("mdPadVia".equals(qName))return mdPadVia;
		else if("mdViaVia".equals(qName))return mdViaVia;
		else if("mdSmdPad".equals(qName))return mdSmdPad;
		else if("mdSmdVia".equals(qName))return mdSmdVia;
		else if("mdSmdSmd".equals(qName))return mdSmdSmd;
		else if("mdViaViaSameLayer".equals(qName))return mdViaViaSameLayer;
		else if("mnLayersViaInSmd".equals(qName))return mnLayersViaInSmd;
		else if("mdCopperDimension".equals(qName))return mdCopperDimension;
		else if("mdDrill".equals(qName))return mdDrill;
		else if("mdSmdStop".equals(qName))return mdSmdStop;
		else if("msWidth".equals(qName))return msWidth;
		else if("msDrill".equals(qName))return msDrill;
		else if("msMicroVia".equals(qName))return msMicroVia;
		else if("msBlindViaRatio".equals(qName))return msBlindViaRatio;
		else if("rvPadTop".equals(qName))return rvPadTop;
		else if("rvPadInner".equals(qName))return rvPadInner;
		else if("rvPadBottom".equals(qName))return rvPadBottom;
		else if("rvViaOuter".equals(qName))return rvViaOuter;
		else if("rvViaInner".equals(qName))return rvViaInner;
		else if("rvMicroViaOuter".equals(qName))return rvMicroViaOuter;
		else if("rvMicroViaInner".equals(qName))return rvMicroViaInner;
		else if("rlMinPadTop".equals(qName))return rlMinPadTop;
		else if("rlMaxPadTop".equals(qName))return rlMaxPadTop;
		else if("rlMinPadInner".equals(qName))return rlMinPadInner;
		else if("rlMaxPadInner".equals(qName))return rlMaxPadInner;
		else if("rlMinPadBottom".equals(qName))return rlMinPadBottom;
		else if("rlMaxPadBottom".equals(qName))return rlMaxPadBottom;
		else if("rlMinViaOuter".equals(qName))return rlMinViaOuter;
		else if("rlMaxViaOuter".equals(qName))return rlMaxViaOuter;
		else if("rlMinViaInner".equals(qName))return rlMinViaInner;
		else if("rlMaxViaInner".equals(qName))return rlMaxViaInner;
		else if("rlMinMicroViaOuter".equals(qName))return rlMinMicroViaOuter;
		else if("rlMaxMicroViaOuter".equals(qName))return rlMaxMicroViaOuter;
		else if("rlMinMicroViaInner".equals(qName))return rlMinMicroViaInner;
		else if("rlMaxMicroViaInner".equals(qName))return rlMaxMicroViaInner;
		else if("psTop".equals(qName))return psTop;
		else if("psBottom".equals(qName))return psBottom;
		else if("psFirst".equals(qName))return psFirst;
		else if("psElongationLong".equals(qName))return psElongationLong;
		else if("psElongationOffset".equals(qName))return psElongationOffset;
		else if("mvStopFrame".equals(qName))return mvStopFrame;
		else if("mvCreamFrame".equals(qName))return mvCreamFrame;
		else if("mlMinStopFrame".equals(qName))return mlMinStopFrame;
		else if("mlMaxStopFrame".equals(qName))return mlMaxStopFrame;
		else if("mlMinCreamFrame".equals(qName))return mlMinCreamFrame;
		else if("mlMaxCreamFrame".equals(qName))return mlMaxCreamFrame;
		else if("mlViaStopLimit".equals(qName))return mlViaStopLimit;
		else if("srRoundness".equals(qName))return srRoundness;
		else if("srMinRoundness".equals(qName))return srMinRoundness;
		else if("srMaxRoundness".equals(qName))return srMaxRoundness;
		else if("slThermalGap".equals(qName))return slThermalGap;
		else if("slMinThermalGap".equals(qName))return slMinThermalGap;
		else if("slMaxThermalGap".equals(qName))return slMaxThermalGap;
		else if("slAnnulusIsolate".equals(qName))return slAnnulusIsolate;
		else if("slThermalIsolate".equals(qName))return slThermalIsolate;
		else if("slAnnulusRestring".equals(qName))return slAnnulusRestring;
		else if("slThermalRestring".equals(qName))return slThermalRestring;
		else if("slThermalsForVias".equals(qName))return slThermalsForVias;
		else if("checkGrid".equals(qName))return checkGrid;
		else if("checkAngle".equals(qName))return checkAngle;
		else if("checkFont".equals(qName))return checkFont;
		else if("checkRestrict".equals(qName))return checkRestrict;
		else if("useDiameter".equals(qName))return useDiameter;
		else if("maxErrors".equals(qName))return maxErrors;
		throw new DruParserException("Unkown qName '" + qName + "'");
	}
	/*
	[Fusion]
	key=description,prop=de,val=<b>EAGLE Design Rules</b>\n<p>\nDie Standard-Design-Rules sind so gewählt, dass sie für \ndie meisten Anwendungen passen. Sollte ihre Platine \nbesondere Anforderungen haben, treffen Sie die erforderlichen\nEinstellungen hier und speichern die Design Rules unter \neinem neuen Namen ab.
	key=description,prop=en,val=<b>EAGLE Design Rules</b>\n<p>\nThe default Design Rules have been set to cover\na wide range of applications. Your particular design\nmay have different requirements, so please make the\nnecessary adjustments and save your customized\ndesign rules under a new name.
	key=description,prop=zh,val=<b>Seeed Studio EAGLE Design Rules</b>\n
	[Olimex]
	key=description,prop=bg,value=<b>EAGLE Design Rules</b>\n<p>\nThe default Design Rules have been set to cover\na wide range of applications. Your particular design\nmay have different requirements, so please make the\nnecessary adjustments and save your customized\ndesign rules under a new name.
	 */
	public static class Description extends HasPropObject {}
	//key=layerSetup,prop=null,value=(1*16)
	//key=layerSetup,prop=null,value=(1*16)
	public static class LayerSetup extends NoPropObject {}
	//key=mtCopper,prop=null,value=0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm
	//key=mtCopper,prop=null,value=0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm
	public static class MtCopper extends NoPropObject {
		//Use getArrayInMM();
	}
	//key=mtIsolate,prop=null,value=1.5mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm
	//key=mtIsolate,prop=null,value=1.5mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm
    public static class MtIsolate extends NoPropObject {
		//Use getArrayInMM();
    }
    //key=mdWireWire,prop=null,value=6mil
	//key=mdWireWire,prop=null,value=8mil
    public static class MdWireWire extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdWirePad,prop=null,value=6mil
	//key=mdWirePad,prop=null,value=8mil
    public static class MdWirePad extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdWireVia,prop=null,value=6mil
	//key=mdWireVia,prop=null,value=8mil
    public static class MdWireVia extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdPadPad,prop=null,value=6mil
	//key=mdPadPad,prop=null,value=8mil
    public static class MdPadPad extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdPadVia,prop=null,value=6mil
	//key=mdPadVia,prop=null,value=8mil
    public static class MdPadVia extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdViaVia,prop=null,value=6mil
	//key=mdViaVia,prop=null,value=8mil
    public static class MdViaVia extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdSmdPad,prop=null,value=0mil
	//key=mdSmdPad,prop=null,value=0mil
    public static class MdSmdPad extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdSmdVia,prop=null,value=0mil
	//key=mdSmdVia,prop=null,value=0mil
    public static class MdSmdVia extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdSmdSmd,prop=null,value=0mil
	//key=mdSmdSmd,prop=null,value=0mil
    public static class MdSmdSmd extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdViaViaSameLayer,prop=null,value=8mil
	//key=mdViaViaSameLayer,prop=null,value=8mil
    public static class MdViaViaSameLayer extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mnLayersViaInSmd,prop=null,value=2
	//key=mnLayersViaInSmd,prop=null,value=2
    public static class MnLayersViaInSmd extends NoPropObject {
		//Use getInt();
    }
	//key=mdCopperDimension,prop=null,value=10mil
	//key=mdCopperDimension,prop=null,value=20mil
    public static class MdCopperDimension extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdDrill,prop=null,value=10mil
	//key=mdDrill,prop=null,value=10mil
    public static class MdDrill extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=mdSmdStop,prop=null,value=0mil
	//key=mdSmdStop,prop=null,value=0mil
    public static class MdSmdStop extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=msWidth,prop=null,value=6mil
	//key=msWidth,prop=null,value=8mil
    public static class MsWidth extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=msDrill,prop=null,value=12mil
	//key=msDrill,prop=null,value=0.7mm
    public static class MsDrill extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=msMicroVia,prop=null,value=12mil
	//key=msMicroVia,prop=null,value=0.7mm
    public static class MsMicroVia extends NoPropObject {
		//Use getMil() or getMM();
    }
	//key=msBlindViaRatio,prop=null,value=0.500000
	//key=msBlindViaRatio,prop=null,value=0.000000
    public static class MsBlindViaRatio extends NoPropObject {
		//Use getDouble();
    }
	//key=rvPadTop,prop=null,value=0.250000
	//key=rvPadTop,prop=null,value=0.250000
    //top pad size as percent of drill size 
    public static class RvPadTop extends NoPropObject {
    	//Use getDouble();
    }
	//key=rvPadInner,prop=null,value=0.250000
	//key=rvPadInner,prop=null,value=0.250000
    public static class RvPadInner extends NoPropObject {
    	//Use getDouble();
    }
	//key=rvPadBottom,prop=null,value=0.250000
	//key=rvPadBottom,prop=null,value=0.250000
    public static class RvPadBottom extends NoPropObject {
    	//Use getDouble();
    }
	//key=rvViaOuter,prop=null,value=0.250000
	//key=rvViaOuter,prop=null,value=0.250000
    //copper annulus is this percent of via hole 
    public static class RvViaOuter extends NoPropObject {
    	//Use getDouble();
    }
	//key=rvViaInner,prop=null,value=0.250000
	//key=rvViaInner,prop=null,value=0.250000
    public static class RvViaInner extends NoPropObject {
    	//Use getDouble();
    }
	//key=rvMicroViaOuter,prop=null,value=0.250000
	//key=rvMicroViaOuter,prop=null,value=0.250000
    public static class RvMicroViaOuter extends NoPropObject {
    	//Use getDouble();
    }
	//key=rvMicroViaInner,prop=null,value=0.250000
	//key=rvMicroViaInner,prop=null,value=0.250000
    public static class RvMicroViaInner extends NoPropObject {
    	//Use getDouble();
    }
	//key=rlMinPadTop,prop=null,value=10mil
	//key=rlMinPadTop,prop=null,value=8mil
    //minimum copper annulus on through hole pads 
    public static class RlMinPadTop extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=rlMaxPadTop,prop=null,value=20mil
	//key=rlMaxPadTop,prop=null,value=20mil
    //maximum copper annulus on through hole pads 
    public static class RlMaxPadTop extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMinPadInner,prop=null,value=10mil
	//key=rlMinPadInner,prop=null,value=8mil
    public static class RlMinPadInner extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMaxPadInner,prop=null,value=20mil
	//key=rlMaxPadInner,prop=null,value=20mil
    public static class RlMaxPadInner extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMinPadBottom,prop=null,value=10mil
	//key=rlMinPadBottom,prop=null,value=8mil
    public static class RlMinPadBottom extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMaxPadBottom,prop=null,value=20mil
	//key=rlMaxPadBottom,prop=null,value=20mil
    public static class RlMaxPadBottom extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMinViaOuter,prop=null,value=6mil
	//key=rlMinViaOuter,prop=null,value=8mil
    //minimum copper annulus on via 
    public static class RlMinViaOuter extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMaxViaOuter,prop=null,value=20mil
	//key=rlMaxViaOuter,prop=null,value=20mil
    //maximum copper annulus on via 
    public static class RlMaxViaOuter extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMinViaInner,prop=null,value=6mil
	//key=rlMinViaInner,prop=null,value=8mil
    public static class RlMinViaInner extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMaxViaInner,prop=null,value=20mil
	//key=rlMaxViaInner,prop=null,value=20mil
    public static class RlMaxViaInner extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMinMicroViaOuter,prop=null,value=4mil
	//key=rlMinMicroViaOuter,prop=null,value=8mil
    public static class RlMinMicroViaOuter extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMaxMicroViaOuter,prop=null,value=20mil
	//key=rlMaxMicroViaOuter,prop=null,value=20mil
    public static class RlMaxMicroViaOuter extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMinMicroViaInner,prop=null,value=4mil
	//key=rlMinMicroViaInner,prop=null,value=8mil
    public static class RlMinMicroViaInner extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=rlMaxMicroViaInner,prop=null,value=20mil
	//key=rlMaxMicroViaInner,prop=null,value=20mil
    public static class RlMaxMicroViaInner extends NoPropObject  {
    	//Use getMil() or getMM();
    }
	//key=psTop,prop=null,value=-1
	//key=psTop,prop=null,value=1
    public static class PsTop extends NoPropObject {
    	//Use getInt();
    }
	//key=psBottom,prop=null,value=-1
	//key=psBottom,prop=null,value=1
    public static class PsBottom extends NoPropObject {
    	//Use getInt();
    }
	//key=psFirst,prop=null,value=0
	//key=psFirst,prop=null,value=-1
    public static class PsFirst extends NoPropObject {
    	//Use getInt();
    }
	//key=psElongationLong,prop=null,value=100
	//key=psElongationLong,prop=null,value=100
    public static class PsElongationLong extends NoPropObject {
    	//Use getInt();
    }
	//key=psElongationOffset,prop=null,value=100
	//key=psElongationOffset,prop=null,value=100
    public static class PsElongationOffset extends NoPropObject {
    	//Use getDouble();
    }
	//key=mvStopFrame,prop=null,value=1.000000
	//key=mvStopFrame,prop=null,value=0.100000
    public static class MvStopFrame extends NoPropObject {
    	//Use getDouble();
    }
	//key=mvCreamFrame,prop=null,value=0.000000
	//key=mvCreamFrame,prop=null,value=0.000000
    public static class MvCreamFrame extends NoPropObject {
    	//Use getDouble();
    }
	//key=mlMinStopFrame,prop=null,value=2mil
	//key=mlMinStopFrame,prop=null,value=0mil
    public static class MlMinStopFrame extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=mlMaxStopFrame,prop=null,value=2mil
	//key=mlMaxStopFrame,prop=null,value=20mil
    public static class MlMaxStopFrame extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=mlMinCreamFrame,prop=null,value=0mil
	//key=mlMinCreamFrame,prop=null,value=0mil
    public static class MlMinCreamFrame extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=mlMaxCreamFrame,prop=null,value=0mil
	//key=mlMaxCreamFrame,prop=null,value=0mil
    public static class MlMaxCreamFrame extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=mlViaStopLimit,prop=null,value=100mil
	//key=mlViaStopLimit,prop=null,value=0mil
    public static class MlViaStopLimit extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=srRoundness,prop=null,value=0.000000
	//key=srRoundness,prop=null,value=0.000000
    public static class SrRoundness extends NoPropObject {
    	//Use getDouble();
    }
	//key=srMinRoundness,prop=null,value=0mil
	//key=srMinRoundness,prop=null,value=0mil
    public static class SrMinRoundness extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=srMaxRoundness,prop=null,value=0mil
	//key=srMaxRoundness,prop=null,value=0mil
    public static class SrMaxRoundness extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=slThermalGap,prop=null,value=0.500000
	//key=slThermalGap,prop=null,value=0.500000
    public static class SlThermalGap extends NoPropObject {
    	//Use getDouble();
    }
	//key=slMinThermalGap,prop=null,value=20mil
	//key=slMinThermalGap,prop=null,value=20mil
    public static class SlMinThermalGap extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=slMaxThermalGap,prop=null,value=100mil
	//key=slMaxThermalGap,prop=null,value=100mil
    public static class SlMaxThermalGap extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=slAnnulusIsolate,prop=null,value=20mil
	//key=slAnnulusIsolate,prop=null,value=20mil
    public static class SlAnnulusIsolate extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=slThermalIsolate,prop=null,value=10mil
	//key=slThermalIsolate,prop=null,value=10mil
    public static class SlThermalIsolate extends NoPropObject {
    	//Use getMil() or getMM();
    }
	//key=slAnnulusRestring,prop=null,value=0
	//key=slAnnulusRestring,prop=null,value=1
    public static class SlAnnulusRestring extends NoPropObject {
    	//Use getInt();
    }
	//key=slThermalRestring,prop=null,value=1
	//key=slThermalRestring,prop=null,value=1
    public static class SlThermalRestring extends NoPropObject {
    	//Use getInt();
    }
	//key=slThermalsForVias,prop=null,value=0
	//key=slThermalsForVias,prop=null,value=0
    public static class SlThermalsForVias extends NoPropObject {
    	//Use getInt();
    }
	//key=checkGrid,prop=null,value=0
	//key=checkGrid,prop=null,value=0
    public static class CheckGrid extends NoPropObject {
    	//Use getInt();
    }
	//key=checkAngle,prop=null,value=0
	//key=checkAngle,prop=null,value=0
    public static class CheckAngle extends NoPropObject {
    	//Use getInt();
    }
	//key=checkFont,prop=null,value=1
	//key=checkFont,prop=null,value=1
    public static class CheckFont extends NoPropObject {
    	//Use getInt();
    }
	//key=checkRestrict,prop=null,value=0
	//key=checkRestrict,prop=null,value=1
    public static class CheckRestrict extends NoPropObject {
    	//Use getInt();
    }
	//key=useDiameter,prop=null,value=13
	//key=useDiameter,prop=null,value=13
    public static class UseDiameter extends NoPropObject {
    	//Use getInt();
    }
	//key=maxErrors,prop=null,value=50
	//key=maxErrors,prop=null,value=50
    public static class MaxErrors extends NoPropObject {
    	//Use getInt();
    }

}
