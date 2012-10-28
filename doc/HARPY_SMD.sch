<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="AZ1086H">
<packages>
<package name="AZ1086H">
<wire x1="3.35" y1="1.85" x2="1.55" y2="1.85" width="0.127" layer="21"/>
<wire x1="1.55" y1="1.85" x2="-1.55" y2="1.85" width="0.127" layer="21"/>
<wire x1="-1.55" y1="1.85" x2="-3.35" y2="1.85" width="0.127" layer="21"/>
<wire x1="-3.35" y1="1.85" x2="-3.35" y2="-1.85" width="0.127" layer="21"/>
<wire x1="-3.35" y1="-1.85" x2="3.35" y2="-1.85" width="0.127" layer="21"/>
<wire x1="3.35" y1="-1.85" x2="3.35" y2="1.85" width="0.127" layer="21"/>
<wire x1="1.55" y1="1.85" x2="1.55" y2="3.7" width="0.127" layer="21"/>
<wire x1="1.55" y1="3.7" x2="-1.55" y2="3.7" width="0.127" layer="21"/>
<wire x1="-1.55" y1="3.7" x2="-1.55" y2="1.85" width="0.127" layer="21"/>
<smd name="GND" x="-2.4" y="-2.85" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="OUTPUT1" x="0" y="-2.85" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="INPUT" x="2.35" y="-2.85" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="OUTPUT2" x="0" y="2.9718" dx="3.81" dy="2.286" layer="1"/>
<text x="-3.048" y="-0.762" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="AZ1086H">
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-6.858" y="2.032" size="1.27" layer="94">IN</text>
<text x="3.556" y="2.032" size="1.27" layer="94">OUT</text>
<text x="-2.032" y="-4.064" size="1.27" layer="94">GND</text>
<text x="-7.366" y="5.842" size="1.27" layer="94">&gt;NAME</text>
<pin name="INPUT" x="-12.7" y="2.54" visible="off" length="middle" direction="pwr"/>
<pin name="OUTPUT1" x="12.7" y="2.54" visible="off" length="middle" rot="R180"/>
<pin name="GND" x="0" y="-10.16" visible="off" length="middle" direction="sup" rot="R90"/>
<pin name="OUTPUT2" x="12.7" y="0" visible="off" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AZ1086H">
<gates>
<gate name="G$1" symbol="AZ1086H" x="0" y="0"/>
</gates>
<devices>
<device name="" package="AZ1086H">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="INPUT" pad="INPUT"/>
<connect gate="G$1" pin="OUTPUT1" pad="OUTPUT1"/>
<connect gate="G$1" pin="OUTPUT2" pad="OUTPUT2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="USB_FEMALE">
<packages>
<package name="USB-A003">
<description>&lt;b&gt;USB&lt;/b&gt; YAMAICHI CONNECTOR</description>
<wire x1="-6.15" y1="0.4" x2="-6.15" y2="13.9" width="0.2032" layer="21"/>
<wire x1="-6.15" y1="13.9" x2="-4.25" y2="13.9" width="0.2032" layer="21"/>
<wire x1="-4.25" y1="13.9" x2="-2.75" y2="13.9" width="0.2032" layer="51"/>
<wire x1="-2.75" y1="13.9" x2="-1.75" y2="13.9" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="13.9" x2="-0.25" y2="13.9" width="0.2032" layer="51"/>
<wire x1="-0.25" y1="13.9" x2="0.25" y2="13.9" width="0.2032" layer="21"/>
<wire x1="0.25" y1="13.9" x2="1.75" y2="13.9" width="0.2032" layer="51"/>
<wire x1="1.75" y1="13.9" x2="2.75" y2="13.9" width="0.2032" layer="21"/>
<wire x1="2.75" y1="13.9" x2="4.25" y2="13.9" width="0.2032" layer="51"/>
<wire x1="4.25" y1="13.9" x2="6.15" y2="13.9" width="0.2032" layer="21"/>
<wire x1="6.15" y1="13.9" x2="6.15" y2="0.4" width="0.2032" layer="21"/>
<wire x1="6.15" y1="0.4" x2="5.7" y2="0.4" width="0.2032" layer="21"/>
<wire x1="5.7" y1="0.4" x2="5.7" y2="0.1" width="0.2032" layer="21"/>
<wire x1="5.7" y1="0.1" x2="1.5" y2="0.1" width="0.2032" layer="21"/>
<wire x1="1.5" y1="0.1" x2="1.5" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.5" y1="0.7" x2="-1.5" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="0.7" x2="-1.5" y2="0.1" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="0.1" x2="-5.7" y2="0.1" width="0.2032" layer="21"/>
<wire x1="-5.7" y1="0.1" x2="-5.7" y2="0.4" width="0.2032" layer="21"/>
<wire x1="-6.45" y1="0.1" x2="-6.15" y2="0.4" width="0.2032" layer="21" curve="90"/>
<wire x1="6.15" y1="0.4" x2="6.45" y2="0.1" width="0.2032" layer="21" curve="90"/>
<wire x1="-6.15" y1="0.4" x2="-5.7" y2="0.4" width="0.2032" layer="21"/>
<wire x1="-6.25" y1="11.5" x2="-7.5" y2="11" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="11" x2="-7.5" y2="9.5" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="9.5" x2="-6.25" y2="9" width="0.2032" layer="21"/>
<wire x1="6.25" y1="9" x2="7.5" y2="9.5" width="0.2032" layer="21"/>
<wire x1="7.5" y1="9.5" x2="7.5" y2="11" width="0.2032" layer="21"/>
<wire x1="7.5" y1="11" x2="6.25" y2="11.5" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="5.5" x2="-2.5" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="1.5" x2="-3.5" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-3.5" y1="1.5" x2="-4.5" y2="5.5" width="0.2032" layer="21"/>
<wire x1="4.5" y1="5.5" x2="3.5" y2="1.5" width="0.2032" layer="21"/>
<wire x1="3.5" y1="1.5" x2="2.5" y2="1.5" width="0.2032" layer="21"/>
<wire x1="2.5" y1="1.5" x2="1.5" y2="5.5" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="9" x2="1.75" y2="9" width="0.3048" layer="21"/>
<wire x1="-1.8" y1="9" x2="-1.65" y2="8.35" width="0.3048" layer="21"/>
<wire x1="-1.65" y1="8.35" x2="-1.55" y2="8" width="0.3048" layer="21"/>
<wire x1="-1.55" y1="8" x2="-1.45" y2="7.8" width="0.3048" layer="21"/>
<wire x1="-1.45" y1="7.8" x2="-1.3" y2="7.65" width="0.3048" layer="21"/>
<wire x1="-0.75" y1="8.35" x2="-0.85" y2="8" width="0.3048" layer="21"/>
<wire x1="-0.85" y1="8" x2="-0.95" y2="7.8" width="0.3048" layer="21"/>
<wire x1="-0.95" y1="7.8" x2="-1.1" y2="7.65" width="0.3048" layer="21"/>
<wire x1="-1.3" y1="7.65" x2="-1.1" y2="7.65" width="0.3048" layer="21"/>
<wire x1="0.45" y1="9.65" x2="0.35" y2="10" width="0.3048" layer="21"/>
<wire x1="0.35" y1="10" x2="0.25" y2="10.2" width="0.3048" layer="21"/>
<wire x1="0.25" y1="10.2" x2="0.1" y2="10.35" width="0.3048" layer="21"/>
<wire x1="-0.75" y1="8.35" x2="-0.45" y2="9.65" width="0.3048" layer="21"/>
<wire x1="-0.45" y1="9.65" x2="-0.35" y2="10" width="0.3048" layer="21"/>
<wire x1="-0.35" y1="10" x2="-0.25" y2="10.2" width="0.3048" layer="21"/>
<wire x1="-0.25" y1="10.2" x2="-0.1" y2="10.35" width="0.3048" layer="21"/>
<wire x1="0.1" y1="10.35" x2="-0.1" y2="10.35" width="0.3048" layer="21"/>
<wire x1="0.45" y1="9.65" x2="0.75" y2="8.35" width="0.3048" layer="21"/>
<wire x1="0.75" y1="8.35" x2="0.85" y2="8" width="0.3048" layer="21"/>
<wire x1="0.85" y1="8" x2="0.95" y2="7.8" width="0.3048" layer="21"/>
<wire x1="0.95" y1="7.8" x2="1.1" y2="7.65" width="0.3048" layer="21"/>
<wire x1="1.8" y1="9" x2="1.65" y2="8.35" width="0.3048" layer="21"/>
<wire x1="1.65" y1="8.35" x2="1.55" y2="8" width="0.3048" layer="21"/>
<wire x1="1.55" y1="8" x2="1.45" y2="7.8" width="0.3048" layer="21"/>
<wire x1="1.45" y1="7.8" x2="1.3" y2="7.65" width="0.3048" layer="21"/>
<wire x1="1.1" y1="7.65" x2="1.3" y2="7.65" width="0.3048" layer="21"/>
<circle x="0" y="8.9" radius="2.3021" width="0.3048" layer="21"/>
<pad name="VBUS" x="-3.5" y="14" drill="1.1"/>
<pad name="D-" x="-1" y="14" drill="1.1"/>
<pad name="D+" x="1" y="14" drill="1.1"/>
<pad name="GND" x="3.5" y="14" drill="1.1"/>
<pad name="GND1" x="-6.57" y="10.28" drill="2"/>
<pad name="GND2" x="6.57" y="10.28" drill="2"/>
<text x="-7.62" y="2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="8.89" y="2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1" y="1.75" size="1.016" layer="21" ratio="10">USB</text>
<rectangle x1="-6.55" y1="0" x2="-6.45" y2="0.2" layer="21"/>
<rectangle x1="6.45" y1="0" x2="6.55" y2="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="USB">
<wire x1="2.54" y1="6.35" x2="-2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="-2.54" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-3.81" x2="2.54" y2="-3.81" width="0.254" layer="94"/>
<wire x1="2.54" y1="6.35" x2="2.54" y2="5.715" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.715" x2="1.27" y2="5.715" width="0.254" layer="94"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="4.445" width="0.254" layer="94"/>
<wire x1="1.27" y1="4.445" x2="2.54" y2="4.445" width="0.254" layer="94"/>
<wire x1="2.54" y1="4.445" x2="2.54" y2="3.175" width="0.254" layer="94"/>
<wire x1="2.54" y1="3.175" x2="1.27" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.905" x2="2.54" y2="1.905" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="0.635" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.635" x2="1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="2.54" y2="-0.635" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.635" x2="2.54" y2="-1.905" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="-3.175" width="0.254" layer="94"/>
<wire x1="1.27" y1="-3.175" x2="2.54" y2="-3.175" width="0.254" layer="94"/>
<wire x1="2.54" y1="-3.175" x2="2.54" y2="-3.81" width="0.254" layer="94"/>
<text x="0.635" y="-1.905" size="2.54" layer="94" ratio="10" rot="R90">USB</text>
<text x="-4.318" y="7.366" size="1.778" layer="95" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-6.604" size="1.778" layer="96" ratio="10">&gt;VALUE</text>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="4" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="GND1" x="-5.08" y="-10.16" length="middle" direction="sup"/>
<pin name="GND2" x="-5.08" y="-12.7" length="middle" direction="sup"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="USB-A003" prefix="X" uservalue="yes">
<description>&lt;b&gt;USB connector&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="USB" x="0" y="0"/>
</gates>
<devices>
<device name="" package="USB-A003">
<connects>
<connect gate="G$1" pin="1" pad="VBUS"/>
<connect gate="G$1" pin="2" pad="D-"/>
<connect gate="G$1" pin="3" pad="D+"/>
<connect gate="G$1" pin="4" pad="GND"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MAX3421E">
<packages>
<package name="TQFP44">
<description>&lt;b&gt;Thin Quad Flat Package&lt;/b&gt;</description>
<wire x1="-1.9" y1="2.4" x2="1.9" y2="2.4" width="0.127" layer="21"/>
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.9" width="0.127" layer="21"/>
<wire x1="1.9" y1="-2.4" x2="-1.9" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="1.9" width="0.127" layer="21"/>
<wire x1="-1.9" y1="2.4" x2="-2.4" y2="1.9" width="0.127" layer="21"/>
<wire x1="2.4" y1="-1.9" x2="1.9" y2="-2.4" width="0.127" layer="21"/>
<wire x1="1.9" y1="2.4" x2="2.4" y2="1.9" width="0.127" layer="21"/>
<wire x1="-2.4" y1="-1.9" x2="-1.9" y2="-2.4" width="0.127" layer="21"/>
<circle x="-1.7" y="1.7" radius="0.2827" width="0.254" layer="21"/>
<smd name="1" x="-3.25" y="1.75" dx="2" dy="0.25" layer="1"/>
<smd name="2" x="-3.25" y="1.25" dx="2" dy="0.25" layer="1"/>
<smd name="3" x="-3.25" y="0.75" dx="2" dy="0.25" layer="1"/>
<smd name="4" x="-3.25" y="0.25" dx="2" dy="0.25" layer="1"/>
<smd name="5" x="-3.25" y="-0.25" dx="2" dy="0.25" layer="1"/>
<smd name="6" x="-3.25" y="-0.75" dx="2" dy="0.25" layer="1"/>
<smd name="7" x="-3.25" y="-1.25" dx="2" dy="0.25" layer="1"/>
<smd name="8" x="-3.25" y="-1.75" dx="2" dy="0.25" layer="1"/>
<smd name="17" x="3.25" y="-1.75" dx="2" dy="0.25" layer="1" rot="R180"/>
<smd name="18" x="3.25" y="-1.25" dx="2" dy="0.25" layer="1" rot="R180"/>
<smd name="19" x="3.25" y="-0.75" dx="2" dy="0.25" layer="1" rot="R180"/>
<smd name="20" x="3.25" y="-0.25" dx="2" dy="0.25" layer="1" rot="R180"/>
<smd name="21" x="3.25" y="0.25" dx="2" dy="0.25" layer="1" rot="R180"/>
<smd name="22" x="3.25" y="0.75" dx="2" dy="0.25" layer="1" rot="R180"/>
<smd name="23" x="3.25" y="1.25" dx="2" dy="0.25" layer="1" rot="R180"/>
<smd name="24" x="3.25" y="1.75" dx="2" dy="0.25" layer="1" rot="R180"/>
<smd name="9" x="-1.75" y="-3.25" dx="2" dy="0.25" layer="1" rot="R90"/>
<smd name="10" x="-1.25" y="-3.25" dx="2" dy="0.25" layer="1" rot="R90"/>
<smd name="11" x="-0.75" y="-3.25" dx="2" dy="0.25" layer="1" rot="R90"/>
<smd name="12" x="-0.25" y="-3.25" dx="2" dy="0.25" layer="1" rot="R90"/>
<smd name="13" x="0.25" y="-3.25" dx="2" dy="0.25" layer="1" rot="R90"/>
<smd name="14" x="0.75" y="-3.25" dx="2" dy="0.25" layer="1" rot="R90"/>
<smd name="15" x="1.25" y="-3.25" dx="2" dy="0.25" layer="1" rot="R90"/>
<smd name="16" x="1.75" y="-3.25" dx="2" dy="0.25" layer="1" rot="R90"/>
<smd name="25" x="1.75" y="3.25" dx="2" dy="0.25" layer="1" rot="R270"/>
<smd name="26" x="1.25" y="3.25" dx="2" dy="0.25" layer="1" rot="R270"/>
<smd name="27" x="0.75" y="3.25" dx="2" dy="0.25" layer="1" rot="R270"/>
<smd name="28" x="0.25" y="3.25" dx="2" dy="0.25" layer="1" rot="R270"/>
<smd name="29" x="-0.25" y="3.25" dx="2" dy="0.25" layer="1" rot="R270"/>
<smd name="30" x="-0.75" y="3.25" dx="2" dy="0.25" layer="1" rot="R270"/>
<smd name="31" x="-1.25" y="3.25" dx="2" dy="0.25" layer="1" rot="R270"/>
<smd name="32" x="-1.75" y="3.25" dx="2" dy="0.25" layer="1" rot="R270"/>
<text x="-4.345" y="5.035" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.495" y="-6.9051" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-3.9" y1="-0.3999" x2="-2.4" y2="-0.1" layer="51"/>
<rectangle x1="-3.9" y1="-0.8999" x2="-2.4" y2="-0.6001" layer="51"/>
<rectangle x1="-3.9" y1="-1.3999" x2="-2.4" y2="-1.1001" layer="51"/>
<rectangle x1="-3.9" y1="0.1001" x2="-2.4" y2="0.3999" layer="51"/>
<rectangle x1="-3.9" y1="0.6001" x2="-2.4" y2="0.8999" layer="51"/>
<rectangle x1="-3.9" y1="-1.8999" x2="-2.4" y2="-1.6001" layer="51"/>
<rectangle x1="-3.9" y1="1.1001" x2="-2.4" y2="1.3999" layer="51"/>
<rectangle x1="-3.9" y1="1.6001" x2="-2.4" y2="1.8999" layer="51"/>
<rectangle x1="2.4" y1="0.1" x2="3.9" y2="0.3998" layer="51" rot="R180"/>
<rectangle x1="2.4" y1="0.6001" x2="3.9" y2="0.8999" layer="51" rot="R180"/>
<rectangle x1="2.4" y1="1.1001" x2="3.9" y2="1.3999" layer="51" rot="R180"/>
<rectangle x1="2.4" y1="-0.3999" x2="3.9" y2="-0.1001" layer="51" rot="R180"/>
<rectangle x1="2.4" y1="-0.8999" x2="3.9" y2="-0.6001" layer="51" rot="R180"/>
<rectangle x1="2.4" y1="1.6001" x2="3.9" y2="1.8999" layer="51" rot="R180"/>
<rectangle x1="2.4" y1="-1.3999" x2="3.9" y2="-1.1001" layer="51" rot="R180"/>
<rectangle x1="2.4" y1="-1.8999" x2="3.9" y2="-1.6001" layer="51" rot="R180"/>
<rectangle x1="-0.5001" y1="-3.2999" x2="0.9999" y2="-3.0001" layer="51" rot="R90"/>
<rectangle x1="0" y1="-3.2999" x2="1.5" y2="-3.0001" layer="51" rot="R90"/>
<rectangle x1="0.5" y1="-3.2999" x2="2" y2="-3.0001" layer="51" rot="R90"/>
<rectangle x1="-1" y1="-3.2999" x2="0.5" y2="-3.0001" layer="51" rot="R90"/>
<rectangle x1="-1.5" y1="-3.2999" x2="0" y2="-3.0001" layer="51" rot="R90"/>
<rectangle x1="1" y1="-3.2999" x2="2.5" y2="-3.0001" layer="51" rot="R90"/>
<rectangle x1="-2" y1="-3.2999" x2="-0.5" y2="-3.0001" layer="51" rot="R90"/>
<rectangle x1="-2.5" y1="-3.2999" x2="-1" y2="-3.0001" layer="51" rot="R90"/>
<rectangle x1="-0.9999" y1="3.0001" x2="0.5001" y2="3.2999" layer="51" rot="R270"/>
<rectangle x1="-1.5" y1="3.0001" x2="0" y2="3.2999" layer="51" rot="R270"/>
<rectangle x1="-2" y1="3.0001" x2="-0.5" y2="3.2999" layer="51" rot="R270"/>
<rectangle x1="-0.5" y1="3.0001" x2="1" y2="3.2999" layer="51" rot="R270"/>
<rectangle x1="0" y1="3.0001" x2="1.5" y2="3.2999" layer="51" rot="R270"/>
<rectangle x1="-2.5" y1="3.0001" x2="-1" y2="3.2999" layer="51" rot="R270"/>
<rectangle x1="0.5" y1="3.0001" x2="2" y2="3.2999" layer="51" rot="R270"/>
<rectangle x1="1" y1="3.0001" x2="2.5" y2="3.2999" layer="51" rot="R270"/>
</package>
</packages>
<symbols>
<symbol name="LSI2032">
<wire x1="-10.16" y1="22.86" x2="10.16" y2="22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="22.86" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="-10.16" y2="22.86" width="0.254" layer="94"/>
<text x="-10.16" y="24.13" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="-12.7" y="20.32" length="short"/>
<pin name="VL" x="-12.7" y="17.78" length="short"/>
<pin name="D+" x="-12.7" y="15.24" length="short"/>
<pin name="D-" x="-12.7" y="12.7" length="short"/>
<pin name="VBCOMP" x="-12.7" y="10.16" length="short"/>
<pin name="X0" x="-12.7" y="7.62" length="short"/>
<pin name="X1" x="-12.7" y="5.08" length="short"/>
<pin name="INT" x="-12.7" y="2.54" length="short"/>
<pin name="RES" x="-12.7" y="0" length="short"/>
<pin name="GPX" x="-12.7" y="-2.54" length="short"/>
<pin name="MOSI" x="-12.7" y="-5.08" length="short"/>
<pin name="MISO" x="-12.7" y="-7.62" length="short"/>
<pin name="SCK" x="-12.7" y="-10.16" length="short"/>
<pin name="SS" x="-12.7" y="-12.7" length="short"/>
<pin name="GND1" x="-12.7" y="-15.24" length="short"/>
<pin name="GND2" x="-12.7" y="-17.78" length="short"/>
<pin name="GPIN0" x="12.7" y="20.32" length="short" rot="R180"/>
<pin name="GPIN1" x="12.7" y="17.78" length="short" rot="R180"/>
<pin name="GPIN2" x="12.7" y="15.24" length="short" rot="R180"/>
<pin name="GPIN3" x="12.7" y="12.7" length="short" rot="R180"/>
<pin name="GPIN4" x="12.7" y="10.16" length="short" rot="R180"/>
<pin name="GPIN5" x="12.7" y="7.62" length="short" rot="R180"/>
<pin name="GPIN6" x="12.7" y="5.08" length="short" rot="R180"/>
<pin name="GPIN7" x="12.7" y="2.54" length="short" rot="R180"/>
<pin name="GOUT0" x="12.7" y="0" length="short" rot="R180"/>
<pin name="GOUT1" x="12.7" y="-2.54" length="short" rot="R180"/>
<pin name="GOUT2" x="12.7" y="-5.08" length="short" rot="R180"/>
<pin name="GOUT3" x="12.7" y="-7.62" length="short" rot="R180"/>
<pin name="GOUT4" x="12.7" y="-10.16" length="short" rot="R180"/>
<pin name="GOUT5" x="12.7" y="-12.7" length="short" rot="R180"/>
<pin name="GOUT6" x="12.7" y="-15.24" length="short" rot="R180"/>
<pin name="GOUT7" x="12.7" y="-17.78" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="2064VET44" prefix="IC" uservalue="yes">
<description>&lt;b&gt;LATTICE PROGRAMMABLE DEVICE&lt;/b&gt;&lt;p&gt;
Source: http://www.latticesemi.com/lit/docs/datasheets/cpld/2064v.pdf / 2064ve.pdf</description>
<gates>
<gate name="IO" symbol="LSI2032" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="TQFP44">
<connects>
<connect gate="IO" pin="D+" pad="21"/>
<connect gate="IO" pin="D-" pad="20"/>
<connect gate="IO" pin="GND1" pad="3"/>
<connect gate="IO" pin="GND2" pad="19"/>
<connect gate="IO" pin="GOUT0" pad="4"/>
<connect gate="IO" pin="GOUT1" pad="5"/>
<connect gate="IO" pin="GOUT2" pad="6"/>
<connect gate="IO" pin="GOUT3" pad="7"/>
<connect gate="IO" pin="GOUT4" pad="8"/>
<connect gate="IO" pin="GOUT5" pad="9"/>
<connect gate="IO" pin="GOUT6" pad="10"/>
<connect gate="IO" pin="GOUT7" pad="11"/>
<connect gate="IO" pin="GPIN0" pad="26"/>
<connect gate="IO" pin="GPIN1" pad="27"/>
<connect gate="IO" pin="GPIN2" pad="28"/>
<connect gate="IO" pin="GPIN3" pad="29"/>
<connect gate="IO" pin="GPIN4" pad="30"/>
<connect gate="IO" pin="GPIN5" pad="31"/>
<connect gate="IO" pin="GPIN6" pad="32"/>
<connect gate="IO" pin="GPIN7" pad="1"/>
<connect gate="IO" pin="GPX" pad="17"/>
<connect gate="IO" pin="INT" pad="18"/>
<connect gate="IO" pin="MISO" pad="15"/>
<connect gate="IO" pin="MOSI" pad="16"/>
<connect gate="IO" pin="RES" pad="12"/>
<connect gate="IO" pin="SCK" pad="13"/>
<connect gate="IO" pin="SS" pad="14"/>
<connect gate="IO" pin="VBCOMP" pad="22"/>
<connect gate="IO" pin="VCC" pad="23"/>
<connect gate="IO" pin="VL" pad="2"/>
<connect gate="IO" pin="X0" pad="25"/>
<connect gate="IO" pin="X1" pad="24"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ATmega328">
<packages>
<package name="ATMEGA328SMD">
<wire x1="-3.5" y1="-3.5" x2="3.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="3.5" y1="-3.5" x2="3.5" y2="3.5" width="0.127" layer="21"/>
<wire x1="3.5" y1="3.5" x2="-3.5" y2="3.5" width="0.127" layer="21"/>
<wire x1="-3.5" y1="3.5" x2="-3.5" y2="-3.5" width="0.127" layer="21"/>
<circle x="-2.8" y="2.8" radius="0.4242" width="0.127" layer="21"/>
<smd name="P$1" x="-4.3" y="2.8" dx="1.77" dy="0.435" layer="1"/>
<smd name="P$2" x="-4.3" y="2" dx="1.77" dy="0.435" layer="1"/>
<smd name="P$3" x="-4.3" y="1.2" dx="1.77" dy="0.435" layer="1"/>
<smd name="P$4" x="-4.3" y="0.4" dx="1.77" dy="0.435" layer="1"/>
<smd name="P$5" x="-4.3" y="-0.4" dx="1.77" dy="0.435" layer="1"/>
<smd name="P$6" x="-4.3" y="-1.2" dx="1.77" dy="0.435" layer="1"/>
<smd name="P$7" x="-4.3" y="-2" dx="1.77" dy="0.435" layer="1"/>
<smd name="P$8" x="-4.3" y="-2.8" dx="1.77" dy="0.435" layer="1"/>
<smd name="P$9" x="-2.8" y="-4.3" dx="1.77" dy="0.435" layer="1" rot="R90"/>
<smd name="P$10" x="-2" y="-4.3" dx="1.77" dy="0.435" layer="1" rot="R90"/>
<smd name="P$11" x="-1.2" y="-4.3" dx="1.77" dy="0.435" layer="1" rot="R90"/>
<smd name="P$12" x="-0.4" y="-4.3" dx="1.77" dy="0.435" layer="1" rot="R90"/>
<smd name="P$13" x="0.4" y="-4.3" dx="1.77" dy="0.435" layer="1" rot="R90"/>
<smd name="P$14" x="1.2" y="-4.3" dx="1.77" dy="0.435" layer="1" rot="R90"/>
<smd name="P$15" x="2" y="-4.3" dx="1.77" dy="0.435" layer="1" rot="R90"/>
<smd name="P$16" x="2.8" y="-4.3" dx="1.77" dy="0.435" layer="1" rot="R90"/>
<smd name="P$17" x="4.3" y="-2.8" dx="1.77" dy="0.435" layer="1" rot="R180"/>
<smd name="P$18" x="4.3" y="-2" dx="1.77" dy="0.435" layer="1" rot="R180"/>
<smd name="P$19" x="4.3" y="-1.2" dx="1.77" dy="0.435" layer="1" rot="R180"/>
<smd name="P$20" x="4.3" y="-0.4" dx="1.77" dy="0.435" layer="1" rot="R180"/>
<smd name="P$21" x="4.3" y="0.4" dx="1.77" dy="0.435" layer="1" rot="R180"/>
<smd name="P$22" x="4.3" y="1.2" dx="1.77" dy="0.435" layer="1" rot="R180"/>
<smd name="P$23" x="4.3" y="2" dx="1.77" dy="0.435" layer="1" rot="R180"/>
<smd name="P$24" x="4.3" y="2.8" dx="1.77" dy="0.435" layer="1" rot="R180"/>
<smd name="P$25" x="2.8" y="4.3" dx="1.77" dy="0.435" layer="1" rot="R270"/>
<smd name="P$26" x="2" y="4.3" dx="1.77" dy="0.435" layer="1" rot="R270"/>
<smd name="P$27" x="1.2" y="4.3" dx="1.77" dy="0.435" layer="1" rot="R270"/>
<smd name="P$28" x="0.4" y="4.3" dx="1.77" dy="0.435" layer="1" rot="R270"/>
<smd name="P$29" x="-0.4" y="4.3" dx="1.77" dy="0.435" layer="1" rot="R270"/>
<smd name="P$30" x="-1.2" y="4.3" dx="1.77" dy="0.435" layer="1" rot="R270"/>
<smd name="P$31" x="-2" y="4.3" dx="1.77" dy="0.435" layer="1" rot="R270"/>
<smd name="P$32" x="-2.8" y="4.3" dx="1.77" dy="0.435" layer="1" rot="R270"/>
<rectangle x1="-4.5" y1="0.2" x2="-3.5" y2="0.6" layer="21"/>
<rectangle x1="-4.5" y1="1" x2="-3.5" y2="1.4" layer="21"/>
<rectangle x1="-4.5" y1="1.8" x2="-3.5" y2="2.2" layer="21"/>
<rectangle x1="-4.5" y1="2.6" x2="-3.5" y2="3" layer="21"/>
<rectangle x1="-4.5" y1="-3" x2="-3.5" y2="-2.6" layer="21"/>
<rectangle x1="-4.5" y1="-2.2" x2="-3.5" y2="-1.8" layer="21"/>
<rectangle x1="-4.5" y1="-1.4" x2="-3.5" y2="-1" layer="21"/>
<rectangle x1="-4.5" y1="-0.6" x2="-3.5" y2="-0.2" layer="21"/>
<rectangle x1="3.5" y1="0.2" x2="4.5" y2="0.6" layer="21"/>
<rectangle x1="3.5" y1="1" x2="4.5" y2="1.4" layer="21"/>
<rectangle x1="3.5" y1="1.8" x2="4.5" y2="2.2" layer="21"/>
<rectangle x1="3.5" y1="2.6" x2="4.5" y2="3" layer="21"/>
<rectangle x1="3.5" y1="-3" x2="4.5" y2="-2.6" layer="21"/>
<rectangle x1="3.5" y1="-2.2" x2="4.5" y2="-1.8" layer="21"/>
<rectangle x1="3.5" y1="-1.4" x2="4.5" y2="-1" layer="21"/>
<rectangle x1="3.5" y1="-0.6" x2="4.5" y2="-0.2" layer="21"/>
<rectangle x1="-0.9" y1="-4.2" x2="0.1" y2="-3.8" layer="21" rot="R90"/>
<rectangle x1="-1.7" y1="-4.2" x2="-0.7" y2="-3.8" layer="21" rot="R90"/>
<rectangle x1="-2.5" y1="-4.2" x2="-1.5" y2="-3.8" layer="21" rot="R90"/>
<rectangle x1="-3.3" y1="-4.2" x2="-2.3" y2="-3.8" layer="21" rot="R90"/>
<rectangle x1="2.3" y1="-4.2" x2="3.3" y2="-3.8" layer="21" rot="R90"/>
<rectangle x1="1.5" y1="-4.2" x2="2.5" y2="-3.8" layer="21" rot="R90"/>
<rectangle x1="0.7" y1="-4.2" x2="1.7" y2="-3.8" layer="21" rot="R90"/>
<rectangle x1="-0.1" y1="-4.2" x2="0.9" y2="-3.8" layer="21" rot="R90"/>
<rectangle x1="-0.9" y1="3.8" x2="0.1" y2="4.2" layer="21" rot="R90"/>
<rectangle x1="-1.7" y1="3.8" x2="-0.7" y2="4.2" layer="21" rot="R90"/>
<rectangle x1="-2.5" y1="3.8" x2="-1.5" y2="4.2" layer="21" rot="R90"/>
<rectangle x1="-3.3" y1="3.8" x2="-2.3" y2="4.2" layer="21" rot="R90"/>
<rectangle x1="2.3" y1="3.8" x2="3.3" y2="4.2" layer="21" rot="R90"/>
<rectangle x1="1.5" y1="3.8" x2="2.5" y2="4.2" layer="21" rot="R90"/>
<rectangle x1="0.7" y1="3.8" x2="1.7" y2="4.2" layer="21" rot="R90"/>
<rectangle x1="-0.1" y1="3.8" x2="0.9" y2="4.2" layer="21" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="ATMEGA328SMD">
<wire x1="-19.05" y1="21.59" x2="-19.05" y2="-21.59" width="0.254" layer="94"/>
<wire x1="-19.05" y1="-21.59" x2="19.05" y2="-21.59" width="0.254" layer="94"/>
<wire x1="19.05" y1="-21.59" x2="19.05" y2="21.59" width="0.254" layer="94"/>
<wire x1="19.05" y1="21.59" x2="-19.05" y2="21.59" width="0.254" layer="94"/>
<text x="-3.81" y="22.86" size="1.27" layer="94">&gt;NAME</text>
<text x="-3.81" y="-24.13" size="1.27" layer="94">&gt;VALUE</text>
<pin name="PD3(INT1)" x="-24.13" y="19.05" length="middle"/>
<pin name="PD4(XCK/T0)" x="-24.13" y="16.51" length="middle"/>
<pin name="GND1" x="-24.13" y="13.97" length="middle" direction="sup"/>
<pin name="VCC1" x="-24.13" y="11.43" length="middle" direction="pwr"/>
<pin name="GND2" x="-24.13" y="8.89" length="middle" direction="sup"/>
<pin name="VCC2" x="-24.13" y="6.35" length="middle" direction="pwr"/>
<pin name="PB6(XTAL1/TOSC1)" x="-24.13" y="3.81" length="middle"/>
<pin name="PB7(XTAL2/TOSC2)" x="-24.13" y="1.27" length="middle"/>
<pin name="PD5(T1)" x="-24.13" y="-1.27" length="middle"/>
<pin name="PD6(AIN0)" x="-24.13" y="-3.81" length="middle"/>
<pin name="PD7(AIN1)" x="-24.13" y="-6.35" length="middle"/>
<pin name="PB0(ICP)" x="-24.13" y="-8.89" length="middle"/>
<pin name="PB1(OC1A)" x="-24.13" y="-11.43" length="middle"/>
<pin name="PB2(SS/OC1B)" x="-24.13" y="-13.97" length="middle"/>
<pin name="PB3(MOSI/OC2)" x="-24.13" y="-16.51" length="middle"/>
<pin name="PB4(MISO)" x="-24.13" y="-19.05" length="middle"/>
<pin name="PB5(SCK)" x="24.13" y="-19.05" length="middle" rot="R180"/>
<pin name="AVCC" x="24.13" y="-16.51" length="middle" direction="pwr" rot="R180"/>
<pin name="ADC6" x="24.13" y="-13.97" length="middle" rot="R180"/>
<pin name="AREF" x="24.13" y="-11.43" length="middle" rot="R180"/>
<pin name="GND3" x="24.13" y="-8.89" length="middle" direction="sup" rot="R180"/>
<pin name="ADC7" x="24.13" y="-6.35" length="middle" rot="R180"/>
<pin name="PC0(ADC0)" x="24.13" y="-3.81" length="middle" rot="R180"/>
<pin name="PC1(ADC1)" x="24.13" y="-1.27" length="middle" rot="R180"/>
<pin name="PC2(ADC2)" x="24.13" y="1.27" length="middle" rot="R180"/>
<pin name="PC3(ADC3)" x="24.13" y="3.81" length="middle" rot="R180"/>
<pin name="PC4(ADC4/SDA)" x="24.13" y="6.35" length="middle" rot="R180"/>
<pin name="PC5(ADC5/SCL)" x="24.13" y="8.89" length="middle" rot="R180"/>
<pin name="PC6(RESET)" x="24.13" y="11.43" length="middle" rot="R180"/>
<pin name="PD0(RXD)" x="24.13" y="13.97" length="middle" rot="R180"/>
<pin name="PD1(TXD)" x="24.13" y="16.51" length="middle" rot="R180"/>
<pin name="PD2(INT0)" x="24.13" y="19.05" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA328SMD">
<gates>
<gate name="G$1" symbol="ATMEGA328SMD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ATMEGA328SMD">
<connects>
<connect gate="G$1" pin="ADC6" pad="P$19"/>
<connect gate="G$1" pin="ADC7" pad="P$22"/>
<connect gate="G$1" pin="AREF" pad="P$20"/>
<connect gate="G$1" pin="AVCC" pad="P$18"/>
<connect gate="G$1" pin="GND1" pad="P$3"/>
<connect gate="G$1" pin="GND2" pad="P$5"/>
<connect gate="G$1" pin="GND3" pad="P$21"/>
<connect gate="G$1" pin="PB0(ICP)" pad="P$12"/>
<connect gate="G$1" pin="PB1(OC1A)" pad="P$13"/>
<connect gate="G$1" pin="PB2(SS/OC1B)" pad="P$14"/>
<connect gate="G$1" pin="PB3(MOSI/OC2)" pad="P$15"/>
<connect gate="G$1" pin="PB4(MISO)" pad="P$16"/>
<connect gate="G$1" pin="PB5(SCK)" pad="P$17"/>
<connect gate="G$1" pin="PB6(XTAL1/TOSC1)" pad="P$7"/>
<connect gate="G$1" pin="PB7(XTAL2/TOSC2)" pad="P$8"/>
<connect gate="G$1" pin="PC0(ADC0)" pad="P$23"/>
<connect gate="G$1" pin="PC1(ADC1)" pad="P$24"/>
<connect gate="G$1" pin="PC2(ADC2)" pad="P$25"/>
<connect gate="G$1" pin="PC3(ADC3)" pad="P$26"/>
<connect gate="G$1" pin="PC4(ADC4/SDA)" pad="P$27"/>
<connect gate="G$1" pin="PC5(ADC5/SCL)" pad="P$28"/>
<connect gate="G$1" pin="PC6(RESET)" pad="P$29"/>
<connect gate="G$1" pin="PD0(RXD)" pad="P$30"/>
<connect gate="G$1" pin="PD1(TXD)" pad="P$31"/>
<connect gate="G$1" pin="PD2(INT0)" pad="P$32"/>
<connect gate="G$1" pin="PD3(INT1)" pad="P$1"/>
<connect gate="G$1" pin="PD4(XCK/T0)" pad="P$2"/>
<connect gate="G$1" pin="PD5(T1)" pad="P$9"/>
<connect gate="G$1" pin="PD6(AIN0)" pad="P$10"/>
<connect gate="G$1" pin="PD7(AIN1)" pad="P$11"/>
<connect gate="G$1" pin="VCC1" pad="P$4"/>
<connect gate="G$1" pin="VCC2" pad="P$6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<packages>
<package name="SJW">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.524" x2="-1.905" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.524" x2="2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="1.27" x2="-1.905" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-1.27" x2="-1.905" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="1.905" y1="-1.524" x2="2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.159" y1="-1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-1.27" x2="-2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.524" x2="1.905" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0" x2="2.032" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0" x2="-2.032" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.1524" layer="51" curve="-180"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="51" curve="180"/>
<smd name="1" x="-1.27" y="0" dx="1.27" dy="2.54" layer="1"/>
<smd name="2" x="1.27" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="-2.159" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="0.762" y1="-0.762" x2="1.016" y2="0.762" layer="51"/>
<rectangle x1="1.016" y1="-0.635" x2="1.27" y2="0.635" layer="51"/>
<rectangle x1="1.27" y1="-0.508" x2="1.397" y2="0.508" layer="51"/>
<rectangle x1="1.397" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.016" y1="-0.762" x2="-0.762" y2="0.762" layer="51"/>
<rectangle x1="-1.27" y1="-0.635" x2="-1.016" y2="0.635" layer="51"/>
<rectangle x1="-1.397" y1="-0.508" x2="-1.27" y2="0.508" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.397" y2="0.254" layer="51"/>
<rectangle x1="0.9652" y1="-0.7112" x2="1.0922" y2="-0.5842" layer="51"/>
<rectangle x1="1.3462" y1="-0.3556" x2="1.4732" y2="-0.2286" layer="51"/>
<rectangle x1="1.3462" y1="0.2032" x2="1.4732" y2="0.3302" layer="51"/>
<rectangle x1="0.9652" y1="0.5842" x2="1.0922" y2="0.7112" layer="51"/>
<rectangle x1="-1.0922" y1="-0.7112" x2="-0.9652" y2="-0.5842" layer="51"/>
<rectangle x1="-1.4478" y1="-0.3302" x2="-1.3208" y2="-0.2032" layer="51"/>
<rectangle x1="-1.4732" y1="0.2032" x2="-1.3462" y2="0.3302" layer="51"/>
<rectangle x1="-1.1176" y1="0.5842" x2="-0.9906" y2="0.7112" layer="51"/>
</package>
<package name="SJ">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="1.397" y1="-1.016" x2="-1.397" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.397" y1="1.016" x2="1.651" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.651" y1="0.762" x2="-1.397" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.651" y1="-0.762" x2="-1.397" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="1.397" y1="-1.016" x2="1.651" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-0.762" x2="-1.651" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.016" x2="1.397" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0" x2="1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0" x2="-1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.127" x2="-0.254" y2="0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<wire x1="0.254" y1="0.127" x2="0.254" y2="-0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<smd name="1" x="-0.4" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.4" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.651" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.4001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="-0.0762" y1="-0.9144" x2="0.0762" y2="0.9144" layer="29"/>
</package>
</packages>
<symbols>
<symbol name="SJ">
<wire x1="0.381" y1="0.635" x2="0.381" y2="-0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="-0.381" y1="-0.635" x2="-0.381" y2="0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.651" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SJ" prefix="SJ" uservalue="yes">
<description>SMD solder &lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="SJ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SJ">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="W" package="SJW">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="TACT">
<packages>
<package name="B3F-10XX">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.302" y1="-0.762" x2="3.048" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.762" x2="-3.048" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="1.27" y2="3.048" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="-1.27" y2="-2.794" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="1.143" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-1.27" y1="-2.794" x2="-1.27" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-3.048" x2="-1.27" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.159" y1="3.048" x2="1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="1.143" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-0.762" x2="3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="0.762" x2="-3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="1.27" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.286" x2="-1.27" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="-0.508" x2="-2.413" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="0.508" x2="-2.159" y2="-0.381" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.1524" layer="21"/>
<circle x="-2.159" y="-2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="-2.032" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="-2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.635" width="0.0508" layer="51"/>
<circle x="0" y="0" radius="0.254" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="2.54" drill="1.3"/>
<pad name="3" x="-3.81" y="-2.54" drill="1.3"/>
<pad name="2" x="3.81" y="2.54" drill="1.3"/>
<pad name="4" x="3.81" y="-2.54" drill="1.3"/>
<text x="-3.048" y="3.683" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.048" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.318" y="1.651" size="1.27" layer="51" ratio="10">1</text>
<text x="3.556" y="1.524" size="1.27" layer="51" ratio="10">2</text>
<text x="-4.572" y="-2.794" size="1.27" layer="51" ratio="10">3</text>
<text x="3.556" y="-2.794" size="1.27" layer="51" ratio="10">4</text>
</package>
<package name="SENGOKU">
<wire x1="-1.5" y1="-2.5" x2="1.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="-1.5" x2="2.5" y2="1.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="2.5" x2="-1.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1.5" x2="-2.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="1.5" x2="1.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1.5" x2="-1.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-1.5" x2="-1.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="-1.5" x2="1.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="-1" y1="1.8" x2="1" y2="1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="1" x2="1.8" y2="-1" width="0.127" layer="21"/>
<wire x1="1" y1="-1.8" x2="-1" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-1.8" y1="-1" x2="-1.8" y2="1" width="0.127" layer="21"/>
<wire x1="-1.8" y1="1" x2="-1" y2="1.8" width="0.127" layer="21"/>
<wire x1="1" y1="1.8" x2="1.8" y2="1" width="0.127" layer="21"/>
<wire x1="1.8" y1="-1" x2="1" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-1.8" y1="-1" x2="-1" y2="-1.8" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.0965" width="0.127" layer="21"/>
<smd name="1" x="-3" y="1.8" dx="1.77" dy="0.835" layer="1"/>
<smd name="2" x="3" y="1.8" dx="1.77" dy="0.835" layer="1"/>
<smd name="3" x="-3" y="-1.8" dx="1.77" dy="0.835" layer="1"/>
<smd name="4" x="3" y="-1.8" dx="1.77" dy="0.835" layer="1"/>
<text x="-3.2" y="2.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.3" y="-4.1" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3" y1="1.5" x2="-2" y2="2" layer="21"/>
<rectangle x1="-3" y1="-2" x2="-2" y2="-1.5" layer="21"/>
<rectangle x1="2" y1="-2" x2="3" y2="-1.5" layer="21"/>
<rectangle x1="2" y1="1.5" x2="3" y2="2" layer="21"/>
</package>
<package name="TSKB-2JL">
<wire x1="-1.35" y1="2.75" x2="1.35" y2="2.75" width="0.127" layer="21"/>
<wire x1="2.75" y1="1.35" x2="2.75" y2="-1.35" width="0.127" layer="21"/>
<wire x1="1.35" y1="-2.75" x2="-1.35" y2="-2.75" width="0.127" layer="21"/>
<wire x1="-2.75" y1="-1.35" x2="-2.75" y2="1.35" width="0.127" layer="21"/>
<wire x1="2.75" y1="1.35" x2="2.5" y2="1.6" width="0.127" layer="21"/>
<wire x1="2.5" y1="1.6" x2="2" y2="2.1" width="0.127" layer="21"/>
<wire x1="2" y1="2.1" x2="1.35" y2="2.75" width="0.127" layer="21"/>
<wire x1="-1.35" y1="2.75" x2="-2" y2="2.1" width="0.127" layer="21"/>
<wire x1="-2" y1="2.1" x2="-2.5" y2="1.6" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1.6" x2="-2.75" y2="1.35" width="0.127" layer="21"/>
<wire x1="-2.75" y1="-1.35" x2="-2.5" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-1.6" x2="-2" y2="-2.1" width="0.127" layer="21"/>
<wire x1="-2" y1="-2.1" x2="-1.35" y2="-2.75" width="0.127" layer="21"/>
<wire x1="2.75" y1="-1.35" x2="2.5" y2="-1.6" width="0.127" layer="21"/>
<wire x1="2.5" y1="-1.6" x2="2" y2="-2.1" width="0.127" layer="21"/>
<wire x1="2" y1="-2.1" x2="1.35" y2="-2.75" width="0.127" layer="21"/>
<wire x1="-2" y1="2.1" x2="-3.2" y2="2.1" width="0.127" layer="21"/>
<wire x1="-3.2" y1="2.1" x2="-3.2" y2="1.6" width="0.127" layer="21"/>
<wire x1="2" y1="-2.1" x2="3.2" y2="-2.1" width="0.127" layer="21"/>
<wire x1="2" y1="2.1" x2="3.2" y2="2.1" width="0.127" layer="21"/>
<wire x1="3.2" y1="2.1" x2="3.2" y2="1.6" width="0.127" layer="21"/>
<wire x1="-3.2" y1="-2.1" x2="-2" y2="-2.1" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-1.6" x2="-3.2" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-3.2" y1="-1.6" x2="-3.2" y2="-2.1" width="0.127" layer="21"/>
<wire x1="2.5" y1="-1.6" x2="3.2" y2="-1.6" width="0.127" layer="21"/>
<wire x1="3.2" y1="-1.6" x2="3.2" y2="-2.1" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1.6" x2="-3.2" y2="1.6" width="0.127" layer="21"/>
<wire x1="2.5" y1="1.6" x2="3.2" y2="1.6" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.5" width="0.127" layer="21"/>
<smd name="1" x="-3" y="1.85" dx="1.6" dy="1" layer="1"/>
<smd name="2" x="3" y="1.85" dx="1.6" dy="1" layer="1"/>
<smd name="3" x="-3" y="-1.85" dx="1.6" dy="1" layer="1"/>
<smd name="4" x="3" y="-1.85" dx="1.6" dy="1" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="TS2">
<wire x1="0" y1="1.905" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-4.445" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="2.54" radius="0.127" width="0.4064" layer="94"/>
<text x="-6.35" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S" x="0" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="S1" x="2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P1" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="10-XX" prefix="S" uservalue="yes">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="TS2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B3F-10XX">
<connects>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S1" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="B3F-1000" constant="no"/>
<attribute name="OC_FARNELL" value="176432" constant="no"/>
<attribute name="OC_NEWARK" value="36M3542" constant="no"/>
</technology>
</technologies>
</device>
<device name="S" package="SENGOKU">
<connects>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S1" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AKI" package="TSKB-2JL">
<connects>
<connect gate="1" pin="P" pad="1"/>
<connect gate="1" pin="P1" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
<connect gate="1" pin="S1" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SMD">
<packages>
<package name="SMD_0603_0201">
<wire x1="-0.3" y1="-0.15" x2="-0.15" y2="-0.15" width="0" layer="21"/>
<wire x1="-0.15" y1="-0.15" x2="0.15" y2="-0.15" width="0" layer="21"/>
<wire x1="0.15" y1="-0.15" x2="0.3" y2="-0.15" width="0" layer="21"/>
<wire x1="0.3" y1="-0.15" x2="0.3" y2="0.15" width="0" layer="21"/>
<wire x1="0.3" y1="0.15" x2="0.15" y2="0.15" width="0" layer="21"/>
<wire x1="0.15" y1="0.15" x2="-0.15" y2="0.15" width="0" layer="21"/>
<wire x1="-0.15" y1="0.15" x2="-0.3" y2="0.15" width="0" layer="21"/>
<wire x1="-0.3" y1="0.15" x2="-0.3" y2="-0.15" width="0" layer="21"/>
<wire x1="-0.15" y1="0.15" x2="-0.15" y2="-0.15" width="0" layer="21"/>
<wire x1="0.15" y1="-0.15" x2="0.15" y2="0.15" width="0" layer="21"/>
<smd name="P$1" x="-0.3" y="0" dx="0.3" dy="0.3" layer="1" rot="R180"/>
<smd name="P$2" x="0.3" y="0" dx="0.3" dy="0.3" layer="1" rot="R180"/>
<text x="-3.1" y="0.35" size="1.27" layer="21">&gt;NAME</text>
<text x="-3.35" y="-1.75" size="1.27" layer="21">&gt;VALUE</text>
</package>
<package name="SMD_1005_0402">
<wire x1="-0.5" y1="-0.25" x2="-0.25" y2="-0.25" width="0" layer="21"/>
<wire x1="-0.25" y1="-0.25" x2="0.25" y2="-0.25" width="0" layer="21"/>
<wire x1="0.25" y1="-0.25" x2="0.5" y2="-0.25" width="0" layer="21"/>
<wire x1="0.5" y1="-0.25" x2="0.5" y2="0.25" width="0" layer="21"/>
<wire x1="0.5" y1="0.25" x2="0.25" y2="0.25" width="0" layer="21"/>
<wire x1="0.25" y1="0.25" x2="-0.25" y2="0.25" width="0" layer="21"/>
<wire x1="-0.25" y1="0.25" x2="-0.5" y2="0.25" width="0" layer="21"/>
<wire x1="-0.5" y1="0.25" x2="-0.5" y2="-0.25" width="0" layer="21"/>
<wire x1="-0.25" y1="0.25" x2="-0.25" y2="-0.25" width="0" layer="21"/>
<wire x1="0.25" y1="0.25" x2="0.25" y2="-0.25" width="0" layer="21"/>
<smd name="P$1" x="-0.5" y="0" dx="0.5" dy="0.5" layer="1"/>
<smd name="P$2" x="0.5" y="0" dx="0.5" dy="0.5" layer="1"/>
<text x="-3" y="0.45" size="1.27" layer="21">&gt;NAME</text>
<text x="-3.55" y="-2" size="1.27" layer="21">&gt;VALUE</text>
</package>
<package name="SMD_1608_0603">
<wire x1="-0.8" y1="-0.4" x2="-0.5" y2="-0.4" width="0" layer="21"/>
<wire x1="-0.5" y1="-0.4" x2="0.5" y2="-0.4" width="0" layer="21"/>
<wire x1="0.5" y1="-0.4" x2="0.8" y2="-0.4" width="0" layer="21"/>
<wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0" layer="21"/>
<wire x1="0.8" y1="0.4" x2="0.5" y2="0.4" width="0" layer="21"/>
<wire x1="0.5" y1="0.4" x2="-0.5" y2="0.4" width="0" layer="21"/>
<wire x1="-0.5" y1="0.4" x2="-0.8" y2="0.4" width="0" layer="21"/>
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0" layer="21"/>
<wire x1="-0.5" y1="0.4" x2="-0.5" y2="-0.4" width="0" layer="21"/>
<wire x1="0.5" y1="0.4" x2="0.5" y2="-0.4" width="0" layer="21"/>
<smd name="P$1" x="-0.8" y="0" dx="0.8" dy="0.8" layer="1" rot="R180"/>
<smd name="P$2" x="0.8" y="0" dx="0.8" dy="0.8" layer="1" rot="R180"/>
<text x="-3.3" y="0.55" size="1.27" layer="21">&gt;NAME</text>
<text x="-3.4" y="-1.95" size="1.27" layer="21">&gt;VALUE</text>
</package>
<package name="SMD_2012_0805">
<wire x1="1" y1="-0.625" x2="1" y2="0.625" width="0" layer="21"/>
<wire x1="1" y1="0.625" x2="0.6" y2="0.625" width="0" layer="21"/>
<wire x1="0.6" y1="0.625" x2="-0.6" y2="0.625" width="0" layer="21"/>
<wire x1="-0.6" y1="0.625" x2="-1" y2="0.625" width="0" layer="21"/>
<wire x1="-1" y1="0.625" x2="-1" y2="-0.625" width="0" layer="21"/>
<wire x1="1" y1="-0.625" x2="0.6" y2="-0.625" width="0" layer="21"/>
<wire x1="0.6" y1="-0.625" x2="-0.6" y2="-0.625" width="0" layer="21"/>
<wire x1="-0.6" y1="-0.625" x2="-1" y2="-0.625" width="0" layer="21"/>
<wire x1="-0.6" y1="-0.625" x2="-0.6" y2="0.625" width="0" layer="21"/>
<wire x1="0.6" y1="-0.625" x2="0.6" y2="0.625" width="0" layer="21"/>
<smd name="P$1" x="-0.9" y="0" dx="1" dy="1.25" layer="1"/>
<smd name="P$2" x="0.9" y="0" dx="1" dy="1.25" layer="1"/>
<text x="-3.1" y="0.9" size="1.27" layer="21">&gt;NAME</text>
<text x="-3.35" y="-2.3" size="1.27" layer="21">&gt;VALUE</text>
</package>
<package name="SMD_3216_1206">
<wire x1="1.6" y1="0.8" x2="1.1" y2="0.8" width="0" layer="21"/>
<wire x1="1.1" y1="0.8" x2="-1.1" y2="0.8" width="0" layer="21"/>
<wire x1="-1.1" y1="0.8" x2="-1.6" y2="0.8" width="0" layer="21"/>
<wire x1="-1.6" y1="0.8" x2="-1.6" y2="-0.8" width="0" layer="21"/>
<wire x1="-1.6" y1="-0.8" x2="-1.1" y2="-0.8" width="0" layer="21"/>
<wire x1="-1.1" y1="-0.8" x2="1.1" y2="-0.8" width="0" layer="21"/>
<wire x1="1.1" y1="-0.8" x2="1.6" y2="-0.8" width="0" layer="21"/>
<wire x1="1.6" y1="-0.8" x2="1.6" y2="0.8" width="0" layer="21"/>
<wire x1="-1.1" y1="0.8" x2="-1.1" y2="-0.8" width="0" layer="21"/>
<wire x1="1.1" y1="0.8" x2="1.1" y2="-0.8" width="0" layer="21"/>
<smd name="P$1" x="-1.7" y="0" dx="1.6" dy="1.6" layer="1"/>
<smd name="P$2" x="1.7" y="0" dx="1.6" dy="1.6" layer="1"/>
<text x="-3.25" y="1.15" size="1.27" layer="21">&gt;NAME</text>
<text x="-3.5" y="-2.55" size="1.27" layer="21">&gt;VALUE</text>
</package>
<package name="SMD_3225_1210">
<wire x1="1.6" y1="1.25" x2="1.1" y2="1.25" width="0" layer="21"/>
<wire x1="1.1" y1="1.25" x2="-1" y2="1.25" width="0" layer="21"/>
<wire x1="-1.6" y1="1.25" x2="-1.6" y2="-1.25" width="0" layer="21"/>
<wire x1="-1.6" y1="-1.25" x2="-1" y2="-1.25" width="0" layer="21"/>
<wire x1="-1" y1="-1.25" x2="1.1" y2="-1.25" width="0" layer="21"/>
<wire x1="1.1" y1="-1.25" x2="1.6" y2="-1.25" width="0" layer="21"/>
<wire x1="1.6" y1="-1.25" x2="1.6" y2="1.25" width="0" layer="21"/>
<wire x1="1.1" y1="1.25" x2="1.1" y2="-1.25" width="0" layer="21"/>
<wire x1="-1" y1="1.25" x2="-1.6" y2="1.25" width="0" layer="21"/>
<wire x1="-1" y1="1.25" x2="-1" y2="-1.25" width="0" layer="21"/>
<smd name="P$1" x="-1.8" y="0" dx="2" dy="2.5" layer="1"/>
<smd name="P$2" x="1.9" y="0" dx="2" dy="2.5" layer="1"/>
<text x="-3" y="1.75" size="1.27" layer="21">&gt;NAME</text>
<text x="-3.15" y="-3" size="1.27" layer="21">&gt;VALUE</text>
</package>
<package name="SMD_5025_2010">
<wire x1="2.5" y1="1.25" x2="-2.5" y2="1.25" width="0" layer="21"/>
<wire x1="-2.5" y1="1.25" x2="-2.5" y2="-1.25" width="0" layer="21"/>
<wire x1="-2.5" y1="-1.25" x2="2.5" y2="-1.25" width="0" layer="21"/>
<wire x1="2.5" y1="-1.25" x2="2.5" y2="1.25" width="0" layer="21"/>
<wire x1="-1.9" y1="1.25" x2="-1.9" y2="-1.25" width="0" layer="25"/>
<wire x1="1.9" y1="1.25" x2="1.9" y2="-1.25" width="0" layer="25"/>
<smd name="P$1" x="-2.7" y="0" dx="2" dy="2.5" layer="1"/>
<smd name="P$2" x="2.7" y="0" dx="2" dy="2.5" layer="1" rot="R180"/>
<text x="-3" y="1.65" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.15" y="-3" size="1.27" layer="25">&gt;VALUE</text>
</package>
<package name="SMD_3528">
<wire x1="1.75" y1="1.4" x2="1.05" y2="1.4" width="0" layer="21"/>
<wire x1="1.05" y1="1.4" x2="-1.05" y2="1.4" width="0" layer="21"/>
<wire x1="-1.05" y1="1.4" x2="-1.75" y2="1.4" width="0" layer="21"/>
<wire x1="-1.75" y1="1.4" x2="-1.75" y2="-1.4" width="0" layer="21"/>
<wire x1="-1.75" y1="-1.4" x2="-1.05" y2="-1.4" width="0" layer="21"/>
<wire x1="-1.05" y1="-1.4" x2="1.05" y2="-1.4" width="0" layer="21"/>
<wire x1="1.05" y1="-1.4" x2="1.75" y2="-1.4" width="0" layer="21"/>
<wire x1="1.75" y1="-1.4" x2="1.75" y2="1.4" width="0" layer="21"/>
<wire x1="-1.05" y1="-1.4" x2="-1.05" y2="1.4" width="0" layer="21"/>
<wire x1="1.05" y1="1.4" x2="1.05" y2="-1.4" width="0" layer="21"/>
<wire x1="-0.4" y1="1.65" x2="-1.35" y2="1.65" width="0.127" layer="21"/>
<wire x1="-0.4" y1="-1.65" x2="-0.4" y2="1.65" width="0.127" layer="21"/>
<wire x1="-0.4" y1="-1.65" x2="-1.35" y2="-1.65" width="0.127" layer="21"/>
<smd name="P$1" x="-1.65" y="0" dx="2" dy="2.8" layer="1"/>
<smd name="P$2" x="1.65" y="0" dx="2" dy="2.8" layer="1" rot="R180"/>
<text x="-2.8" y="2.1" size="1.27" layer="21">&gt;NAME</text>
<text x="-3.3" y="-3.55" size="1.27" layer="21">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="R_SMD">
<wire x1="-0.762" y1="0.508" x2="-0.508" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0.254" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0.254" y1="-0.508" x2="0.762" y2="0.508" width="0.254" layer="94"/>
<wire x1="0.762" y1="0.508" x2="1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.016" y1="-0.508" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0.508" x2="-1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<text x="-4.572" y="1.016" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.572" y="-2.794" size="1.778" layer="95">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="off" length="point"/>
<pin name="2" x="2.54" y="0" visible="off" length="point"/>
</symbol>
<symbol name="C_SMD">
<wire x1="-2.032" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="2.032" y2="0.508" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="2.032" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="0" y2="-2.54" width="0.254" layer="94"/>
<text x="2.286" y="1.016" size="1.778" layer="95">&gt;NAME</text>
<text x="2.286" y="-2.286" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="2.54" visible="off" length="point"/>
<pin name="2" x="0" y="-2.54" visible="off" length="point"/>
</symbol>
<symbol name="C_SMD_POL">
<wire x1="-2.032" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="2.032" y2="0.508" width="0.254" layer="94"/>
<wire x1="2.032" y1="-0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="-2.032" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.508" y1="1.27" x2="1.524" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="0.762" width="0.254" layer="94"/>
<text x="2.286" y="0.762" size="1.778" layer="95">&gt;NAME</text>
<text x="2.286" y="-2.032" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+" x="0" y="2.54" visible="off" length="point"/>
<pin name="-" x="0" y="-2.54" visible="off" length="point"/>
</symbol>
<symbol name="LED">
<wire x1="0" y1="2.54" x2="0" y2="-0.254" width="0.254" layer="94"/>
<wire x1="0" y1="-0.254" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="1.016" x2="0.762" y2="1.016" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.016" x2="0" y2="-0.254" width="0.254" layer="94"/>
<wire x1="0" y1="-0.254" x2="-0.762" y2="1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-0.254" x2="1.016" y2="-0.254" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0.508" x2="-1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0.762" x2="-1.778" y2="0.254" width="0.254" layer="94"/>
<pin name="A" x="0" y="2.54" visible="off" length="point"/>
<pin name="C" x="0" y="-2.54" visible="off" length="point"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R_SMD">
<gates>
<gate name="G$1" symbol="R_SMD" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="SMD_0603_0201">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1005" package="SMD_1005_0402">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1608" package="SMD_1608_0603">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="SMD_2012_0805">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3216" package="SMD_3216_1206">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3225" package="SMD_3225_1210">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5025" package="SMD_5025_2010">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C_SMD">
<gates>
<gate name="G$1" symbol="C_SMD" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="SMD_0603_0201">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1005" package="SMD_1005_0402">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1608" package="SMD_1608_0603">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="SMD_2012_0805">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3216" package="SMD_3216_1206">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3225" package="SMD_3225_1210">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5025" package="SMD_5025_2010">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="SMD_0603_0201">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1005" package="SMD_1005_0402">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1608" package="SMD_1608_0603">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="SMD_2012_0805">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3216" package="SMD_3216_1206">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3225" package="SMD_3225_1210">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5025" package="SMD_5025_2010">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C_SMD_POL">
<gates>
<gate name="G$1" symbol="C_SMD_POL" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="SMD_0603_0201">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1005" package="SMD_1005_0402">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1608" package="SMD_1608_0603">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="SMD_2012_0805">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3216" package="SMD_3216_1206">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3225" package="SMD_3225_1210">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5025" package="SMD_5025_2010">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3528" package="SMD_3528">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="crystal">
<packages>
<package name="HC49GW">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.08" y1="-6.35" x2="5.08" y2="-6.35" width="0.8128" layer="21"/>
<wire x1="4.445" y1="6.731" x2="1.016" y2="6.731" width="0.1524" layer="21"/>
<wire x1="1.016" y1="6.731" x2="-1.016" y2="6.731" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="6.731" x2="-4.445" y2="6.731" width="0.1524" layer="21"/>
<wire x1="4.445" y1="6.731" x2="5.08" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="6.096" x2="-4.445" y2="6.731" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.3302" y1="5.08" x2="-0.3302" y2="2.54" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="2.54" x2="0.3048" y2="2.54" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="2.54" x2="0.3048" y2="5.08" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.08" x2="-0.3302" y2="5.08" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="5.08" x2="0.9398" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="5.08" x2="-0.9398" y2="3.81" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="3.81" x2="2.032" y2="3.81" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="3.81" x2="0.9398" y2="2.54" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="3.81" x2="-2.032" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="3.81" x2="-0.9398" y2="2.54" width="0.3048" layer="21"/>
<wire x1="-2.413" y1="-6.604" x2="-2.413" y2="-8.255" width="0.6096" layer="51"/>
<wire x1="2.413" y1="-6.477" x2="2.413" y2="-8.382" width="0.6096" layer="51"/>
<wire x1="5.08" y1="-6.35" x2="5.08" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.096" x2="-5.08" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="0" y1="8.382" x2="0" y2="6.985" width="0.6096" layer="51"/>
<smd name="1" x="-2.413" y="-8.001" dx="1.27" dy="2.54" layer="1"/>
<smd name="2" x="2.413" y="-8.001" dx="1.27" dy="2.54" layer="1"/>
<smd name="3" x="0" y="8.001" dx="1.27" dy="2.794" layer="1"/>
<text x="-5.588" y="-5.08" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.715" y1="-8.255" x2="5.715" y2="8.255" layer="43"/>
</package>
<package name="HC49UP">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.1091" y1="1.143" x2="-3.429" y2="2.0321" width="0.0508" layer="21" curve="-55.770993"/>
<wire x1="-5.715" y1="1.143" x2="-5.715" y2="2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.032" x2="5.1091" y2="1.143" width="0.0508" layer="21" curve="-55.772485"/>
<wire x1="5.715" y1="1.143" x2="5.715" y2="2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="-3.429" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="3.429" y1="-2.032" x2="-3.429" y2="-2.032" width="0.0508" layer="21"/>
<wire x1="-3.429" y1="1.27" x2="3.429" y2="1.27" width="0.0508" layer="21"/>
<wire x1="5.461" y1="-2.413" x2="-5.461" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-0.381" x2="6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="0.381" x2="6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="6.477" y1="-0.381" x2="6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.461" y1="-2.413" x2="5.715" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.715" y1="-1.143" x2="5.715" y2="1.143" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-2.159" x2="5.715" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="3.9826" y2="-1.143" width="0.0508" layer="21" curve="25.842828"/>
<wire x1="3.429" y1="1.27" x2="3.9826" y2="1.143" width="0.0508" layer="21" curve="-25.842828"/>
<wire x1="3.429" y1="-2.032" x2="5.109" y2="-1.1429" width="0.0508" layer="21" curve="55.771157"/>
<wire x1="3.9826" y1="-1.143" x2="3.9826" y2="1.143" width="0.0508" layer="51" curve="128.314524"/>
<wire x1="5.1091" y1="-1.143" x2="5.1091" y2="1.143" width="0.0508" layer="51" curve="68.456213"/>
<wire x1="-5.1091" y1="-1.143" x2="-3.429" y2="-2.032" width="0.0508" layer="21" curve="55.772485"/>
<wire x1="-3.9826" y1="-1.143" x2="-3.9826" y2="1.143" width="0.0508" layer="51" curve="-128.314524"/>
<wire x1="-3.9826" y1="-1.143" x2="-3.429" y2="-1.27" width="0.0508" layer="21" curve="25.842828"/>
<wire x1="-3.9826" y1="1.143" x2="-3.429" y2="1.27" width="0.0508" layer="21" curve="-25.842828"/>
<wire x1="-6.477" y1="-0.381" x2="-6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.1091" y1="-1.143" x2="-5.1091" y2="1.143" width="0.0508" layer="51" curve="-68.456213"/>
<wire x1="-5.715" y1="-1.143" x2="-5.715" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-0.381" x2="-5.715" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="0.381" x2="-5.715" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-2.159" x2="-5.715" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.159" x2="-5.461" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.715" y1="-0.381" x2="-6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="0.381" x2="-6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="2.032" x2="3.429" y2="2.032" width="0.0508" layer="21"/>
<wire x1="5.461" y1="2.413" x2="-5.461" y2="2.413" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.413" x2="5.715" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.715" y1="2.159" x2="-5.461" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.635" x2="0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.635" x2="0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.635" x2="-0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.016" y2="0" width="0.0508" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.016" y2="0" width="0.0508" layer="21"/>
<smd name="1" x="-4.826" y="0" dx="5.334" dy="1.9304" layer="1"/>
<smd name="2" x="4.826" y="0" dx="5.334" dy="1.9304" layer="1"/>
<text x="-5.715" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.715" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-3.048" x2="6.604" y2="3.048" layer="43"/>
</package>
<package name="SM49">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="3.429" y1="-2.032" x2="5.109" y2="-1.1429" width="0.0508" layer="21" curve="55.771157"/>
<wire x1="5.715" y1="-1.143" x2="5.715" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-5.1091" y1="-1.143" x2="-3.429" y2="-2.032" width="0.0508" layer="21" curve="55.772485"/>
<wire x1="-5.715" y1="-1.143" x2="-5.715" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.27" x2="3.429" y2="1.27" width="0.0508" layer="21"/>
<wire x1="-3.429" y1="2.032" x2="3.429" y2="2.032" width="0.0508" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="-3.429" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-5.461" y1="2.413" x2="5.461" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="0.381" x2="-6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-0.381" x2="-6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.381" x2="-6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="2.159" x2="-5.461" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.715" y1="1.143" x2="-5.715" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="2.159" x2="-5.715" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-3.9826" y1="1.143" x2="-3.429" y2="1.27" width="0.0508" layer="21" curve="-25.842828"/>
<wire x1="-3.9826" y1="-1.143" x2="-3.429" y2="-1.27" width="0.0508" layer="21" curve="25.842828"/>
<wire x1="-5.1091" y1="1.143" x2="-3.429" y2="2.0321" width="0.0508" layer="21" curve="-55.770993"/>
<wire x1="-3.9826" y1="1.143" x2="-3.9826" y2="-1.143" width="0.0508" layer="51" curve="128.314524"/>
<wire x1="-5.1091" y1="1.143" x2="-5.1091" y2="-1.143" width="0.0508" layer="51" curve="68.456213"/>
<wire x1="3.429" y1="2.032" x2="5.1091" y2="1.143" width="0.0508" layer="21" curve="-55.772485"/>
<wire x1="3.9826" y1="1.143" x2="3.9826" y2="-1.143" width="0.0508" layer="51" curve="-128.314524"/>
<wire x1="3.429" y1="1.27" x2="3.9826" y2="1.143" width="0.0508" layer="21" curve="-25.842828"/>
<wire x1="3.429" y1="-1.27" x2="3.9826" y2="-1.143" width="0.0508" layer="21" curve="25.842828"/>
<wire x1="6.477" y1="0.381" x2="6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.1091" y1="1.143" x2="5.1091" y2="-1.143" width="0.0508" layer="51" curve="-68.456213"/>
<wire x1="5.715" y1="1.143" x2="5.715" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="0.381" x2="5.715" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-0.381" x2="5.715" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="5.715" y1="2.159" x2="5.715" y2="1.143" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.413" x2="5.715" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="5.715" y1="0.381" x2="6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-0.381" x2="6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-2.032" x2="-3.429" y2="-2.032" width="0.0508" layer="21"/>
<wire x1="-5.461" y1="-2.413" x2="5.461" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.159" x2="-5.461" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="5.461" y1="-2.413" x2="5.715" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.635" x2="0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.635" x2="0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.635" x2="-0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.143" y2="0" width="0.0508" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.0508" layer="21"/>
<smd name="1" x="-4.826" y="0" dx="5.08" dy="1.778" layer="1"/>
<smd name="2" x="4.826" y="0" dx="5.08" dy="1.778" layer="1"/>
<text x="-5.715" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.715" y="-4.064" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-2.54" x2="6.604" y2="2.794" layer="43"/>
</package>
<package name="86SMX">
<description>&lt;b&gt;CRYSTAL RESONATOR&lt;/b&gt;</description>
<wire x1="-3.81" y1="1.905" x2="2.413" y2="1.905" width="0.0508" layer="21"/>
<wire x1="-3.81" y1="2.286" x2="2.413" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="2.413" y2="-1.905" width="0.0508" layer="21"/>
<wire x1="-3.81" y1="-2.286" x2="2.413" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.286" x2="-6.604" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="1.905" x2="-5.334" y2="1.016" width="0.0508" layer="51"/>
<wire x1="-5.334" y1="-1.905" x2="-3.81" y2="-1.905" width="0.0508" layer="51"/>
<wire x1="-6.35" y1="-2.286" x2="-5.969" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-2.286" x2="-4.191" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-2.286" x2="-3.81" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-2.54" x2="-4.191" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-2.2098" x2="-6.604" y2="-2.286" width="0.0508" layer="21"/>
<wire x1="-6.604" y1="-2.286" x2="-6.35" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-2.54" x2="-5.969" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="1.016" x2="-5.334" y2="-1.016" width="0.0508" layer="21"/>
<wire x1="-5.334" y1="-1.016" x2="-5.334" y2="-1.905" width="0.0508" layer="51"/>
<wire x1="-5.334" y1="-1.905" x2="-6.35" y2="-2.2098" width="0.0508" layer="51"/>
<wire x1="-4.191" y1="-2.54" x2="-4.191" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="2.54" x2="-4.191" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="1.905" x2="-3.81" y2="1.905" width="0.0508" layer="51"/>
<wire x1="-6.35" y1="2.286" x2="-5.969" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="2.286" x2="-4.191" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="2.286" x2="-3.81" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="2.286" x2="-6.35" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="2.2098" x2="-6.604" y2="2.286" width="0.0508" layer="21"/>
<wire x1="-5.969" y1="2.54" x2="-5.969" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="1.905" x2="-6.35" y2="2.2098" width="0.0508" layer="51"/>
<wire x1="-4.191" y1="2.54" x2="-4.191" y2="2.286" width="0.1524" layer="51"/>
<wire x1="6.604" y1="2.286" x2="6.604" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-1.905" x2="6.223" y2="1.905" width="0.0508" layer="21"/>
<wire x1="6.223" y1="-1.905" x2="6.604" y2="-2.286" width="0.0508" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="6.604" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-2.54" x2="5.842" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-2.286" x2="2.794" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-2.54" x2="5.842" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-2.286" x2="6.223" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.905" x2="6.223" y2="-1.905" width="0.0508" layer="51"/>
<wire x1="6.223" y1="1.905" x2="6.604" y2="2.286" width="0.0508" layer="21"/>
<wire x1="6.223" y1="2.286" x2="6.604" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.794" y1="2.54" x2="5.842" y2="2.54" width="0.1524" layer="51"/>
<wire x1="2.794" y1="2.286" x2="2.794" y2="2.54" width="0.1524" layer="51"/>
<wire x1="5.842" y1="2.54" x2="5.842" y2="2.286" width="0.1524" layer="51"/>
<wire x1="2.413" y1="1.905" x2="6.223" y2="1.905" width="0.0508" layer="51"/>
<wire x1="2.413" y1="2.286" x2="6.223" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.651" x2="-0.254" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="0.381" x2="0.254" y2="0.381" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.381" x2="0.254" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.254" y1="1.651" x2="-0.254" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.651" x2="0.635" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="0.381" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="1.016" y2="1.016" width="0.0508" layer="21"/>
<wire x1="-0.635" y1="1.651" x2="-0.635" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-1.016" y2="1.016" width="0.0508" layer="21"/>
<smd name="2" x="4.318" y="-2.286" dx="3.556" dy="2.1844" layer="1"/>
<smd name="3" x="4.318" y="2.286" dx="3.556" dy="2.1844" layer="1"/>
<smd name="1" x="-5.08" y="-2.286" dx="2.286" dy="2.1844" layer="1"/>
<smd name="4" x="-5.08" y="2.286" dx="2.286" dy="2.1844" layer="1"/>
<text x="-3.683" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.683" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MM20SS">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-2.032" y1="-1.27" x2="2.032" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="-1.778" x2="2.032" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.27" x2="-2.032" y2="1.27" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="1.778" x2="2.032" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.778" x2="-4.064" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="0.381" x2="-2.921" y2="-0.381" width="0.0508" layer="21"/>
<wire x1="-4.064" y1="-1.778" x2="-3.556" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.552" x2="-4.064" y2="-1.778" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="1.27" x2="-2.921" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-2.921" y1="1.27" x2="-2.921" y2="0.381" width="0.0508" layer="51"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-1.905" x2="-3.048" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-0.381" x2="-2.921" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="-2.921" y1="-1.27" x2="-2.032" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="-3.556" y1="-1.778" x2="-2.032" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-1.27" x2="-3.556" y2="-1.552" width="0.0508" layer="51"/>
<wire x1="-4.064" y1="1.778" x2="-3.556" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.552" x2="-4.064" y2="1.778" width="0.0508" layer="21"/>
<wire x1="-2.921" y1="1.27" x2="-3.556" y2="1.552" width="0.0508" layer="51"/>
<wire x1="-3.048" y1="1.778" x2="-3.048" y2="1.905" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="1.905" x2="-2.54" y2="1.905" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="1.778" x2="-2.032" y2="1.778" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-1.778" x2="4.064" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="4.064" y2="-1.778" width="0.0508" layer="21"/>
<wire x1="3.556" y1="-1.27" x2="3.81" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="3.556" y1="-1.778" x2="4.064" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.556" y2="1.27" width="0.0508" layer="21"/>
<wire x1="3.556" y1="1.27" x2="2.032" y2="1.27" width="0.0508" layer="51"/>
<wire x1="3.048" y1="-1.905" x2="3.048" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.778" x2="2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.905" x2="3.048" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-1.27" x2="3.556" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="2.032" y1="-1.778" x2="3.556" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="3.81" y1="1.27" x2="4.064" y2="1.778" width="0.0508" layer="21"/>
<wire x1="3.556" y1="1.778" x2="4.064" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="1.778" width="0.1524" layer="51"/>
<wire x1="3.048" y1="1.778" x2="3.048" y2="1.905" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.905" x2="3.048" y2="1.905" width="0.1524" layer="51"/>
<wire x1="2.032" y1="1.778" x2="3.556" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-0.254" x2="-0.508" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-0.254" x2="-0.508" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.254" x2="-1.778" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.254" x2="-1.778" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.635" x2="-1.143" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.635" x2="-0.508" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.635" x2="-1.143" y2="1.016" width="0.0508" layer="21"/>
<wire x1="-1.778" y1="-0.635" x2="-1.143" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.635" x2="-0.508" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.635" x2="-1.143" y2="-1.016" width="0.0508" layer="21"/>
<circle x="3.048" y="0" radius="0.254" width="0.1524" layer="21"/>
<smd name="1" x="-2.794" y="-1.524" dx="1.27" dy="1.8796" layer="1"/>
<smd name="2" x="2.794" y="-1.524" dx="1.27" dy="1.8796" layer="1"/>
<smd name="3" x="2.794" y="1.524" dx="1.27" dy="1.8796" layer="1"/>
<smd name="4" x="-2.794" y="1.524" dx="1.27" dy="1.8796" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MM39SL">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-3.683" y1="-1.651" x2="3.683" y2="-1.651" width="0.0508" layer="21"/>
<wire x1="-3.683" y1="-2.286" x2="3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="1.651" x2="-3.683" y2="1.651" width="0.0508" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-6.223" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="1.651" x2="-4.826" y2="0.762" width="0.0508" layer="51"/>
<wire x1="-5.715" y1="-2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-1.651" x2="-3.683" y2="-1.651" width="0.0508" layer="51"/>
<wire x1="-5.715" y1="-2.055" x2="-6.223" y2="-2.286" width="0.0508" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.715" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="0.762" x2="-4.826" y2="-0.762" width="0.0508" layer="21"/>
<wire x1="-4.826" y1="-0.762" x2="-4.826" y2="-1.651" width="0.0508" layer="51"/>
<wire x1="-4.826" y1="-1.651" x2="-5.715" y2="-2.055" width="0.0508" layer="51"/>
<wire x1="-5.715" y1="2.286" x2="-3.683" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-3.683" y1="1.651" x2="-4.826" y2="1.651" width="0.0508" layer="51"/>
<wire x1="-6.223" y1="2.286" x2="-5.715" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.055" x2="-6.223" y2="2.286" width="0.0508" layer="21"/>
<wire x1="-4.826" y1="1.651" x2="-5.715" y2="2.055" width="0.0508" layer="51"/>
<wire x1="6.223" y1="-2.286" x2="6.223" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-1.651" x2="5.842" y2="1.651" width="0.0508" layer="21"/>
<wire x1="5.842" y1="-1.651" x2="6.223" y2="-2.286" width="0.0508" layer="21"/>
<wire x1="5.715" y1="-2.286" x2="6.223" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="5.715" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-1.651" x2="5.842" y2="-1.651" width="0.0508" layer="21"/>
<wire x1="3.683" y1="-1.651" x2="5.715" y2="-1.651" width="0.0508" layer="51"/>
<wire x1="5.842" y1="1.651" x2="6.223" y2="2.286" width="0.0508" layer="21"/>
<wire x1="5.842" y1="1.651" x2="5.715" y2="1.651" width="0.0508" layer="21"/>
<wire x1="5.715" y1="2.286" x2="6.223" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="2.286" x2="5.715" y2="2.286" width="0.1524" layer="51"/>
<wire x1="5.715" y1="1.651" x2="3.683" y2="1.651" width="0.0508" layer="51"/>
<wire x1="-3.81" y1="-0.254" x2="-2.54" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.254" x2="-2.54" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.254" x2="-3.81" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.254" x2="-3.81" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0.635" x2="-3.175" y2="1.016" width="0.1016" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-0.635" x2="-3.175" y2="-1.016" width="0.1016" layer="21"/>
<circle x="5.08" y="0" radius="0.254" width="0.1524" layer="21"/>
<smd name="1" x="-4.699" y="-1.778" dx="1.778" dy="1.778" layer="1"/>
<smd name="2" x="4.699" y="-1.778" dx="1.778" dy="1.778" layer="1"/>
<smd name="3" x="4.699" y="1.778" dx="1.778" dy="1.778" layer="1"/>
<smd name="4" x="-4.699" y="1.778" dx="1.778" dy="1.778" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="CTS406">
<description>&lt;b&gt;Model 406 6.0x3.5mm Low Cost Surface Mount Crystal&lt;/b&gt;&lt;p&gt;
Source: 008-0260-0_E.pdf</description>
<wire x1="-2.475" y1="1.65" x2="-1.05" y2="1.65" width="0.2032" layer="51"/>
<wire x1="-1.05" y1="1.65" x2="1.05" y2="1.65" width="0.2032" layer="21"/>
<wire x1="1.05" y1="1.65" x2="2.475" y2="1.65" width="0.2032" layer="51"/>
<wire x1="2.9" y1="1.225" x2="2.9" y2="0.3" width="0.2032" layer="51"/>
<wire x1="2.9" y1="0.3" x2="2.9" y2="-0.3" width="0.2032" layer="21"/>
<wire x1="2.9" y1="-0.3" x2="2.9" y2="-1.225" width="0.2032" layer="51"/>
<wire x1="2.475" y1="-1.65" x2="1.05" y2="-1.65" width="0.2032" layer="51"/>
<wire x1="1.05" y1="-1.65" x2="-1.05" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="-1.05" y1="-1.65" x2="-2.475" y2="-1.65" width="0.2032" layer="51"/>
<wire x1="-2.9" y1="-1.225" x2="-2.9" y2="-0.3" width="0.2032" layer="51"/>
<wire x1="-2.9" y1="-0.3" x2="-2.9" y2="0.3" width="0.2032" layer="21"/>
<wire x1="-2.9" y1="0.3" x2="-2.9" y2="1.225" width="0.2032" layer="51"/>
<wire x1="-2.9" y1="1.225" x2="-2.475" y2="1.65" width="0.2032" layer="51" curve="89.516721"/>
<wire x1="2.475" y1="1.65" x2="2.9" y2="1.225" width="0.2032" layer="51" curve="89.516721"/>
<wire x1="2.9" y1="-1.225" x2="2.475" y2="-1.65" width="0.2032" layer="51" curve="89.516721"/>
<wire x1="-2.475" y1="-1.65" x2="-2.9" y2="-1.225" width="0.2032" layer="51" curve="89.516721"/>
<circle x="-2.05" y="-0.2" radius="0.182" width="0" layer="21"/>
<smd name="1" x="-2.2" y="-1.2" dx="1.9" dy="1.4" layer="1"/>
<smd name="2" x="2.2" y="-1.2" dx="1.9" dy="1.4" layer="1"/>
<smd name="3" x="2.2" y="1.2" dx="1.9" dy="1.4" layer="1"/>
<smd name="4" x="-2.2" y="1.2" dx="1.9" dy="1.4" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="HC49/S">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-3.048" y1="-2.159" x2="3.048" y2="-2.159" width="0.4064" layer="21"/>
<wire x1="-3.048" y1="2.159" x2="3.048" y2="2.159" width="0.4064" layer="21"/>
<wire x1="-3.048" y1="-1.651" x2="3.048" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="3.048" y1="1.651" x2="-3.048" y2="1.651" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="0.254" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.762" x2="0.254" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.762" x2="-0.254" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.762" x2="-0.254" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="2.159" x2="-3.048" y2="-2.159" width="0.4064" layer="21" curve="180"/>
<wire x1="3.048" y1="-2.159" x2="3.048" y2="2.159" width="0.4064" layer="21" curve="180"/>
<wire x1="-3.048" y1="1.651" x2="-3.048" y2="-1.651" width="0.1524" layer="21" curve="180"/>
<wire x1="3.048" y1="-1.651" x2="3.048" y2="1.651" width="0.1524" layer="21" curve="180"/>
<pad name="1" x="-2.413" y="0" drill="1.5"/>
<pad name="2" x="2.413" y="0" drill="1.5"/>
<text x="-5.08" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-3.937" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.445" y1="-2.54" x2="4.445" y2="2.54" layer="43"/>
<rectangle x1="-5.08" y1="-1.905" x2="-4.445" y2="1.905" layer="43"/>
<rectangle x1="-5.715" y1="-1.27" x2="-5.08" y2="1.27" layer="43"/>
<rectangle x1="4.445" y1="-1.905" x2="5.08" y2="1.905" layer="43"/>
<rectangle x1="5.08" y1="-1.27" x2="5.715" y2="1.27" layer="43"/>
</package>
<package name="HC49TL-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="5.334" y1="-5.715" x2="-5.461" y2="-5.715" width="0.8128" layer="21"/>
<wire x1="4.445" y1="7.366" x2="1.143" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="7.366" x2="-4.445" y2="7.366" width="0.1524" layer="21"/>
<wire x1="4.445" y1="7.366" x2="5.08" y2="6.731" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="6.731" x2="-4.445" y2="7.366" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.3302" y1="5.715" x2="-0.3302" y2="3.175" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="3.175" x2="0.3048" y2="3.175" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="3.175" x2="0.3048" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.715" x2="-0.3302" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="5.715" x2="0.9398" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="5.715" x2="-0.9398" y2="4.445" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="4.445" x2="2.032" y2="4.445" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="4.445" x2="0.9398" y2="3.175" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="4.445" x2="-2.032" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="4.445" x2="-0.9398" y2="3.175" width="0.3048" layer="21"/>
<wire x1="-2.413" y1="-5.842" x2="-2.413" y2="-7.62" width="0.6096" layer="51"/>
<wire x1="2.413" y1="-5.842" x2="2.413" y2="-7.62" width="0.6096" layer="51"/>
<wire x1="5.08" y1="-5.715" x2="5.08" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.731" x2="-5.08" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="1.143" y1="7.366" x2="-1.143" y2="7.366" width="0.1524" layer="51"/>
<wire x1="0" y1="7.874" x2="0" y2="7.62" width="0.6096" layer="51"/>
<pad name="1" x="-2.413" y="-7.62" drill="1.5"/>
<pad name="2" x="2.413" y="-7.62" drill="1.5"/>
<pad name="3" x="0" y="7.874" drill="1.5"/>
<text x="-5.461" y="-4.445" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-2.54" y="-4.699" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.3048" y1="7.366" x2="0.3048" y2="7.5692" layer="51"/>
<rectangle x1="-6.35" y1="-6.985" x2="6.35" y2="-4.445" layer="43"/>
<rectangle x1="-5.715" y1="-4.445" x2="5.715" y2="8.255" layer="43"/>
</package>
<package name="HC49U-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.08" y1="-3.175" x2="5.08" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="4.445" y1="9.906" x2="-4.445" y2="9.906" width="0.1524" layer="21"/>
<wire x1="4.445" y1="9.906" x2="5.08" y2="9.271" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="9.271" x2="-4.445" y2="9.906" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.3302" y1="8.255" x2="-0.3302" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="5.715" x2="0.3048" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.715" x2="0.3048" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="8.255" x2="-0.3302" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="8.255" x2="0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="8.255" x2="-0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="1.905" y2="6.985" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-1.905" y2="6.985" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-2.413" y1="-3.302" x2="-2.413" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="2.413" y1="-3.302" x2="2.413" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="5.08" y1="-3.175" x2="5.08" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="9.271" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<pad name="1" x="-2.413" y="-5.08" drill="1.5"/>
<pad name="2" x="2.413" y="-5.08" drill="1.5"/>
<text x="-5.461" y="-1.397" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-6.35" y1="-4.445" x2="6.35" y2="-1.905" layer="43"/>
<rectangle x1="-5.715" y1="-1.905" x2="5.715" y2="10.795" layer="43"/>
</package>
<package name="HC49U-LM">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.08" y1="-3.175" x2="5.08" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="4.445" y1="9.906" x2="-4.445" y2="9.906" width="0.1524" layer="21"/>
<wire x1="4.445" y1="9.906" x2="5.08" y2="9.271" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="9.271" x2="-4.445" y2="9.906" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.572" y1="3.81" x2="4.572" y2="3.81" width="0.6096" layer="21"/>
<wire x1="-0.3302" y1="8.255" x2="-0.3302" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="5.715" x2="0.3048" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.715" x2="0.3048" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="8.255" x2="-0.3302" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="8.255" x2="0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="8.255" x2="-0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="2.54" y2="6.985" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-2.54" y2="6.985" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-2.413" y1="-3.302" x2="-2.413" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="2.413" y1="-3.302" x2="2.413" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.048" x2="5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.572" x2="5.08" y2="9.271" width="0.1524" layer="21"/>
<wire x1="4.572" y1="3.81" x2="5.08" y2="3.81" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.715" y2="3.81" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="3.048" width="0.1524" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="4.572" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="3.175" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="3.81" x2="-5.715" y2="3.81" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="3.175" width="0.1524" layer="51"/>
<pad name="1" x="-2.413" y="-5.08" drill="1.5"/>
<pad name="2" x="2.413" y="-5.08" drill="1.5"/>
<pad name="M" x="-5.715" y="3.81" drill="1.5"/>
<pad name="M1" x="5.715" y="3.81" drill="1.5"/>
<text x="-5.08" y="10.414" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.572" y="0" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.715" y1="-5.08" x2="5.715" y2="10.795" layer="43"/>
</package>
<package name="HC49U-V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-2.921" y1="-2.286" x2="2.921" y2="-2.286" width="0.4064" layer="21"/>
<wire x1="-2.921" y1="2.286" x2="2.921" y2="2.286" width="0.4064" layer="21"/>
<wire x1="-2.921" y1="-1.778" x2="2.921" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.778" x2="-2.921" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.778" x2="2.921" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.921" y1="2.286" x2="2.921" y2="-2.286" width="0.4064" layer="21" curve="-180"/>
<wire x1="-2.921" y1="2.286" x2="-2.921" y2="-2.286" width="0.4064" layer="21" curve="180"/>
<wire x1="-2.921" y1="1.778" x2="-2.921" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<wire x1="-0.254" y1="0.889" x2="0.254" y2="0.889" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.889" x2="0.254" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.889" x2="-0.254" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.889" x2="-0.254" y2="0.889" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0.889" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.889" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.413" y="0" drill="0.6"/>
<pad name="2" x="2.413" y="0" drill="0.6"/>
<text x="-5.08" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.81" y1="-2.794" x2="3.81" y2="2.794" layer="43"/>
<rectangle x1="-4.318" y1="-2.54" x2="-3.81" y2="2.54" layer="43"/>
<rectangle x1="-4.826" y1="-2.286" x2="-4.318" y2="2.286" layer="43"/>
<rectangle x1="-5.334" y1="-1.778" x2="-4.826" y2="1.778" layer="43"/>
<rectangle x1="-5.588" y1="-1.27" x2="-5.334" y2="1.016" layer="43"/>
<rectangle x1="3.81" y1="-2.54" x2="4.318" y2="2.54" layer="43"/>
<rectangle x1="4.318" y1="-2.286" x2="4.826" y2="2.286" layer="43"/>
<rectangle x1="4.826" y1="-1.778" x2="5.334" y2="1.778" layer="43"/>
<rectangle x1="5.334" y1="-1.016" x2="5.588" y2="1.016" layer="43"/>
</package>
<package name="HC49U70">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-3.048" y1="-2.54" x2="3.048" y2="-2.54" width="0.4064" layer="21"/>
<wire x1="-3.048" y1="2.54" x2="3.048" y2="2.54" width="0.4064" layer="21"/>
<wire x1="-3.048" y1="-2.032" x2="3.048" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-0.3302" y1="1.016" x2="-0.3302" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.3302" y1="-1.016" x2="0.3048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="-1.016" x2="0.3048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.016" x2="-0.3302" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0.6858" y1="1.016" x2="0.6858" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.6858" y1="1.016" x2="-0.6858" y2="0" width="0.1524" layer="21"/>
<wire x1="0.6858" y1="0" x2="1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="0.6858" y1="0" x2="0.6858" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.6858" y1="0" x2="-1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.6858" y1="0" x2="-0.6858" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="-2.54" width="0.4064" layer="21" curve="180"/>
<wire x1="3.048" y1="2.54" x2="3.048" y2="-2.54" width="0.4064" layer="21" curve="-180"/>
<wire x1="-3.048" y1="-2.032" x2="-3.048" y2="2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.048" y1="2.032" x2="3.048" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.048" y1="2.032" x2="-3.048" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-2.413" y="0" drill="1.5"/>
<pad name="2" x="2.413" y="0" drill="1.5"/>
<text x="-5.08" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.572" y1="-2.794" x2="-4.064" y2="2.794" layer="43"/>
<rectangle x1="-5.08" y1="-2.54" x2="-4.572" y2="2.54" layer="43"/>
<rectangle x1="-5.588" y1="-2.032" x2="-5.08" y2="2.032" layer="43"/>
<rectangle x1="-5.842" y1="-1.27" x2="-5.588" y2="1.27" layer="43"/>
<rectangle x1="-4.064" y1="-3.048" x2="4.064" y2="3.048" layer="43"/>
<rectangle x1="4.064" y1="-2.794" x2="4.572" y2="2.794" layer="43"/>
<rectangle x1="4.572" y1="-2.54" x2="5.08" y2="2.54" layer="43"/>
<rectangle x1="5.08" y1="-2.032" x2="5.588" y2="2.032" layer="43"/>
<rectangle x1="5.588" y1="-1.27" x2="5.842" y2="1.27" layer="43"/>
</package>
<package name="HC13U-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-9.906" y1="-3.048" x2="-9.271" y2="-3.048" width="1.27" layer="21"/>
<wire x1="-9.271" y1="-3.048" x2="9.271" y2="-3.048" width="1.27" layer="21"/>
<wire x1="9.271" y1="-3.048" x2="9.906" y2="-3.048" width="1.27" layer="21"/>
<wire x1="8.636" y1="33.401" x2="-8.636" y2="33.401" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="32.766" x2="-8.636" y2="33.401" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.636" y1="33.401" x2="9.271" y2="32.766" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.017" y1="15.24" x2="9.017" y2="15.24" width="0.6096" layer="21"/>
<wire x1="-0.3302" y1="21.59" x2="-0.3302" y2="19.05" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="19.05" x2="0.3048" y2="19.05" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="19.05" x2="0.3048" y2="21.59" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="21.59" x2="-0.3302" y2="21.59" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="21.59" x2="0.9398" y2="20.32" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="21.59" x2="-0.9398" y2="20.32" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="20.32" x2="1.905" y2="20.32" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="20.32" x2="0.9398" y2="19.05" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="20.32" x2="-1.905" y2="20.32" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="20.32" x2="-0.9398" y2="19.05" width="0.3048" layer="21"/>
<wire x1="9.144" y1="15.24" x2="10.16" y2="15.24" width="0.6096" layer="51"/>
<wire x1="-10.16" y1="15.24" x2="-9.144" y2="15.24" width="0.6096" layer="51"/>
<wire x1="-6.223" y1="-3.175" x2="-6.223" y2="-5.08" width="0.8128" layer="51"/>
<wire x1="6.223" y1="-3.175" x2="6.223" y2="-5.08" width="0.8128" layer="51"/>
<wire x1="9.271" y1="15.748" x2="9.271" y2="32.766" width="0.1524" layer="21"/>
<wire x1="9.271" y1="14.732" x2="9.271" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="9.271" y1="15.748" x2="9.271" y2="14.732" width="0.1524" layer="51"/>
<wire x1="-9.271" y1="14.732" x2="-9.271" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="15.748" x2="-9.271" y2="32.766" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="15.748" x2="-9.271" y2="14.732" width="0.1524" layer="51"/>
<pad name="1" x="-6.223" y="-5.08" drill="1.5"/>
<pad name="2" x="6.223" y="-5.08" drill="1.5"/>
<pad name="M" x="-10.16" y="15.24" drill="1.5"/>
<pad name="M1" x="10.16" y="15.24" drill="1.5"/>
<text x="-10.16" y="0" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-5.08" y="-1.27" size="1.778" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-5.08" x2="10.795" y2="34.925" layer="43"/>
</package>
<package name="HC18U-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="5.461" y1="-3.175" x2="5.08" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="5.08" y1="-3.175" x2="-5.08" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-5.461" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="4.445" y1="10.16" x2="-4.445" y2="10.16" width="0.1524" layer="21"/>
<wire x1="4.445" y1="10.16" x2="5.08" y2="9.525" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="9.525" x2="-4.445" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.572" y1="3.81" x2="4.572" y2="3.81" width="0.6096" layer="21"/>
<wire x1="-0.3302" y1="8.255" x2="-0.3302" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="5.715" x2="0.3048" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.715" x2="0.3048" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="8.255" x2="-0.3302" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="8.255" x2="0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="8.255" x2="-0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="2.54" y2="6.985" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-2.54" y2="6.985" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.048" x2="5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.572" x2="5.08" y2="9.525" width="0.1524" layer="21"/>
<wire x1="4.572" y1="3.81" x2="5.08" y2="3.81" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.715" y2="3.81" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="3.048" width="0.1524" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="4.572" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="3.175" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="9.525" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="3.81" x2="-5.715" y2="3.81" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="3.175" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="-5.08" drill="1.5"/>
<pad name="2" x="2.54" y="-5.08" drill="1.5"/>
<pad name="M" x="-5.715" y="3.81" drill="1.5"/>
<pad name="M1" x="5.715" y="3.81" drill="1.5"/>
<text x="-5.08" y="10.668" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.889" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.35" y1="-5.08" x2="6.35" y2="10.795" layer="43"/>
</package>
<package name="HC18U-V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="1.905" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="4.445" y2="2.54" width="0.4064" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="4.445" y2="-2.54" width="0.4064" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.08" y2="-1.905" width="0.4064" layer="21" curve="90"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.4064" layer="21" curve="-90"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.4064" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.4064" layer="21" curve="90"/>
<wire x1="-4.318" y1="-1.905" x2="4.318" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.905" x2="4.445" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.778" x2="4.445" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.318" y1="1.905" x2="4.445" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.318" y1="1.905" x2="-4.318" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.778" x2="-4.318" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.778" x2="-4.445" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-1.905" x2="-4.445" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-0.3302" y1="1.27" x2="-0.3302" y2="-1.27" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="-1.27" x2="0.3048" y2="-1.27" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="-1.27" x2="0.3048" y2="1.27" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="1.27" x2="-0.3302" y2="1.27" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="1.27" x2="0.9398" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="1.27" x2="-0.9398" y2="0" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="0" x2="0.9398" y2="-1.27" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="0" x2="-0.9398" y2="-1.27" width="0.3048" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.5"/>
<pad name="2" x="2.54" y="0" drill="1.5"/>
<text x="-5.0546" y="3.2766" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.6228" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.715" y1="-3.175" x2="5.715" y2="3.175" layer="43"/>
</package>
<package name="HC33U-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-9.906" y1="-3.048" x2="-9.271" y2="-3.048" width="1.27" layer="21"/>
<wire x1="-9.271" y1="-3.048" x2="9.271" y2="-3.048" width="1.27" layer="21"/>
<wire x1="9.271" y1="-3.048" x2="9.906" y2="-3.048" width="1.27" layer="21"/>
<wire x1="8.636" y1="16.51" x2="-8.636" y2="16.51" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="15.875" x2="-8.636" y2="16.51" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.636" y1="16.51" x2="9.271" y2="15.875" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.017" y1="7.62" x2="9.017" y2="7.62" width="0.6096" layer="21"/>
<wire x1="-0.3302" y1="13.97" x2="-0.3302" y2="11.43" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="11.43" x2="0.3048" y2="11.43" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="11.43" x2="0.3048" y2="13.97" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="13.97" x2="-0.3302" y2="13.97" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="13.97" x2="0.9398" y2="12.7" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="13.97" x2="-0.9398" y2="12.7" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="12.7" x2="1.905" y2="12.7" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="12.7" x2="0.9398" y2="11.43" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="12.7" x2="-1.905" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="12.7" x2="-0.9398" y2="11.43" width="0.3048" layer="21"/>
<wire x1="9.144" y1="7.62" x2="10.16" y2="7.62" width="0.6096" layer="51"/>
<wire x1="-10.16" y1="7.62" x2="-9.144" y2="7.62" width="0.6096" layer="51"/>
<wire x1="-6.223" y1="-3.175" x2="-6.223" y2="-5.08" width="0.8128" layer="51"/>
<wire x1="6.223" y1="-3.175" x2="6.223" y2="-5.08" width="0.8128" layer="51"/>
<wire x1="9.271" y1="8.128" x2="9.271" y2="15.875" width="0.1524" layer="21"/>
<wire x1="9.271" y1="7.112" x2="9.271" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="9.271" y1="8.128" x2="9.271" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-9.271" y1="7.112" x2="-9.271" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="8.128" x2="-9.271" y2="15.875" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="8.128" x2="-9.271" y2="7.112" width="0.1524" layer="51"/>
<pad name="1" x="-6.223" y="-5.08" drill="1.5"/>
<pad name="2" x="6.223" y="-5.08" drill="1.5"/>
<pad name="M" x="-10.16" y="7.62" drill="1.5"/>
<pad name="M1" x="10.16" y="7.62" drill="1.5"/>
<text x="-7.62" y="17.272" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.62" y1="-3.175" x2="-6.985" y2="16.51" layer="21"/>
<rectangle x1="6.985" y1="-3.175" x2="7.62" y2="16.51" layer="21"/>
<rectangle x1="-10.795" y1="-5.715" x2="10.795" y2="17.145" layer="43"/>
</package>
<package name="HC33U-V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-0.3302" y1="2.54" x2="-0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="0" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="2.54" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="2.54" x2="-0.3302" y2="2.54" width="0.3048" layer="21"/>
<wire x1="0.9652" y1="2.54" x2="0.9652" y2="1.27" width="0.3048" layer="21"/>
<wire x1="-0.9652" y1="2.54" x2="-0.9652" y2="1.27" width="0.3048" layer="21"/>
<wire x1="0.9652" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.9652" y1="1.27" x2="0.9652" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.9652" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.9652" y1="1.27" x2="-0.9652" y2="0" width="0.3048" layer="21"/>
<wire x1="-5.207" y1="4.064" x2="5.207" y2="4.064" width="0.254" layer="21"/>
<wire x1="-5.207" y1="-4.064" x2="5.207" y2="-4.064" width="0.254" layer="21"/>
<wire x1="-5.207" y1="-3.683" x2="5.207" y2="-3.683" width="0.0508" layer="21"/>
<wire x1="-5.207" y1="3.683" x2="5.207" y2="3.683" width="0.0508" layer="21"/>
<wire x1="-5.207" y1="-3.683" x2="-5.207" y2="3.683" width="0.0508" layer="21" curve="-180"/>
<wire x1="5.207" y1="3.683" x2="5.207" y2="-3.683" width="0.0508" layer="21" curve="-180"/>
<wire x1="5.207" y1="4.064" x2="5.207" y2="-4.064" width="0.254" layer="21" curve="-180"/>
<wire x1="-5.207" y1="4.064" x2="-5.207" y2="-4.064" width="0.254" layer="21" curve="180"/>
<pad name="1" x="-6.223" y="0" drill="1.5"/>
<pad name="2" x="6.223" y="0" drill="1.5"/>
<text x="-5.08" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.255" y1="-3.81" x2="-6.985" y2="3.81" layer="43"/>
<rectangle x1="-8.89" y1="-3.175" x2="-8.255" y2="3.175" layer="43"/>
<rectangle x1="-9.525" y1="-2.54" x2="-8.89" y2="2.54" layer="43"/>
<rectangle x1="-6.985" y1="-4.445" x2="6.985" y2="4.445" layer="43"/>
<rectangle x1="6.985" y1="-3.81" x2="8.255" y2="3.81" layer="43"/>
<rectangle x1="8.255" y1="-3.175" x2="8.89" y2="3.175" layer="43"/>
<rectangle x1="8.89" y1="-2.54" x2="9.525" y2="2.54" layer="43"/>
</package>
<package name="TC26H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-0.889" y1="1.651" x2="0.889" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.762" y1="7.747" x2="1.016" y2="7.493" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="7.493" x2="-0.762" y2="7.747" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.762" y1="7.747" x2="0.762" y2="7.747" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.651" x2="0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.032" x2="1.016" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.651" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.032" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.032" x2="-1.016" y2="7.493" width="0.1524" layer="21"/>
<wire x1="0.508" y1="0.762" x2="0.508" y2="1.143" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0.762" x2="-0.508" y2="1.27" width="0.4064" layer="21"/>
<wire x1="0.635" y1="0.635" x2="1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.635" y1="0.635" x2="-1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.508" y1="4.953" x2="-0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0.508" y1="4.572" x2="-0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0.508" y1="4.572" x2="0.508" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="4.953" x2="0.508" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="5.334" x2="0" y2="5.334" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="4.191" x2="0" y2="4.191" width="0.1524" layer="21"/>
<wire x1="0" y1="4.191" x2="0" y2="3.683" width="0.1524" layer="21"/>
<wire x1="0" y1="4.191" x2="0.508" y2="4.191" width="0.1524" layer="21"/>
<wire x1="0" y1="5.334" x2="0" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0" y1="5.334" x2="0.508" y2="5.334" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.032" x2="0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="0.889" y1="2.032" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.5"/>
<pad name="2" x="1.27" y="0" drill="1.5"/>
<text x="-1.397" y="2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="2.667" y="2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3048" y1="1.016" x2="0.7112" y2="1.6002" layer="21"/>
<rectangle x1="-0.7112" y1="1.016" x2="-0.3048" y2="1.6002" layer="21"/>
<rectangle x1="-1.778" y1="0.762" x2="1.778" y2="8.382" layer="43"/>
</package>
<package name="TC26V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-0.127" y1="-0.508" x2="0.127" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.127" y1="0.508" x2="0.127" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.127" y1="0.508" x2="-0.127" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="-0.508" x2="-0.127" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-0.508" x2="-0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.381" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="0" x2="-0.381" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0" y1="1.016" x2="0.7184" y2="0.7184" width="0.1524" layer="21" curve="-44.999323"/>
<wire x1="-0.7184" y1="0.7184" x2="0" y2="1.016" width="0.1524" layer="21" curve="-44.999323"/>
<wire x1="-0.7184" y1="-0.7184" x2="0" y2="-1.016" width="0.1524" layer="21" curve="44.999323"/>
<wire x1="0" y1="-1.016" x2="0.7184" y2="-0.7184" width="0.1524" layer="21" curve="44.999323"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="1.5"/>
<pad name="2" x="1.27" y="0" drill="1.5"/>
<text x="-2.032" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="TC38H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-1.397" y1="1.651" x2="1.397" y2="1.651" width="0.1524" layer="21"/>
<wire x1="1.27" y1="9.906" x2="1.524" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.524" y1="9.652" x2="-1.27" y2="9.906" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="9.906" x2="1.27" y2="9.906" width="0.1524" layer="21"/>
<wire x1="1.397" y1="1.651" x2="1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.032" x2="1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.032" x2="1.524" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.651" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.032" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.032" x2="-1.524" y2="9.652" width="0.1524" layer="21"/>
<wire x1="1.397" y1="2.032" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="0.5588" y1="0.7112" x2="0.508" y2="0.762" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.762" x2="0.508" y2="1.143" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0.762" x2="-0.508" y2="1.016" width="0.4064" layer="21"/>
<wire x1="-0.5588" y1="0.7112" x2="-0.508" y2="0.762" width="0.4064" layer="21"/>
<wire x1="0.635" y1="0.635" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.635" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="5.588" x2="-0.762" y2="5.207" width="0.1524" layer="21"/>
<wire x1="0.762" y1="5.207" x2="-0.762" y2="5.207" width="0.1524" layer="21"/>
<wire x1="0.762" y1="5.207" x2="0.762" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="5.588" x2="0.762" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="5.969" x2="0" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="4.826" x2="0" y2="4.826" width="0.1524" layer="21"/>
<wire x1="0" y1="4.826" x2="0" y2="4.318" width="0.1524" layer="21"/>
<wire x1="0" y1="4.826" x2="0.762" y2="4.826" width="0.1524" layer="21"/>
<wire x1="0" y1="5.969" x2="0" y2="6.477" width="0.1524" layer="21"/>
<wire x1="0" y1="5.969" x2="0.762" y2="5.969" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.5"/>
<pad name="2" x="1.27" y="0" drill="1.5"/>
<text x="-1.905" y="2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.175" y="2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3048" y1="1.016" x2="0.7112" y2="1.6002" layer="21"/>
<rectangle x1="-0.7112" y1="1.016" x2="-0.3048" y2="1.6002" layer="21"/>
<rectangle x1="-1.778" y1="1.016" x2="1.778" y2="10.414" layer="43"/>
</package>
</packages>
<symbols>
<symbol name="Q">
<wire x1="1.016" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="1.524" x2="-0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-1.524" x2="0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="-1.524" x2="0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="1.524" x2="-0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="-1.778" width="0.254" layer="94"/>
<text x="2.54" y="1.016" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.159" y="-1.143" size="0.8636" layer="93">1</text>
<text x="1.524" y="-1.143" size="0.8636" layer="93">2</text>
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRYSTAL" prefix="Q" uservalue="yes">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="Q" x="0" y="0"/>
</gates>
<devices>
<device name="HC49S" package="HC49/S">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1667008" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49GW" package="HC49GW">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49TL-H" package="HC49TL-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49U-H" package="HC49U-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1666973" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49U-LM" package="HC49U-LM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1666956" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49U-V" package="HC49U-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1666969" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49U70" package="HC49U70">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49UP" package="HC49UP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC13U-H" package="HC13U-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC18U-H" package="HC18U-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC18U-V" package="HC18U-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC33U-H" package="HC33U-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC33U-V" package="HC33U-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="SM49" package="SM49">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="TC26H" package="TC26H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="TC26V" package="TC26V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="TC38H" package="TC38H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="68SMX" package="86SMX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="6344860" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="MM20SS" package="MM20SS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="MM39SL" package="MM39SL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="CTS406" package="CTS406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="JACK_NOBGND">
<packages>
<package name="DCJ0303">
<description>&lt;b&gt;DC POWER JACK&lt;/b&gt; Pad shape changed to LONG 2007.07.26&lt;p&gt;
Source: DCJ0303.pdf</description>
<wire x1="1.65" y1="2.6" x2="-1.65" y2="2.6" width="0" layer="46"/>
<wire x1="-1.65" y1="2.6" x2="-1.65" y2="3.6" width="0" layer="46"/>
<wire x1="-1.65" y1="3.6" x2="1.65" y2="3.6" width="0" layer="46"/>
<wire x1="1.65" y1="3.6" x2="1.65" y2="2.6" width="0" layer="46"/>
<wire x1="5.3" y1="1.4" x2="4.3" y2="1.4" width="0" layer="46"/>
<wire x1="4.3" y1="1.4" x2="4.3" y2="-1.4" width="0" layer="46"/>
<wire x1="4.3" y1="-1.4" x2="5.3" y2="-1.4" width="0" layer="46"/>
<wire x1="5.3" y1="-1.4" x2="5.3" y2="1.4" width="0" layer="46"/>
<wire x1="1.4" y1="-3.5" x2="-1.4" y2="-3.5" width="0" layer="46"/>
<wire x1="-1.4" y1="-3.5" x2="-1.4" y2="-2.5" width="0" layer="46"/>
<wire x1="-1.4" y1="-2.5" x2="1.4" y2="-2.5" width="0" layer="46"/>
<wire x1="1.4" y1="-2.5" x2="1.4" y2="-3.5" width="0" layer="46"/>
<wire x1="-3" y1="-13.975" x2="-3" y2="-7" width="0.2032" layer="51" style="shortdash"/>
<wire x1="3" y1="-13.9" x2="3" y2="-7" width="0.2032" layer="51" style="shortdash"/>
<wire x1="3" y1="-7" x2="-3" y2="-7" width="0.2032" layer="51" style="shortdash"/>
<wire x1="-0.9" y1="-12.7" x2="-0.9" y2="-7.5" width="0.2032" layer="51" style="shortdash"/>
<wire x1="0.9" y1="-12.7" x2="0.9" y2="-7.5" width="0.2032" layer="51" style="shortdash"/>
<wire x1="-0.9" y1="-12.7" x2="0.9" y2="-12.7" width="0.2032" layer="51" curve="166.57811"/>
<wire x1="4.5" y1="0" x2="-4.5" y2="0" width="0.127" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="-14" width="0.127" layer="21"/>
<wire x1="-4.5" y1="-14" x2="4.5" y2="-14" width="0.127" layer="21"/>
<wire x1="4.5" y1="-14" x2="4.5" y2="0" width="0.127" layer="21"/>
<pad name="VIN" x="0" y="0" drill="3.3" diameter="5" rot="R180"/>
<pad name="GND" x="0" y="-7" drill="3.3" diameter="5" rot="R180"/>
<text x="-5.25" y="-13.36" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="DC-JACK-SWITCH">
<wire x1="5.08" y1="2.54" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.762" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.016" x2="-0.762" y2="-2.54" width="0.1524" layer="94"/>
<text x="-2.54" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-3.302" y1="-2.54" x2="-1.778" y2="1.27" layer="94"/>
<pin name="VIN" x="7.62" y="2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="GND" x="7.62" y="-2.54" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DCJ0303" prefix="J" uservalue="yes">
<description>&lt;b&gt;DC POWER JACK&lt;/b&gt;&lt;p&gt;
Source: DCJ0303.pdf</description>
<gates>
<gate name="G$1" symbol="DC-JACK-SWITCH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DCJ0303">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led">
<packages>
<package name="1206">
<description>&lt;b&gt;CHICAGO MINIATURE LAMP, INC.&lt;/b&gt;&lt;p&gt;
7022X Series SMT LEDs 1206 Package Size</description>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.5" x2="0.55" y2="-0.5" width="0.1016" layer="21" curve="95.452622"/>
<wire x1="-0.55" y1="-0.5" x2="-0.55" y2="0.5" width="0.1016" layer="51" curve="-84.547378"/>
<wire x1="-0.55" y1="0.5" x2="0.55" y2="0.5" width="0.1016" layer="21" curve="-95.452622"/>
<wire x1="0.55" y1="0.5" x2="0.55" y2="-0.5" width="0.1016" layer="51" curve="-84.547378"/>
<smd name="A" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="C" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
<rectangle x1="0.45" y1="-0.7" x2="0.8" y2="-0.45" layer="51"/>
<rectangle x1="0.8" y1="-0.7" x2="0.9" y2="0.5" layer="51"/>
<rectangle x1="0.8" y1="0.55" x2="0.9" y2="0.7" layer="51"/>
<rectangle x1="-0.9" y1="-0.7" x2="-0.8" y2="0.5" layer="51"/>
<rectangle x1="-0.9" y1="0.55" x2="-0.8" y2="0.7" layer="51"/>
<rectangle x1="0.45" y1="-0.7" x2="0.6" y2="-0.45" layer="21"/>
</package>
<package name="P-LCC-2">
<description>&lt;b&gt;TOPLED® High-optical Power LED (HOP)&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... ls_t675.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-1.8" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="C" x="0" y="-2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="2.54" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-2.25" x2="1.3" y2="-0.75" layer="31"/>
<rectangle x1="-1.3" y1="0.75" x2="1.3" y2="2.25" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.4" y1="0.65" x2="1.4" y2="2.35" layer="29"/>
<rectangle x1="-1.4" y1="-2.35" x2="1.4" y2="-0.65" layer="29"/>
</package>
<package name="OSRAM-MINI-TOP-LED">
<description>&lt;b&gt;BLUE LINETM Hyper Mini TOPLED® Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LB M676.pdf</description>
<wire x1="-0.6" y1="0.9" x2="-0.6" y2="-0.7" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="-0.9" x2="0.6" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="-0.9" x2="0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="0.9" x2="-0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.95" x2="-0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="1.1" x2="0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="1.1" x2="0.45" y2="0.95" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="-0.7" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-1.1" x2="0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="-1.1" x2="0.45" y2="-0.95" width="0.1016" layer="51"/>
<smd name="A" x="0" y="2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="1.905" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.175" size="1.27" layer="21">C</text>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.5" y1="0.6" x2="0.5" y2="1.4" layer="29"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-0.6" layer="29"/>
<rectangle x1="-0.15" y1="-0.6" x2="0.15" y2="-0.3" layer="51"/>
<rectangle x1="-0.45" y1="0.65" x2="0.45" y2="1.35" layer="31"/>
<rectangle x1="-0.45" y1="-1.35" x2="0.45" y2="-0.65" layer="31"/>
</package>
<package name="OSRAM-SIDELED">
<description>&lt;b&gt;Super SIDELED® High-Current LED&lt;/b&gt;&lt;p&gt;
LG A672, LP A672 &lt;br&gt;
Source: http://www.osram.convergy.de/ ... LG_LP_A672.pdf (2004.05.13)</description>
<wire x1="-1.85" y1="-2.05" x2="-1.85" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="-0.75" x2="-1.7" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="-0.75" x2="-1.7" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="0.75" x2="-1.85" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="0.75" x2="-1.85" y2="2.05" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="2.05" x2="0.9" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="-1.85" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="-2.05" x2="1.85" y2="-1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="-1.85" x2="1.85" y2="1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="1.85" x2="1.05" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.9" x2="-0.55" y2="0.9" width="0.1016" layer="51" curve="-167.319617"/>
<wire x1="-0.55" y1="-0.9" x2="0.85" y2="-1.2" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.55" y1="0.9" x2="0.85" y2="1.2" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="-2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="0.635" y="-3.175" size="1.27" layer="21" rot="R90">C</text>
<text x="0.635" y="2.54" size="1.27" layer="21" rot="R90">A</text>
<text x="-2.54" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-2.2" x2="2.1" y2="-0.4" layer="29"/>
<rectangle x1="-2.1" y1="0.4" x2="2.1" y2="2.2" layer="29"/>
<rectangle x1="-1.9" y1="-2.1" x2="1.9" y2="-0.6" layer="31"/>
<rectangle x1="-1.9" y1="0.6" x2="1.9" y2="2.1" layer="31"/>
<rectangle x1="-1.85" y1="-2.05" x2="-0.7" y2="-1" layer="51"/>
</package>
<package name="SMART-LED">
<description>&lt;b&gt;SmartLEDTM Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY L896.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="A" x="0" y="0.725" dx="0.35" dy="0.35" layer="1"/>
<smd name="B" x="0" y="-0.725" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-0.635" size="1.016" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.016" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
</package>
<package name="MICRO-SIDELED">
<description>&lt;b&gt;Hyper Micro SIDELED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY Y876.pdf</description>
<wire x1="0.65" y1="1.1" x2="-0.1" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="1.1" x2="-0.35" y2="1" width="0.1016" layer="51"/>
<wire x1="-0.35" y1="1" x2="-0.35" y2="-0.9" width="0.1016" layer="21"/>
<wire x1="-0.35" y1="-0.9" x2="-0.1" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="-1.1" x2="0.65" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.65" y1="-1.1" x2="0.65" y2="1.1" width="0.1016" layer="21"/>
<wire x1="0.6" y1="0.9" x2="0.25" y2="0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="0.7" x2="0.25" y2="-0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="-0.7" x2="0.6" y2="-0.9" width="0.0508" layer="21"/>
<smd name="A" x="0" y="1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.4" y1="1.1" x2="0.4" y2="1.8" layer="29"/>
<rectangle x1="-0.4" y1="-1.8" x2="0.4" y2="-1.1" layer="29"/>
<rectangle x1="-0.35" y1="-1.75" x2="0.35" y2="-1.15" layer="31"/>
<rectangle x1="-0.35" y1="1.15" x2="0.35" y2="1.75" layer="31"/>
<rectangle x1="-0.125" y1="1.125" x2="0.125" y2="1.75" layer="51"/>
<rectangle x1="-0.125" y1="-1.75" x2="0.125" y2="-1.125" layer="51"/>
</package>
<package name="P-LCC-4">
<description>&lt;b&gt;Power TOPLED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LA_LY E67B.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="1.8" x2="-0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="1.8" x2="-0.5" y2="1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.65" x2="0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.8" x2="-0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="-1.8" x2="-0.5" y2="-1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.65" x2="0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.8" x2="1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1" y1="-1.8" x2="1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="A" x="-2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@3" x="2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@4" x="2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="-2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="1.27" layer="21">C</text>
<text x="-1.905" y="2.54" size="1.27" layer="21">A</text>
<text x="1.27" y="2.54" size="1.27" layer="21">C</text>
<text x="1.27" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.15" y1="0.75" x2="-0.35" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="0.75" x2="1.15" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="-1.85" x2="1.15" y2="-0.75" layer="29"/>
<rectangle x1="-1.15" y1="-1.85" x2="-0.35" y2="-0.75" layer="29"/>
<rectangle x1="-1.1" y1="-1.8" x2="-0.4" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="-1.8" x2="1.1" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="0.8" x2="1.1" y2="1.8" layer="31"/>
<rectangle x1="-1.1" y1="0.8" x2="-0.4" y2="1.8" layer="31"/>
<rectangle x1="-0.2" y1="-0.2" x2="0.2" y2="0.2" layer="21"/>
</package>
<package name="CHIP-LED0603">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB Q993&lt;br&gt;
Source: http://www.osram.convergy.de/ ... Lb_q993.pdf</description>
<wire x1="-0.4" y1="0.45" x2="-0.4" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.45" x2="0.4" y2="-0.45" width="0.1016" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-0.635" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.45" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="0.45" y2="-0.45" layer="51"/>
<rectangle x1="-0.45" y1="0" x2="-0.3" y2="0.3" layer="21"/>
<rectangle x1="0.3" y1="0" x2="0.45" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
</package>
<package name="CHIP-LED0805">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB R99A&lt;br&gt;
Source: http://www.osram.convergy.de/ ... lb_r99a.pdf</description>
<wire x1="-0.625" y1="0.45" x2="-0.625" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.625" y1="0.45" x2="0.625" y2="-0.475" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.675" y1="0" x2="-0.525" y2="0.3" layer="21"/>
<rectangle x1="0.525" y1="0" x2="0.675" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
<rectangle x1="-0.675" y1="0.45" x2="0.675" y2="1.05" layer="51"/>
<rectangle x1="-0.675" y1="-1.05" x2="0.675" y2="-0.45" layer="51"/>
</package>
<package name="CHIPLED_0805">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.1" y1="0" x2="0.1" y2="0.2" layer="21"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.8" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="CHIPLED_1206">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY N971.pdf</description>
<wire x1="-0.4" y1="1.6" x2="0.4" y2="1.6" width="0.1016" layer="51" curve="172.619069"/>
<wire x1="-0.8" y1="-0.95" x2="-0.8" y2="0.95" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.95" x2="0.8" y2="-0.95" width="0.1016" layer="51"/>
<circle x="-0.55" y="1.425" radius="0.1" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.75" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.75" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.85" y1="1.525" x2="-0.35" y2="1.65" layer="51"/>
<rectangle x1="-0.85" y1="1.225" x2="-0.625" y2="1.55" layer="51"/>
<rectangle x1="-0.45" y1="1.225" x2="-0.325" y2="1.45" layer="51"/>
<rectangle x1="-0.65" y1="1.225" x2="-0.225" y2="1.35" layer="51"/>
<rectangle x1="0.35" y1="1.3" x2="0.85" y2="1.65" layer="51"/>
<rectangle x1="0.25" y1="1.225" x2="0.85" y2="1.35" layer="51"/>
<rectangle x1="-0.85" y1="0.95" x2="0.85" y2="1.25" layer="51"/>
<rectangle x1="-0.85" y1="-1.65" x2="0.85" y2="-0.95" layer="51"/>
<rectangle x1="-0.85" y1="0.35" x2="-0.525" y2="0.775" layer="21"/>
<rectangle x1="0.525" y1="0.35" x2="0.85" y2="0.775" layer="21"/>
<rectangle x1="-0.175" y1="0" x2="0.175" y2="0.35" layer="21"/>
</package>
<package name="CHIPLED_0603">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY Q971.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
</package>
<package name="CHIPLED-0603-TTW">
<description>&lt;b&gt;CHIPLED-0603&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.4" y1="0.625" x2="0.4" y2="1.125" layer="29"/>
<rectangle x1="-0.4" y1="-1.125" x2="0.4" y2="-0.625" layer="29"/>
<rectangle x1="-0.175" y1="-0.675" x2="0.175" y2="-0.325" layer="29"/>
</package>
<package name="SMARTLED-TTW">
<description>&lt;b&gt;SmartLED TTW&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
<rectangle x1="-0.225" y1="0.3" x2="0.225" y2="0.975" layer="31"/>
<rectangle x1="-0.175" y1="-0.7" x2="0.175" y2="-0.325" layer="29" rot="R180"/>
<rectangle x1="-0.225" y1="-0.975" x2="0.225" y2="-0.3" layer="31" rot="R180"/>
</package>
<package name="LUMILED+">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; with cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="1">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LUMILED">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; without cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="KA-3528ASYC">
<description>&lt;b&gt;SURFACE MOUNT LED LAMP&lt;/b&gt; 3.5x2.8mm&lt;p&gt;
Source: http://www.kingbright.com/manager/upload/pdf/KA-3528ASYC(Ver1189474662.1)</description>
<wire x1="-1.55" y1="1.35" x2="1.55" y2="1.35" width="0.1016" layer="21"/>
<wire x1="1.55" y1="1.35" x2="1.55" y2="-1.35" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-1.35" x2="-1.55" y2="-1.35" width="0.1016" layer="21"/>
<wire x1="-1.55" y1="-1.35" x2="-1.55" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="0.95" x2="0.65" y2="0.95" width="0.1016" layer="21" curve="-68.40813"/>
<wire x1="0.65" y1="-0.95" x2="-0.65" y2="-0.95" width="0.1016" layer="21" curve="-68.40813"/>
<circle x="0" y="0" radius="1.15" width="0.1016" layer="51"/>
<smd name="A" x="-1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<smd name="C" x="1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.75" y1="0.6" x2="-1.6" y2="1.1" layer="51"/>
<rectangle x1="-1.75" y1="-1.1" x2="-1.6" y2="-0.6" layer="51"/>
<rectangle x1="1.6" y1="-1.1" x2="1.75" y2="-0.6" layer="51" rot="R180"/>
<rectangle x1="1.6" y1="0.6" x2="1.75" y2="1.1" layer="51" rot="R180"/>
<polygon width="0.1016" layer="51">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-0.625"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
<polygon width="0.1016" layer="21">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-1.175"/>
<vertex x="1" y="-1.175"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
</package>
<package name="LD260">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, square, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="1.27" x2="0.9917" y2="0.7934" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="-0.9917" y1="0.7934" x2="0" y2="1.27" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="0" y1="-1.27" x2="0.9917" y2="-0.7934" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="-0.9917" y1="-0.7934" x2="0" y2="-1.27" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="0.9558" y1="-0.8363" x2="1.27" y2="0" width="0.1524" layer="51" curve="41.185419"/>
<wire x1="0.9756" y1="0.813" x2="1.2699" y2="0" width="0.1524" layer="51" curve="-39.806332"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="-0.8265" width="0.1524" layer="51" curve="40.600331"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="0.8265" width="0.1524" layer="51" curve="-40.600331"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<pad name="A" x="-1.27" y="0" drill="1.5" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="1.5" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.635" x2="2.032" y2="0.635" layer="51"/>
<rectangle x1="1.905" y1="-0.635" x2="2.032" y2="0.635" layer="21"/>
</package>
<package name="LED2X5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
2 x 5 mm, rectangle</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-0.254" x2="1.143" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="0.9398" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-0.6096" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.651" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.4478" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-0.6096" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="1.5" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="1.5" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.413" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-1.27" x2="2.413" y2="1.27" layer="21"/>
</package>
<package name="LED3MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
3 mm, round</description>
<wire x1="1.5748" y1="-1.27" x2="1.5748" y2="1.27" width="0.254" layer="51"/>
<wire x1="-1.524" y1="0" x2="-1.1708" y2="0.9756" width="0.1524" layer="51" curve="-39.80361"/>
<wire x1="-1.524" y1="0" x2="-1.1391" y2="-1.0125" width="0.1524" layer="51" curve="41.633208"/>
<wire x1="1.1571" y1="0.9918" x2="1.524" y2="0" width="0.1524" layer="51" curve="-40.601165"/>
<wire x1="1.1708" y1="-0.9756" x2="1.524" y2="0" width="0.1524" layer="51" curve="39.80361"/>
<wire x1="0" y1="1.524" x2="1.2401" y2="0.8858" width="0.1524" layer="21" curve="-54.461337"/>
<wire x1="-1.2192" y1="0.9144" x2="0" y2="1.524" width="0.1524" layer="21" curve="-53.130102"/>
<wire x1="0" y1="-1.524" x2="1.203" y2="-0.9356" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-1.203" y1="-0.9356" x2="0" y2="-1.524" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="-1.016" x2="1.016" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="2.032" x2="1.561" y2="1.3009" width="0.254" layer="21" curve="-50.193108"/>
<wire x1="-1.7929" y1="0.9562" x2="0" y2="2.032" width="0.254" layer="21" curve="-61.926949"/>
<wire x1="0" y1="-2.032" x2="1.5512" y2="-1.3126" width="0.254" layer="21" curve="49.763022"/>
<wire x1="-1.7643" y1="-1.0082" x2="0" y2="-2.032" width="0.254" layer="21" curve="60.255215"/>
<wire x1="-2.032" y1="0" x2="-1.7891" y2="0.9634" width="0.254" layer="51" curve="-28.301701"/>
<wire x1="-2.032" y1="0" x2="-1.7306" y2="-1.065" width="0.254" layer="51" curve="31.60822"/>
<pad name="A" x="-1.27" y="0" drill="1.1" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="1.1" shape="octagon"/>
<text x="1.905" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.905" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LED5MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21" curve="-286.260205"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="1.5" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="1.5" shape="octagon"/>
<text x="3.175" y="0.5334" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2004" y="-1.8034" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LSU260">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
1 mm, round, Siemens</description>
<wire x1="0" y1="-0.508" x2="-1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.508" x2="-1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.508" x2="0" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-0.254" x2="-1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.254" x2="-1.143" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.254" x2="1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="0.254" x2="0.508" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.381" x2="0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-0.381" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.381" x2="0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.508" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0.381" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.254" x2="0.254" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.254" y1="0" x2="0" y2="0.254" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-0.381" x2="0.381" y2="0.381" width="0.1524" layer="21" curve="90"/>
<circle x="0" y="0" radius="0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="1.5" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="1.5" shape="octagon"/>
<text x="-1.2954" y="0.8382" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.8542" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.397" y1="-0.254" x2="-1.143" y2="0.254" layer="51"/>
<rectangle x1="0.508" y1="-0.254" x2="1.397" y2="0.254" layer="51"/>
</package>
<package name="LZR181">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
1 LED, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="0.7439" x2="0" y2="1.143" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="1.143" x2="0.8678" y2="0.7439" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-0.7439" x2="0" y2="-1.143" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-1.143" x2="0.8678" y2="-0.7439" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="0.8678" y1="-0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="0.7439" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="-0.7439" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="1.5" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="1.5" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.889" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.27" y2="0.254" layer="51"/>
</package>
<package name="Q62902-B152">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-2.9718" y1="-1.8542" x2="-2.9718" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-0.254" x2="-2.9718" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="-1.8542" x2="-2.54" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.1082" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="1.8542" x2="2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.54" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-1.1486" y1="0.8814" x2="0" y2="1.4478" width="0.1524" layer="21" curve="-52.498642"/>
<wire x1="0" y1="1.4478" x2="1.1476" y2="0.8827" width="0.1524" layer="21" curve="-52.433716"/>
<wire x1="-1.1351" y1="-0.8987" x2="0" y2="-1.4478" width="0.1524" layer="21" curve="51.629985"/>
<wire x1="0" y1="-1.4478" x2="1.1305" y2="-0.9044" width="0.1524" layer="21" curve="51.339172"/>
<wire x1="1.1281" y1="-0.9074" x2="1.4478" y2="0" width="0.1524" layer="51" curve="38.811177"/>
<wire x1="1.1401" y1="0.8923" x2="1.4478" y2="0" width="0.1524" layer="51" curve="-38.048073"/>
<wire x1="-1.4478" y1="0" x2="-1.1305" y2="-0.9044" width="0.1524" layer="51" curve="38.659064"/>
<wire x1="-1.4478" y1="0" x2="-1.1456" y2="0.8853" width="0.1524" layer="51" curve="-37.696376"/>
<wire x1="0" y1="1.7018" x2="1.4674" y2="0.8618" width="0.1524" layer="21" curve="-59.573488"/>
<wire x1="-1.4618" y1="0.8714" x2="0" y2="1.7018" width="0.1524" layer="21" curve="-59.200638"/>
<wire x1="0" y1="-1.7018" x2="1.4571" y2="-0.8793" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.4571" y1="-0.8793" x2="0" y2="-1.7018" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.7018" y1="0" x2="-1.4447" y2="0.8995" width="0.1524" layer="51" curve="-31.907626"/>
<wire x1="-1.7018" y1="0" x2="-1.4502" y2="-0.8905" width="0.1524" layer="51" curve="31.551992"/>
<wire x1="1.4521" y1="0.8874" x2="1.7018" y2="0" width="0.1524" layer="51" curve="-31.429586"/>
<wire x1="1.4459" y1="-0.8975" x2="1.7018" y2="0" width="0.1524" layer="51" curve="31.828757"/>
<wire x1="-2.1082" y1="1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<wire x1="2.9718" y1="1.8542" x2="2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="-3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B153">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-5.5118" y1="-3.5052" x2="-5.5118" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-0.254" x2="-5.5118" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="-3.5052" x2="-5.08" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-4.6482" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="3.5052" x2="5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.08" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.6482" y1="3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="3.5052" x2="5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.2129" y1="0.0539" x2="-0.0539" y2="2.2129" width="0.1524" layer="51" curve="-90.010616"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<pad name="K" x="-1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<text x="-4.191" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B155">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-1.27" y1="-3.048" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="2.921" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-5.207" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.54" x2="-5.207" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-6.985" y1="0.635" x2="-6.985" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.397" x2="-6.096" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="1.905" x2="-5.207" y2="-1.905" width="0.1524" layer="21"/>
<pad name="K" x="7.62" y="1.27" drill="1.5" shape="long"/>
<pad name="A" x="7.62" y="-1.27" drill="1.5" shape="long"/>
<text x="3.302" y="-2.794" size="1.016" layer="21" ratio="14">A+</text>
<text x="3.302" y="1.778" size="1.016" layer="21" ratio="14">K-</text>
<text x="11.684" y="-2.794" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="0.635" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.921" y1="1.016" x2="6.731" y2="1.524" layer="21"/>
<rectangle x1="2.921" y1="-1.524" x2="6.731" y2="-1.016" layer="21"/>
<hole x="0" y="0" drill="1.5"/>
</package>
<package name="Q62902-B156">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0.0539" y1="-2.2129" x2="2.2129" y2="-0.0539" width="0.1524" layer="51" curve="90.005308"/>
<wire x1="2.54" y1="3.81" x2="3.81" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="-2.54" y2="-3.302" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<text x="-3.81" y="4.0894" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.7846" y="-5.3594" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.556" y="-3.302" size="1.016" layer="21" ratio="14">+</text>
<text x="2.794" y="-3.302" size="1.016" layer="21" ratio="14">-</text>
</package>
<package name="SFH480">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SFH482">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<pad name="A" x="-1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="U57X32">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
rectangle, 5.7 x 3.2 mm</description>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="2.54" y2="1.016" width="0.1524" layer="51"/>
<wire x1="2.286" y1="1.27" x2="2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="2.54" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="2.54" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.016" x2="2.54" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="1.27" x2="-1.778" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.27" x2="0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.762" y1="1.27" x2="0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.27" x2="1.778" y2="-1.27" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="1.5" shape="long" rot="R90"/>
<text x="3.683" y="0.254" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.683" y="-1.524" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="IRL80A">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
IR transmitter Siemens</description>
<wire x1="0.889" y1="2.286" x2="0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.778" x2="0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.889" y1="0.762" x2="0.889" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.635" x2="0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-1.778" x2="0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.286" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="-0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.778" x2="-0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0.762" x2="-0.889" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-1.778" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="0.889" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="0.762" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.254" width="0.0508" layer="21"/>
<wire x1="-1.143" y1="0.508" x2="-1.143" y2="-0.508" width="0.0508" layer="21"/>
<pad name="K" x="0" y="1.27" drill="1.5" shape="octagon"/>
<pad name="A" x="0" y="-1.27" drill="1.5" shape="octagon"/>
<text x="1.27" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.27" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="P-LCC-2-TOPLED-RG">
<description>&lt;b&gt;Hyper TOPLED® RG Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY T776.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="2.45" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-2.45" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="21"/>
<smd name="C" x="0" y="-3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="3.29" size="1.27" layer="21">A</text>
<text x="-0.635" y="-4.56" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-3" x2="1.3" y2="-1.5" layer="31"/>
<rectangle x1="-1.3" y1="1.5" x2="1.3" y2="3" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.15" y1="2.4" x2="1.15" y2="2.7" layer="51"/>
<rectangle x1="-1.15" y1="-2.7" x2="1.15" y2="-2.4" layer="51"/>
<rectangle x1="-1.5" y1="1.5" x2="1.5" y2="3.2" layer="29"/>
<rectangle x1="-1.5" y1="-3.2" x2="1.5" y2="-1.5" layer="29"/>
<hole x="0" y="0" drill="3.3"/>
</package>
<package name="MINI-TOPLED-SANTANA">
<description>&lt;b&gt;Mini TOPLED Santana®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG M470.pdf</description>
<wire x1="0.7" y1="-1" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.35" y1="-1" x2="-0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="-1" x2="-0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="1" x2="0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="0.7" y1="1" x2="0.7" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.45" y1="-0.7" x2="-0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="-0.7" x2="-0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="0.7" x2="0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="0.45" y1="0.7" x2="0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<smd name="C" x="0" y="-2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.55" y1="1.5" x2="0.55" y2="2.1" layer="29"/>
<rectangle x1="-0.55" y1="-2.1" x2="0.55" y2="-1.5" layer="29"/>
<rectangle x1="-0.5" y1="-2.05" x2="0.5" y2="-1.55" layer="31"/>
<rectangle x1="-0.5" y1="1.55" x2="0.5" y2="2.05" layer="31"/>
<rectangle x1="-0.2" y1="-0.4" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.5" y1="-2.1" x2="0.5" y2="-1.4" layer="51"/>
<rectangle x1="-0.5" y1="1.4" x2="0.5" y2="2.05" layer="51"/>
<rectangle x1="-0.5" y1="1" x2="0.5" y2="1.4" layer="21"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-1.05" layer="21"/>
<hole x="0" y="0" drill="3.3"/>
</package>
<package name="LED10MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
10 mm, round</description>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="21" curve="-306.869898"/>
<wire x1="4.445" y1="0" x2="0" y2="-4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="3.81" y1="0" x2="0" y2="-3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="3.175" y1="0" x2="0" y2="-3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="-4.445" y1="0" x2="0" y2="4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.81" y1="0" x2="0" y2="3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.175" y1="0" x2="0" y2="3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="0" y2="2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<circle x="0" y="0" radius="5.08" width="0.127" layer="21"/>
<pad name="K" x="1.27" y="0" drill="1.5" diameter="1.6764" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="1.5" diameter="1.6764" shape="octagon"/>
<text x="6.35" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="6.35" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED" prefix="LED" uservalue="yes">
<description>&lt;b&gt;LED&lt;/b&gt;&lt;p&gt;
&lt;u&gt;OSRAM&lt;/u&gt;:&lt;br&gt;

- &lt;u&gt;CHIPLED&lt;/u&gt;&lt;br&gt;
LG R971, LG N971, LY N971, LG Q971, LY Q971, LO R971, LY R971
LH N974, LH R974&lt;br&gt;
LS Q976, LO Q976, LY Q976&lt;br&gt;
LO Q996&lt;br&gt;

- &lt;u&gt;Hyper CHIPLED&lt;/u&gt;&lt;br&gt;
LW Q18S&lt;br&gt;
LB Q993, LB Q99A, LB R99A&lt;br&gt;

- &lt;u&gt;SideLED&lt;/u&gt;&lt;br&gt;
LS A670, LO A670, LY A670, LG A670, LP A670&lt;br&gt;
LB A673, LV A673, LT A673, LW A673&lt;br&gt;
LH A674&lt;br&gt;
LY A675&lt;br&gt;
LS A676, LA A676, LO A676, LY A676, LW A676&lt;br&gt;
LS A679, LY A679, LG A679&lt;br&gt;

-  &lt;u&gt;Hyper Micro SIDELED®&lt;/u&gt;&lt;br&gt;
LS Y876, LA Y876, LO Y876, LY Y876&lt;br&gt;
LT Y87S&lt;br&gt;

- &lt;u&gt;SmartLED&lt;/u&gt;&lt;br&gt;
LW L88C, LW L88S&lt;br&gt;
LB L89C, LB L89S, LG L890&lt;br&gt;
LS L89K, LO L89K, LY L89K&lt;br&gt;
LS L896, LA L896, LO L896, LY L896&lt;br&gt;

- &lt;u&gt;TOPLED&lt;/u&gt;&lt;br&gt;
LS T670, LO T670, LY T670, LG T670, LP T670&lt;br&gt;
LSG T670, LSP T670, LSY T670, LOP T670, LYG T670&lt;br&gt;
LG T671, LOG T671, LSG T671&lt;br&gt;
LB T673, LV T673, LT T673, LW T673&lt;br&gt;
LH T674&lt;br&gt;
LS T676, LA T676, LO T676, LY T676, LB T676, LH T676, LSB T676, LW T676&lt;br&gt;
LB T67C, LV T67C, LT T67C, LS T67K, LO T67K, LY T67K, LW E67C&lt;br&gt;
LS E67B, LA E67B, LO E67B, LY E67B, LB E67C, LV E67C, LT E67C&lt;br&gt;
LW T67C&lt;br&gt;
LS T679, LY T679, LG T679&lt;br&gt;
LS T770, LO T770, LY T770, LG T770, LP T770&lt;br&gt;
LB T773, LV T773, LT T773, LW T773&lt;br&gt;
LH T774&lt;br&gt;
LS E675, LA E675, LY E675, LS T675&lt;br&gt;
LS T776, LA T776, LO T776, LY T776, LB T776&lt;br&gt;
LHGB T686&lt;br&gt;
LT T68C, LB T68C&lt;br&gt;

- &lt;u&gt;Hyper Mini TOPLED®&lt;/u&gt;&lt;br&gt;
LB M676&lt;br&gt;

- &lt;u&gt;Mini TOPLED Santana®&lt;/u&gt;&lt;br&gt;
LG M470&lt;br&gt;
LS M47K, LO M47K, LY M47K
&lt;p&gt;
Source: http://www.osram.convergy.de&lt;p&gt;

&lt;u&gt;LUXEON:&lt;/u&gt;&lt;br&gt;
- &lt;u&gt;LUMILED®&lt;/u&gt;&lt;br&gt;
LXK2-PW12-R00, LXK2-PW12-S00, LXK2-PW14-U00, LXK2-PW14-V00&lt;br&gt;
LXK2-PM12-R00, LXK2-PM12-S00, LXK2-PM14-U00&lt;br&gt;
LXK2-PE12-Q00, LXK2-PE12-R00, LXK2-PE12-S00, LXK2-PE14-T00, LXK2-PE14-U00&lt;br&gt;
LXK2-PB12-K00, LXK2-PB12-L00, LXK2-PB12-M00, LXK2-PB14-N00, LXK2-PB14-P00, LXK2-PB14-Q00&lt;br&gt;
LXK2-PR12-L00, LXK2-PR12-M00, LXK2-PR14-Q00, LXK2-PR14-R00&lt;br&gt;
LXK2-PD12-Q00, LXK2-PD12-R00, LXK2-PD12-S00&lt;br&gt;
LXK2-PH12-R00, LXK2-PH12-S00&lt;br&gt;
LXK2-PL12-P00, LXK2-PL12-Q00, LXK2-PL12-R00
&lt;p&gt;
Source: www.luxeon.com&lt;p&gt;

&lt;u&gt;KINGBRIGHT:&lt;/U&gt;&lt;p&gt;
KA-3528ASYC&lt;br&gt;
Source: www.kingbright.com</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="SMT1206" package="1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LD260" package="LD260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SQR2X5" package="LED2X5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3MM" package="LED3MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="LED5MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LSU260" package="LSU260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LZR181" package="LZR181">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B152" package="Q62902-B152">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B153" package="Q62902-B153">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B155" package="Q62902-B155">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B156" package="Q62902-B156">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SFH480" package="SFH480">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SFH482" package="SFH482">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SQR5.7X3.2" package="U57X32">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="IRL80A" package="IRL80A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-2" package="P-LCC-2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MINI-TOP" package="OSRAM-MINI-TOP-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SIDELED" package="OSRAM-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMART-LED" package="SMART-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="B"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-2-BACK" package="P-LCC-2-TOPLED-RG">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MICRO-SIDELED" package="MICRO-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-4" package="P-LCC-4">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C@4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIP-LED0603" package="CHIP-LED0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIP-LED0805" package="CHIP-LED0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TOPLED-SANTANA" package="MINI-TOPLED-SANTANA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_1206" package="CHIPLED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_0603" package="CHIPLED_0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED-0603-TTW" package="CHIPLED-0603-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="SMARTLED-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LUMILED+" package="LUMILED+">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LUMILED" package="LUMILED">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10MM" package="LED10MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KA-3528ASYC" package="KA-3528ASYC">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="PIN">
<packages>
<package name="1X10_1.1_UNSIGNED">
<pad name="1" x="-11.43" y="0" drill="1.1"/>
<pad name="2" x="-8.89" y="0" drill="1.1"/>
<pad name="3" x="-6.35" y="0" drill="1.1"/>
<pad name="4" x="-3.81" y="0" drill="1.1"/>
<pad name="5" x="-1.27" y="0" drill="1.1"/>
<pad name="6" x="1.27" y="0" drill="1.1"/>
<pad name="7" x="3.81" y="0" drill="1.1"/>
<pad name="8" x="6.35" y="0" drill="1.1"/>
<pad name="9" x="8.89" y="0" drill="1.1"/>
<pad name="10" x="11.43" y="0" drill="1.1"/>
<text x="-2.54" y="1.27" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="1X01_1.1_UNSIGNED">
<pad name="1" x="0" y="0" drill="1.1"/>
<text x="-2.54" y="1.27" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="1X01_1.1_UNSIGNED_LONG">
<pad name="1" x="0" y="0" drill="1.1" shape="long" rot="R270"/>
<text x="-2.54" y="2.54" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="1X01_0.8_UNSIGNED_SQUARE">
<pad name="1" x="0" y="0" drill="0.8" shape="square"/>
<text x="-3.2" y="0.8" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="1X06_1.1_UNSIGNED">
<pad name="1" x="-6.35" y="0" drill="1.1"/>
<pad name="2" x="-3.81" y="0" drill="1.1"/>
<pad name="3" x="-1.27" y="0" drill="1.1"/>
<pad name="4" x="1.27" y="0" drill="1.1"/>
<pad name="5" x="3.81" y="0" drill="1.1"/>
<pad name="6" x="6.35" y="0" drill="1.1"/>
<text x="-3.81" y="1.27" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="1X06_1.1_ARROW">
<wire x1="0" y1="1.27" x2="0" y2="2.54" width="0.127" layer="21"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="2.54" width="0.127" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="3.81" width="0.127" layer="21"/>
<wire x1="0" y1="3.81" x2="1.27" y2="2.54" width="0.127" layer="21"/>
<wire x1="1.27" y1="2.54" x2="0" y2="2.54" width="0.127" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.1"/>
<pad name="2" x="-3.81" y="0" drill="1.1"/>
<pad name="3" x="-1.27" y="0" drill="1.1"/>
<pad name="4" x="1.27" y="0" drill="1.1"/>
<pad name="5" x="3.81" y="0" drill="1.1"/>
<pad name="6" x="6.35" y="0" drill="1.1"/>
<text x="-7.62" y="1.27" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="1X10">
<wire x1="-2.54" y1="11.43" x2="5.08" y2="11.43" width="0.254" layer="94"/>
<wire x1="5.08" y1="11.43" x2="5.08" y2="-13.97" width="0.254" layer="94"/>
<wire x1="5.08" y1="-13.97" x2="-2.54" y2="-13.97" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-13.97" x2="-2.54" y2="11.43" width="0.254" layer="94"/>
<text x="-3.048" y="12.192" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="0" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="0" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="0" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="0" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="0" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="0" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="0" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="0" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="0" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="0" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="1X01">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<text x="-2.286" y="3.302" size="1.27" layer="95">&gt;NAME</text>
<pin name="1" x="0" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="1X06">
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.254" layer="94"/>
<wire x1="3.81" y1="7.62" x2="3.81" y2="-10.16" width="0.254" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-10.16" x2="-1.27" y2="7.62" width="0.254" layer="94"/>
<text x="-2.54" y="8.89" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="0" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="0" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="0" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="0" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="0" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1X10">
<gates>
<gate name="G$1" symbol="1X10" x="-2.54" y="10.16"/>
</gates>
<devices>
<device name="" package="1X10_1.1_UNSIGNED">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1X01">
<gates>
<gate name="G$1" symbol="1X01" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X01_1.1_UNSIGNED">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LONG" package="1X01_1.1_UNSIGNED_LONG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="08S" package="1X01_0.8_UNSIGNED_SQUARE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1X06">
<gates>
<gate name="G$1" symbol="1X06" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X06_1.1_UNSIGNED">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="A" package="1X06_1.1_ARROW">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
<class number="1" name="VIN" width="0.4064" drill="0">
</class>
<class number="2" name="5V" width="0.254" drill="0">
</class>
<class number="3" name="3V3" width="0.2032" drill="0">
</class>
</classes>
<parts>
<part name="C1" library="SMD" deviceset="C_SMD" device="2012" value="0.1uF"/>
<part name="C2" library="SMD" deviceset="C_SMD" device="2012" value="0.1uF"/>
<part name="C3" library="SMD" deviceset="C_SMD" device="2012" value="10uF"/>
<part name="R1" library="SMD" deviceset="R_SMD" device="2012" value="1K"/>
<part name="R2" library="SMD" deviceset="R_SMD" device="2012" value="1K"/>
<part name="R3" library="SMD" deviceset="R_SMD" device="2012" value="10K"/>
<part name="R4" library="SMD" deviceset="R_SMD" device="2012" value="1K"/>
<part name="LED" library="SMD" deviceset="LED" device="1608" value=""/>
<part name="C4" library="SMD" deviceset="C_SMD" device="2012" value="22pF"/>
<part name="C5" library="SMD" deviceset="C_SMD" device="2012" value="22pF"/>
<part name="Q1" library="crystal" deviceset="CRYSTAL" device="HC49U-V" value="8MHz"/>
<part name="C6" library="SMD" deviceset="C_SMD" device="3216" value="10uF"/>
<part name="5V" library="AZ1086H" deviceset="AZ1086H" device=""/>
<part name="3V3" library="AZ1086H" deviceset="AZ1086H" device=""/>
<part name="J1" library="JACK_NOBGND" deviceset="DCJ0303" device=""/>
<part name="X1" library="USB_FEMALE" deviceset="USB-A003" device=""/>
<part name="IC2" library="MAX3421E" deviceset="2064VET44" device="" value="MAX3421E"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="R5" library="SMD" deviceset="R_SMD" device="2012" value="33"/>
<part name="R6" library="SMD" deviceset="R_SMD" device="2012" value="33"/>
<part name="R7" library="SMD" deviceset="R_SMD" device="2012" value="2.2K"/>
<part name="Q2" library="crystal" deviceset="CRYSTAL" device="HC49U-V" value="12MHz"/>
<part name="C10" library="SMD" deviceset="C_SMD" device="2012" value="18pF"/>
<part name="C11" library="SMD" deviceset="C_SMD" device="2012" value="18pF"/>
<part name="C12" library="SMD" deviceset="C_SMD" device="2012" value="0.1uF"/>
<part name="C7" library="SMD" deviceset="C_SMD_POL" device="3528" value="22uF"/>
<part name="C9" library="SMD" deviceset="C_SMD_POL" device="3528" value="22uF"/>
<part name="IC1" library="ATmega328" deviceset="ATMEGA328SMD" device=""/>
<part name="SJ1" library="jumper" deviceset="SJ" device=""/>
<part name="RESET" library="TACT" deviceset="10-XX" device="AKI"/>
<part name="EXTRALED" library="led" deviceset="LED" device="3MM"/>
<part name="PDPIN" library="PIN" deviceset="1X10" device=""/>
<part name="PCPIN" library="PIN" deviceset="1X10" device=""/>
<part name="MOSI" library="PIN" deviceset="1X01" device="08S"/>
<part name="MISO" library="PIN" deviceset="1X01" device="08S"/>
<part name="SCK" library="PIN" deviceset="1X01" device="08S"/>
<part name="SERIAL" library="PIN" deviceset="1X06" device="A"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="72.39" y="102.87" size="1.778" layer="96">AZ1086H-3.3</text>
<text x="72.39" y="123.19" size="1.778" layer="96">AZ1086H-5</text>
</plain>
<instances>
<instance part="C1" gate="G$1" x="17.78" y="86.36"/>
<instance part="C2" gate="G$1" x="10.16" y="57.15"/>
<instance part="C3" gate="G$1" x="17.78" y="57.15"/>
<instance part="R1" gate="G$1" x="20.32" y="97.79" rot="R90"/>
<instance part="R2" gate="G$1" x="22.86" y="97.79" rot="R90"/>
<instance part="R3" gate="G$1" x="15.24" y="76.2" rot="R90"/>
<instance part="R4" gate="G$1" x="52.07" y="33.02" rot="R90"/>
<instance part="LED" gate="G$1" x="52.07" y="22.86"/>
<instance part="C4" gate="G$1" x="33.02" y="48.26" rot="R90"/>
<instance part="C5" gate="G$1" x="33.02" y="40.64" rot="R90"/>
<instance part="Q1" gate="G$1" x="40.64" y="44.45" rot="R270"/>
<instance part="C6" gate="G$1" x="62.23" y="128.27"/>
<instance part="5V" gate="G$1" x="78.74" y="132.08"/>
<instance part="3V3" gate="G$1" x="78.74" y="110.49"/>
<instance part="J1" gate="G$1" x="31.75" y="132.08"/>
<instance part="X1" gate="G$1" x="187.96" y="78.74" rot="R180"/>
<instance part="IC2" gate="IO" x="247.65" y="63.5"/>
<instance part="GND1" gate="1" x="232.41" y="34.29"/>
<instance part="GND2" gate="1" x="27.94" y="12.7"/>
<instance part="GND3" gate="1" x="77.47" y="85.09"/>
<instance part="GND4" gate="1" x="78.74" y="95.25"/>
<instance part="GND6" gate="1" x="201.93" y="87.63"/>
<instance part="R5" gate="G$1" x="200.66" y="76.2"/>
<instance part="R6" gate="G$1" x="200.66" y="78.74"/>
<instance part="R7" gate="G$1" x="224.79" y="87.63" rot="R90"/>
<instance part="Q2" gate="G$1" x="213.36" y="67.31" smashed="yes" rot="R270">
<attribute name="NAME" x="214.63" y="64.516" size="1.778" layer="95"/>
<attribute name="VALUE" x="214.63" y="68.58" size="1.778" layer="96"/>
</instance>
<instance part="C10" gate="G$1" x="208.28" y="71.12" rot="R90"/>
<instance part="C11" gate="G$1" x="208.28" y="63.5" rot="R90"/>
<instance part="C12" gate="G$1" x="217.17" y="73.66" rot="R90"/>
<instance part="C7" gate="G$1" x="95.25" y="128.27"/>
<instance part="C9" gate="G$1" x="95.25" y="106.68"/>
<instance part="IC1" gate="G$1" x="100.33" y="44.45"/>
<instance part="SJ1" gate="1" x="218.44" y="58.42"/>
<instance part="RESET" gate="1" x="69.85" y="76.2"/>
<instance part="EXTRALED" gate="G$1" x="46.99" y="24.13" smashed="yes">
<attribute name="NAME" x="42.926" y="19.558" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="52.705" y="19.558" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="PDPIN" gate="G$1" x="129.54" y="123.19"/>
<instance part="PCPIN" gate="G$1" x="151.13" y="123.19"/>
<instance part="MOSI" gate="G$1" x="58.42" y="27.94" rot="R180"/>
<instance part="MISO" gate="G$1" x="58.42" y="20.32" rot="R180"/>
<instance part="SCK" gate="G$1" x="142.24" y="22.86"/>
<instance part="SERIAL" gate="G$1" x="22.86" y="111.76" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="17.78" y1="111.76" x2="17.78" y2="88.9" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="SERIAL" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="20.32" y1="100.33" x2="20.32" y2="111.76" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="SERIAL" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="22.86" y1="111.76" x2="22.86" y2="100.33" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="SERIAL" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="40.64" y1="48.26" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<wire x1="40.64" y1="46.99" x2="40.64" y2="48.26" width="0.1524" layer="91"/>
<wire x1="76.2" y1="48.26" x2="40.64" y2="48.26" width="0.1524" layer="91"/>
<junction x="40.64" y="48.26"/>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="Q1" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="PB6(XTAL1/TOSC1)"/>
</segment>
</net>
<net name="M_MISO" class="0">
<segment>
<wire x1="234.95" y1="55.88" x2="224.79" y2="55.88" width="0.1524" layer="91"/>
<label x="224.79" y="55.88" size="1.778" layer="95"/>
<pinref part="IC2" gate="IO" pin="MISO"/>
</segment>
<segment>
<wire x1="76.2" y1="25.4" x2="58.42" y2="20.32" width="0.1524" layer="91"/>
<label x="63.5" y="25.4" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PB4(MISO)"/>
<pinref part="MISO" gate="G$1" pin="1"/>
</segment>
</net>
<net name="M_SCK" class="0">
<segment>
<wire x1="234.95" y1="53.34" x2="224.79" y2="53.34" width="0.1524" layer="91"/>
<label x="224.79" y="53.34" size="1.778" layer="95"/>
<pinref part="IC2" gate="IO" pin="SCK"/>
</segment>
<segment>
<wire x1="124.46" y1="25.4" x2="142.24" y2="25.4" width="0.1524" layer="91"/>
<wire x1="142.24" y1="25.4" x2="142.24" y2="22.86" width="0.1524" layer="91"/>
<label x="128.27" y="25.4" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PB5(SCK)"/>
<pinref part="SCK" gate="G$1" pin="1"/>
</segment>
</net>
<net name="M_MOSI" class="0">
<segment>
<wire x1="234.95" y1="58.42" x2="223.52" y2="58.42" width="0.1524" layer="91"/>
<label x="224.79" y="58.42" size="1.778" layer="95"/>
<pinref part="IC2" gate="IO" pin="MOSI"/>
<pinref part="SJ1" gate="1" pin="2"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<wire x1="95.25" y1="97.79" x2="78.74" y2="97.79" width="0.1524" layer="91"/>
<wire x1="78.74" y1="97.79" x2="50.8" y2="97.79" width="0.1524" layer="91"/>
<wire x1="50.8" y1="97.79" x2="50.8" y2="119.38" width="0.1524" layer="91"/>
<wire x1="50.8" y1="119.38" x2="50.8" y2="129.54" width="0.1524" layer="91"/>
<wire x1="50.8" y1="129.54" x2="39.37" y2="129.54" width="0.1524" layer="91"/>
<wire x1="78.74" y1="100.33" x2="78.74" y2="97.79" width="0.1524" layer="91"/>
<wire x1="95.25" y1="104.14" x2="95.25" y2="97.79" width="0.1524" layer="91"/>
<wire x1="95.25" y1="125.73" x2="95.25" y2="119.38" width="0.1524" layer="91"/>
<wire x1="95.25" y1="119.38" x2="78.74" y2="119.38" width="0.1524" layer="91"/>
<wire x1="78.74" y1="119.38" x2="62.23" y2="119.38" width="0.1524" layer="91"/>
<wire x1="62.23" y1="119.38" x2="50.8" y2="119.38" width="0.1524" layer="91"/>
<wire x1="78.74" y1="121.92" x2="78.74" y2="119.38" width="0.1524" layer="91"/>
<wire x1="62.23" y1="125.73" x2="62.23" y2="119.38" width="0.1524" layer="91"/>
<junction x="50.8" y="119.38"/>
<junction x="62.23" y="119.38"/>
<junction x="78.74" y="119.38"/>
<junction x="78.74" y="97.79"/>
<pinref part="J1" gate="G$1" pin="GND"/>
<pinref part="3V3" gate="G$1" pin="GND"/>
<pinref part="5V" gate="G$1" pin="GND"/>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="C7" gate="G$1" pin="-"/>
<pinref part="C9" gate="G$1" pin="-"/>
</segment>
<segment>
<wire x1="193.04" y1="81.28" x2="170.18" y2="81.28" width="0.1524" layer="91"/>
<wire x1="170.18" y1="81.28" x2="195.58" y2="88.9" width="0.1524" layer="91"/>
<wire x1="195.58" y1="88.9" x2="195.58" y2="90.17" width="0.1524" layer="91"/>
<wire x1="195.58" y1="90.17" x2="201.93" y2="90.17" width="0.1524" layer="91"/>
<wire x1="193.04" y1="91.44" x2="195.58" y2="91.44" width="0.1524" layer="91"/>
<wire x1="195.58" y1="90.17" x2="195.58" y2="91.44" width="0.1524" layer="91"/>
<wire x1="193.04" y1="88.9" x2="195.58" y2="88.9" width="0.1524" layer="91"/>
<junction x="195.58" y="88.9"/>
<junction x="195.58" y="90.17"/>
<pinref part="X1" gate="G$1" pin="4"/>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="X1" gate="G$1" pin="GND2"/>
<pinref part="X1" gate="G$1" pin="GND1"/>
</segment>
<segment>
<wire x1="72.39" y1="87.63" x2="77.47" y2="87.63" width="0.1524" layer="91"/>
<wire x1="72.39" y1="81.28" x2="72.39" y2="87.63" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="RESET" gate="1" pin="S1"/>
</segment>
<segment>
<wire x1="234.95" y1="48.26" x2="232.41" y2="48.26" width="0.1524" layer="91"/>
<wire x1="232.41" y1="48.26" x2="232.41" y2="45.72" width="0.1524" layer="91"/>
<wire x1="234.95" y1="45.72" x2="232.41" y2="45.72" width="0.1524" layer="91"/>
<wire x1="232.41" y1="45.72" x2="232.41" y2="38.1" width="0.1524" layer="91"/>
<wire x1="232.41" y1="38.1" x2="232.41" y2="36.83" width="0.1524" layer="91"/>
<wire x1="214.63" y1="73.66" x2="201.93" y2="73.66" width="0.1524" layer="91"/>
<wire x1="201.93" y1="73.66" x2="201.93" y2="71.12" width="0.1524" layer="91"/>
<wire x1="205.74" y1="71.12" x2="201.93" y2="71.12" width="0.1524" layer="91"/>
<wire x1="201.93" y1="71.12" x2="201.93" y2="63.5" width="0.1524" layer="91"/>
<wire x1="205.74" y1="63.5" x2="201.93" y2="63.5" width="0.1524" layer="91"/>
<wire x1="201.93" y1="63.5" x2="201.93" y2="38.1" width="0.1524" layer="91"/>
<wire x1="201.93" y1="38.1" x2="232.41" y2="38.1" width="0.1524" layer="91"/>
<junction x="232.41" y="45.72"/>
<junction x="232.41" y="38.1"/>
<junction x="201.93" y="71.12"/>
<junction x="201.93" y="63.5"/>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="IC2" gate="IO" pin="GND1"/>
<pinref part="IC2" gate="IO" pin="GND2"/>
<pinref part="C12" gate="G$1" pin="1"/>
<pinref part="C10" gate="G$1" pin="1"/>
<pinref part="C11" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="76.2" y1="53.34" x2="63.5" y2="53.34" width="0.1524" layer="91"/>
<label x="63.5" y="53.34" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="GND2"/>
</segment>
<segment>
<wire x1="76.2" y1="58.42" x2="63.5" y2="58.42" width="0.1524" layer="91"/>
<label x="63.5" y="58.42" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="GND1"/>
</segment>
<segment>
<wire x1="124.46" y1="35.56" x2="137.16" y2="35.56" width="0.1524" layer="91"/>
<label x="128.27" y="35.56" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="GND3"/>
</segment>
<segment>
<wire x1="30.48" y1="105.41" x2="30.48" y2="111.76" width="0.1524" layer="91"/>
<wire x1="30.48" y1="105.41" x2="27.94" y2="105.41" width="0.1524" layer="91"/>
<wire x1="27.94" y1="105.41" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<wire x1="10.16" y1="50.8" x2="10.16" y2="54.61" width="0.1524" layer="91"/>
<wire x1="17.78" y1="54.61" x2="17.78" y2="50.8" width="0.1524" layer="91"/>
<wire x1="17.78" y1="50.8" x2="10.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="17.78" y1="50.8" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<wire x1="30.48" y1="48.26" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="27.94" y1="48.26" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<wire x1="30.48" y1="40.64" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="27.94" y1="40.64" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="52.07" y1="15.24" x2="27.94" y2="15.24" width="0.1524" layer="91"/>
<wire x1="27.94" y1="15.24" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="52.07" y1="20.32" x2="52.07" y2="19.05" width="0.1524" layer="91"/>
<wire x1="52.07" y1="19.05" x2="52.07" y2="15.24" width="0.1524" layer="91"/>
<wire x1="46.99" y1="19.05" x2="52.07" y2="19.05" width="0.1524" layer="91"/>
<wire x1="27.94" y1="105.41" x2="27.94" y2="111.76" width="0.1524" layer="91"/>
<junction x="27.94" y="105.41"/>
<junction x="17.78" y="50.8"/>
<junction x="27.94" y="50.8"/>
<junction x="27.94" y="50.8"/>
<junction x="27.94" y="48.26"/>
<junction x="27.94" y="40.64"/>
<junction x="27.94" y="15.24"/>
<junction x="52.07" y="19.05"/>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="LED" gate="G$1" pin="C"/>
<pinref part="EXTRALED" gate="G$1" pin="C"/>
<pinref part="SERIAL" gate="G$1" pin="5"/>
<pinref part="SERIAL" gate="G$1" pin="6"/>
</segment>
<segment>
<wire x1="151.13" y1="113.03" x2="138.43" y2="113.03" width="0.1524" layer="91"/>
<label x="138.43" y="113.03" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="9"/>
</segment>
<segment>
<wire x1="151.13" y1="115.57" x2="138.43" y2="115.57" width="0.1524" layer="91"/>
<label x="138.43" y="115.57" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="8"/>
</segment>
</net>
<net name="PD6" class="0">
<segment>
<wire x1="76.2" y1="40.64" x2="52.07" y2="40.64" width="0.1524" layer="91"/>
<wire x1="52.07" y1="40.64" x2="52.07" y2="35.56" width="0.1524" layer="91"/>
<label x="63.5" y="40.64" size="1.778" layer="95"/>
<label x="74.93" y="40.64" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PD6(AIN0)"/>
<pinref part="R4" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="129.54" y1="115.57" x2="115.57" y2="115.57" width="0.1524" layer="91"/>
<label x="115.57" y="115.57" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="8"/>
</segment>
</net>
<net name="VIN" class="1">
<segment>
<wire x1="39.37" y1="134.62" x2="55.88" y2="134.62" width="0.1524" layer="91"/>
<wire x1="55.88" y1="134.62" x2="62.23" y2="134.62" width="0.1524" layer="91"/>
<wire x1="62.23" y1="134.62" x2="66.04" y2="134.62" width="0.1524" layer="91"/>
<wire x1="62.23" y1="130.81" x2="62.23" y2="134.62" width="0.1524" layer="91"/>
<wire x1="66.04" y1="113.03" x2="55.88" y2="113.03" width="0.1524" layer="91"/>
<wire x1="55.88" y1="113.03" x2="55.88" y2="134.62" width="0.1524" layer="91"/>
<junction x="62.23" y="134.62"/>
<junction x="55.88" y="134.62"/>
<label x="50.8" y="134.62" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="VIN"/>
<pinref part="5V" gate="G$1" pin="INPUT"/>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="3V3" gate="G$1" pin="INPUT"/>
</segment>
<segment>
<wire x1="129.54" y1="110.49" x2="115.57" y2="110.49" width="0.1524" layer="91"/>
<label x="115.57" y="110.49" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="10"/>
</segment>
</net>
<net name="3V3" class="3">
<segment>
<wire x1="91.44" y1="113.03" x2="95.25" y2="113.03" width="0.1524" layer="91"/>
<wire x1="95.25" y1="113.03" x2="104.14" y2="113.03" width="0.1524" layer="91"/>
<wire x1="95.25" y1="109.22" x2="95.25" y2="113.03" width="0.1524" layer="91"/>
<junction x="95.25" y="113.03"/>
<label x="104.14" y="113.03" size="1.778" layer="95" xref="yes"/>
<pinref part="3V3" gate="G$1" pin="OUTPUT1"/>
<pinref part="C9" gate="G$1" pin="+"/>
</segment>
<segment>
<wire x1="234.95" y1="81.28" x2="232.41" y2="81.28" width="0.1524" layer="91"/>
<wire x1="232.41" y1="81.28" x2="232.41" y2="83.82" width="0.1524" layer="91"/>
<wire x1="232.41" y1="83.82" x2="232.41" y2="92.71" width="0.1524" layer="91"/>
<wire x1="232.41" y1="92.71" x2="232.41" y2="95.25" width="0.1524" layer="91"/>
<wire x1="234.95" y1="83.82" x2="232.41" y2="83.82" width="0.1524" layer="91"/>
<wire x1="232.41" y1="92.71" x2="224.79" y2="90.17" width="0.1524" layer="91"/>
<junction x="232.41" y="83.82"/>
<junction x="232.41" y="92.71"/>
<label x="232.41" y="95.25" size="1.778" layer="95" xref="yes"/>
<pinref part="IC2" gate="IO" pin="VL"/>
<pinref part="IC2" gate="IO" pin="VCC"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="25.4" y1="102.87" x2="25.4" y2="111.76" width="0.1524" layer="91"/>
<wire x1="25.4" y1="102.87" x2="35.56" y2="102.87" width="0.1524" layer="91"/>
<wire x1="25.4" y1="102.87" x2="25.4" y2="71.12" width="0.1524" layer="91"/>
<wire x1="25.4" y1="71.12" x2="15.24" y2="73.66" width="0.1524" layer="91"/>
<wire x1="25.4" y1="71.12" x2="25.4" y2="60.96" width="0.1524" layer="91"/>
<wire x1="25.4" y1="60.96" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
<wire x1="17.78" y1="59.69" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
<wire x1="17.78" y1="60.96" x2="10.16" y2="60.96" width="0.1524" layer="91"/>
<wire x1="10.16" y1="60.96" x2="10.16" y2="59.69" width="0.1524" layer="91"/>
<junction x="25.4" y="102.87"/>
<junction x="25.4" y="71.12"/>
<junction x="17.78" y="60.96"/>
<label x="35.56" y="102.87" size="1.778" layer="95" xref="yes"/>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="SERIAL" gate="G$1" pin="4"/>
</segment>
<segment>
<wire x1="76.2" y1="55.88" x2="63.5" y2="55.88" width="0.1524" layer="91"/>
<label x="63.5" y="55.88" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="VCC1"/>
</segment>
<segment>
<wire x1="76.2" y1="50.8" x2="63.5" y2="50.8" width="0.1524" layer="91"/>
<label x="63.5" y="50.8" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="VCC2"/>
</segment>
<segment>
<wire x1="124.46" y1="27.94" x2="137.16" y2="27.94" width="0.1524" layer="91"/>
<label x="128.27" y="27.94" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="AVCC"/>
</segment>
<segment>
<wire x1="129.54" y1="113.03" x2="115.57" y2="113.03" width="0.1524" layer="91"/>
<label x="115.57" y="113.03" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="9"/>
</segment>
</net>
<net name="5V" class="2">
<segment>
<wire x1="91.44" y1="134.62" x2="95.25" y2="134.62" width="0.1524" layer="91"/>
<wire x1="95.25" y1="134.62" x2="104.14" y2="134.62" width="0.1524" layer="91"/>
<wire x1="95.25" y1="130.81" x2="95.25" y2="134.62" width="0.1524" layer="91"/>
<junction x="95.25" y="134.62"/>
<label x="104.14" y="134.62" size="1.778" layer="95" xref="yes"/>
<pinref part="5V" gate="G$1" pin="OUTPUT1"/>
<pinref part="C7" gate="G$1" pin="+"/>
</segment>
<segment>
<wire x1="193.04" y1="73.66" x2="195.58" y2="68.58" width="0.1524" layer="91"/>
<label x="195.58" y="68.58" size="1.778" layer="95" xref="yes"/>
<pinref part="X1" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="151.13" y1="110.49" x2="138.43" y2="110.49" width="0.1524" layer="91"/>
<label x="138.43" y="110.49" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="10"/>
</segment>
</net>
<net name="PD1" class="0">
<segment>
<wire x1="20.32" y1="88.9" x2="20.32" y2="95.25" width="0.1524" layer="91"/>
<wire x1="20.32" y1="88.9" x2="143.51" y2="88.9" width="0.1524" layer="91"/>
<wire x1="143.51" y1="88.9" x2="143.51" y2="60.96" width="0.1524" layer="91"/>
<wire x1="124.46" y1="60.96" x2="143.51" y2="60.96" width="0.1524" layer="91"/>
<label x="74.93" y="63.5" size="1.778" layer="95"/>
<label x="128.27" y="60.96" size="1.778" layer="95"/>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="PD1(TXD)"/>
</segment>
<segment>
<wire x1="129.54" y1="128.27" x2="115.57" y2="128.27" width="0.1524" layer="91"/>
<label x="115.57" y="128.27" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="3"/>
</segment>
</net>
<net name="PD0" class="0">
<segment>
<wire x1="22.86" y1="95.25" x2="22.86" y2="76.2" width="0.1524" layer="91"/>
<wire x1="22.86" y1="76.2" x2="146.05" y2="76.2" width="0.1524" layer="91"/>
<wire x1="146.05" y1="76.2" x2="146.05" y2="58.42" width="0.1524" layer="91"/>
<wire x1="124.46" y1="58.42" x2="146.05" y2="58.42" width="0.1524" layer="91"/>
<label x="74.93" y="66.04" size="1.778" layer="95"/>
<label x="128.27" y="58.42" size="1.778" layer="95"/>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="PD0(RXD)"/>
</segment>
<segment>
<wire x1="129.54" y1="130.81" x2="115.57" y2="130.81" width="0.1524" layer="91"/>
<label x="115.57" y="130.81" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="2"/>
</segment>
</net>
<net name="PD2" class="0">
<segment>
<wire x1="124.46" y1="63.5" x2="137.16" y2="63.5" width="0.1524" layer="91"/>
<label x="128.27" y="63.5" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PD2(INT0)"/>
</segment>
<segment>
<wire x1="129.54" y1="125.73" x2="115.57" y2="125.73" width="0.1524" layer="91"/>
<label x="115.57" y="125.73" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="4"/>
</segment>
</net>
<net name="PD3" class="0">
<segment>
<wire x1="76.2" y1="63.5" x2="63.5" y2="63.5" width="0.1524" layer="91"/>
<label x="63.5" y="63.5" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PD3(INT1)"/>
</segment>
<segment>
<wire x1="129.54" y1="123.19" x2="115.57" y2="123.19" width="0.1524" layer="91"/>
<label x="115.57" y="123.19" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="5"/>
</segment>
</net>
<net name="PD4" class="0">
<segment>
<wire x1="76.2" y1="60.96" x2="63.5" y2="60.96" width="0.1524" layer="91"/>
<label x="63.5" y="60.96" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PD4(XCK/T0)"/>
</segment>
<segment>
<wire x1="129.54" y1="120.65" x2="115.57" y2="120.65" width="0.1524" layer="91"/>
<label x="115.57" y="120.65" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="6"/>
</segment>
</net>
<net name="PD5" class="0">
<segment>
<wire x1="76.2" y1="43.18" x2="63.5" y2="43.18" width="0.1524" layer="91"/>
<label x="63.5" y="43.18" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PD5(T1)"/>
</segment>
<segment>
<wire x1="129.54" y1="118.11" x2="115.57" y2="118.11" width="0.1524" layer="91"/>
<label x="115.57" y="118.11" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="7"/>
</segment>
</net>
<net name="AREF" class="3">
<segment>
<wire x1="124.46" y1="33.02" x2="137.16" y2="33.02" width="0.1524" layer="91"/>
<label x="128.27" y="33.02" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="AREF"/>
</segment>
<segment>
<wire x1="151.13" y1="118.11" x2="138.43" y2="118.11" width="0.1524" layer="91"/>
<label x="138.43" y="118.11" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="7"/>
</segment>
</net>
<net name="PC0" class="0">
<segment>
<wire x1="151.13" y1="120.65" x2="138.43" y2="120.65" width="0.1524" layer="91"/>
<label x="138.43" y="120.65" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="6"/>
</segment>
<segment>
<wire x1="124.46" y1="40.64" x2="137.16" y2="40.64" width="0.1524" layer="91"/>
<label x="128.27" y="40.64" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PC0(ADC0)"/>
</segment>
</net>
<net name="PC1" class="0">
<segment>
<wire x1="151.13" y1="123.19" x2="138.43" y2="123.19" width="0.1524" layer="91"/>
<label x="138.43" y="123.19" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="5"/>
</segment>
<segment>
<wire x1="124.46" y1="43.18" x2="137.16" y2="43.18" width="0.1524" layer="91"/>
<label x="128.27" y="43.18" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PC1(ADC1)"/>
</segment>
</net>
<net name="PC2" class="0">
<segment>
<wire x1="151.13" y1="125.73" x2="138.43" y2="125.73" width="0.1524" layer="91"/>
<label x="138.43" y="125.73" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="4"/>
</segment>
<segment>
<wire x1="124.46" y1="45.72" x2="137.16" y2="45.72" width="0.1524" layer="91"/>
<label x="128.27" y="45.72" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PC2(ADC2)"/>
</segment>
</net>
<net name="PC3" class="0">
<segment>
<wire x1="151.13" y1="128.27" x2="138.43" y2="128.27" width="0.1524" layer="91"/>
<label x="138.43" y="128.27" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="3"/>
</segment>
<segment>
<wire x1="124.46" y1="48.26" x2="137.16" y2="48.26" width="0.1524" layer="91"/>
<label x="128.27" y="48.26" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PC3(ADC3)"/>
</segment>
</net>
<net name="PC4" class="0">
<segment>
<wire x1="151.13" y1="130.81" x2="138.43" y2="130.81" width="0.1524" layer="91"/>
<label x="138.43" y="130.81" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="124.46" y1="50.8" x2="137.16" y2="50.8" width="0.1524" layer="91"/>
<label x="128.27" y="50.8" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PC4(ADC4/SDA)"/>
</segment>
</net>
<net name="PC5" class="0">
<segment>
<wire x1="151.13" y1="133.35" x2="138.43" y2="133.35" width="0.1524" layer="91"/>
<label x="138.43" y="133.35" size="1.778" layer="95"/>
<pinref part="PCPIN" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="124.46" y1="53.34" x2="137.16" y2="53.34" width="0.1524" layer="91"/>
<label x="128.27" y="53.34" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PC5(ADC5/SCL)"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<wire x1="17.78" y1="83.82" x2="15.24" y2="78.74" width="0.1524" layer="91"/>
<wire x1="17.78" y1="83.82" x2="17.78" y2="68.58" width="0.1524" layer="91"/>
<wire x1="17.78" y1="68.58" x2="69.85" y2="68.58" width="0.1524" layer="91"/>
<wire x1="69.85" y1="68.58" x2="69.85" y2="71.12" width="0.1524" layer="91"/>
<wire x1="69.85" y1="68.58" x2="148.59" y2="68.58" width="0.1524" layer="91"/>
<wire x1="148.59" y1="68.58" x2="148.59" y2="55.88" width="0.1524" layer="91"/>
<wire x1="124.46" y1="55.88" x2="148.59" y2="55.88" width="0.1524" layer="91"/>
<junction x="17.78" y="83.82"/>
<junction x="69.85" y="68.58"/>
<label x="74.93" y="68.58" size="1.778" layer="95"/>
<label x="128.27" y="55.88" size="1.778" layer="95"/>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="IC1" gate="G$1" pin="PC6(RESET)"/>
<pinref part="RESET" gate="1" pin="P"/>
</segment>
<segment>
<wire x1="129.54" y1="133.35" x2="115.57" y2="133.35" width="0.1524" layer="91"/>
<label x="115.57" y="133.35" size="1.778" layer="95"/>
<pinref part="PDPIN" gate="G$1" pin="1"/>
</segment>
</net>
<net name="M_RST" class="0">
<segment>
<wire x1="234.95" y1="63.5" x2="224.79" y2="63.5" width="0.1524" layer="91"/>
<label x="224.79" y="63.5" size="1.778" layer="95"/>
<pinref part="IC2" gate="IO" pin="RES"/>
</segment>
<segment>
<wire x1="76.2" y1="38.1" x2="63.5" y2="38.1" width="0.1524" layer="91"/>
<label x="63.5" y="38.1" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PD7(AIN1)"/>
</segment>
</net>
<net name="M_GPX" class="0">
<segment>
<wire x1="234.95" y1="60.96" x2="224.79" y2="60.96" width="0.1524" layer="91"/>
<label x="224.79" y="60.96" size="1.778" layer="95"/>
<pinref part="IC2" gate="IO" pin="GPX"/>
</segment>
<segment>
<wire x1="76.2" y1="35.56" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
<label x="63.5" y="35.56" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PB0(ICP)"/>
</segment>
</net>
<net name="M_INT" class="0">
<segment>
<wire x1="234.95" y1="66.04" x2="224.79" y2="66.04" width="0.1524" layer="91"/>
<wire x1="224.79" y1="66.04" x2="224.79" y2="85.09" width="0.1524" layer="91"/>
<label x="224.79" y="66.04" size="1.778" layer="95"/>
<pinref part="IC2" gate="IO" pin="INT"/>
<pinref part="R7" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="76.2" y1="33.02" x2="63.5" y2="33.02" width="0.1524" layer="91"/>
<label x="63.5" y="33.02" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PB1(OC1A)"/>
</segment>
</net>
<net name="M_SS" class="0">
<segment>
<wire x1="234.95" y1="50.8" x2="224.79" y2="50.8" width="0.1524" layer="91"/>
<label x="224.79" y="50.8" size="1.778" layer="95"/>
<pinref part="IC2" gate="IO" pin="SS"/>
</segment>
<segment>
<wire x1="76.2" y1="30.48" x2="63.5" y2="30.48" width="0.1524" layer="91"/>
<label x="63.5" y="30.48" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PB2(SS/OC1B)"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="193.04" y1="78.74" x2="198.12" y2="78.74" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="3"/>
<pinref part="R6" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="198.12" y1="76.2" x2="193.04" y2="76.2" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="X1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<wire x1="203.2" y1="78.74" x2="234.95" y2="78.74" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="IC2" gate="IO" pin="D+"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<wire x1="234.95" y1="76.2" x2="203.2" y2="76.2" width="0.1524" layer="91"/>
<pinref part="IC2" gate="IO" pin="D-"/>
<pinref part="R5" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<wire x1="234.95" y1="71.12" x2="213.36" y2="71.12" width="0.1524" layer="91"/>
<wire x1="213.36" y1="71.12" x2="210.82" y2="71.12" width="0.1524" layer="91"/>
<wire x1="213.36" y1="69.85" x2="213.36" y2="71.12" width="0.1524" layer="91"/>
<junction x="213.36" y="71.12"/>
<pinref part="IC2" gate="IO" pin="X0"/>
<pinref part="C10" gate="G$1" pin="2"/>
<pinref part="Q2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="234.95" y1="68.58" x2="219.71" y2="68.58" width="0.1524" layer="91"/>
<wire x1="219.71" y1="68.58" x2="219.71" y2="63.5" width="0.1524" layer="91"/>
<wire x1="219.71" y1="63.5" x2="213.36" y2="63.5" width="0.1524" layer="91"/>
<wire x1="213.36" y1="63.5" x2="210.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="213.36" y1="63.5" x2="213.36" y2="64.77" width="0.1524" layer="91"/>
<junction x="213.36" y="63.5"/>
<pinref part="IC2" gate="IO" pin="X1"/>
<pinref part="C11" gate="G$1" pin="2"/>
<pinref part="Q2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="234.95" y1="73.66" x2="219.71" y2="73.66" width="0.1524" layer="91"/>
<pinref part="IC2" gate="IO" pin="VBCOMP"/>
<pinref part="C12" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="35.56" y1="40.64" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
<wire x1="40.64" y1="40.64" x2="44.45" y2="40.64" width="0.1524" layer="91"/>
<wire x1="44.45" y1="40.64" x2="44.45" y2="45.72" width="0.1524" layer="91"/>
<wire x1="40.64" y1="40.64" x2="40.64" y2="41.91" width="0.1524" layer="91"/>
<wire x1="76.2" y1="45.72" x2="44.45" y2="45.72" width="0.1524" layer="91"/>
<junction x="40.64" y="40.64"/>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="Q1" gate="G$1" pin="2"/>
<pinref part="IC1" gate="G$1" pin="PB7(XTAL2/TOSC2)"/>
</segment>
</net>
<net name="A_MOSI" class="0">
<segment>
<wire x1="213.36" y1="58.42" x2="205.74" y2="58.42" width="0.1524" layer="91"/>
<label x="205.74" y="58.42" size="1.778" layer="95"/>
<pinref part="SJ1" gate="1" pin="1"/>
</segment>
<segment>
<wire x1="76.2" y1="27.94" x2="58.42" y2="27.94" width="0.1524" layer="91"/>
<label x="63.5" y="27.94" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PB3(MOSI/OC2)"/>
<pinref part="MOSI" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="52.07" y1="30.48" x2="52.07" y2="26.67" width="0.1524" layer="91"/>
<wire x1="52.07" y1="26.67" x2="52.07" y2="25.4" width="0.1524" layer="91"/>
<wire x1="46.99" y1="26.67" x2="52.07" y2="26.67" width="0.1524" layer="91"/>
<junction x="52.07" y="26.67"/>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="LED" gate="G$1" pin="A"/>
<pinref part="EXTRALED" gate="G$1" pin="A"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
