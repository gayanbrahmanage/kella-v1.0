<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="2.54" unitdist="mm" unit="mm" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ESP32WROOM36">
<packages>
<package name="ESP32WROOM36PINDIP">
<pad name="ESP32WROOM360" x="-21.59" y="15.24" drill="1" shape="octagon"/>
<pad name="ESP32WROOM361" x="-21.59" y="12.7" drill="1" shape="octagon"/>
<pad name="ESP32WROOM362" x="-21.59" y="10.16" drill="1" shape="octagon"/>
<pad name="ESP32WROOM363" x="-21.59" y="7.62" drill="1" shape="octagon"/>
<pad name="ESP32WROOM364" x="-21.59" y="5.08" drill="1" shape="octagon"/>
<pad name="ESP32WROOM365" x="-21.59" y="2.54" drill="1" shape="octagon"/>
<pad name="ESP32WROOM366" x="-21.59" y="0" drill="1" shape="octagon"/>
<pad name="ESP32WROOM367" x="-21.59" y="-2.54" drill="1" shape="octagon"/>
<pad name="ESP32WROOM368" x="-21.59" y="-5.08" drill="1" shape="octagon"/>
<pad name="ESP32WROOM369" x="-21.59" y="-7.62" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3610" x="-21.59" y="-10.16" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3611" x="-21.59" y="-12.7" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3612" x="-21.59" y="-15.24" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3613" x="-21.59" y="-17.78" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3614" x="-21.59" y="-20.32" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3615" x="-21.59" y="-22.86" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3616" x="-21.59" y="-25.4" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3617" x="-21.59" y="-27.94" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3618" x="3.81" y="-27.94" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3619" x="3.81" y="-25.4" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3620" x="3.81" y="-22.86" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3621" x="3.81" y="-20.32" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3622" x="3.81" y="-17.78" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3623" x="3.81" y="-15.24" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3624" x="3.81" y="-12.7" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3625" x="3.81" y="-10.16" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3626" x="3.81" y="-7.62" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3627" x="3.81" y="-5.08" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3628" x="3.81" y="-2.54" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3629" x="3.81" y="0" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3630" x="3.81" y="2.54" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3631" x="3.81" y="5.08" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3632" x="3.81" y="7.62" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3633" x="3.81" y="10.16" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3634" x="3.81" y="12.7" drill="1" shape="octagon"/>
<pad name="ESP32WROOM3635" x="3.81" y="15.24" drill="1" shape="octagon"/>
<wire x1="-23.098" y1="16.748" x2="5.318" y2="16.748" width="0.127" layer="21"/>
<wire x1="5.318" y1="16.748" x2="5.318" y2="-29.448" width="0.127" layer="21"/>
<wire x1="5.318" y1="-29.448" x2="-23.098" y2="-29.448" width="0.127" layer="21"/>
<wire x1="-23.098" y1="-29.448" x2="-23.098" y2="16.748" width="0.127" layer="21"/>
<text x="-23.098" y="16.959665625" size="1.27" layer="25">&gt;NAME</text>
<text x="-23.098" y="-30.929665625" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ESP32WROOM36PINDIP">
<pin name="3V3" x="-40.64" y="25.4" visible="pin" length="middle"/>
<pin name="CLK" x="-40.64" y="22.86" length="middle"/>
<pin name="SD0" x="-40.64" y="20.32" length="middle"/>
<pin name="SD1" x="-40.64" y="17.78" length="middle"/>
<pin name="D0" x="-40.64" y="15.24" length="middle"/>
<pin name="D15" x="-40.64" y="12.7" length="middle"/>
<pin name="D2" x="-40.64" y="10.16" length="middle"/>
<pin name="D4" x="-40.64" y="7.62" length="middle"/>
<pin name="RX2" x="-40.64" y="5.08" length="middle"/>
<pin name="TX2" x="-40.64" y="2.54" length="middle"/>
<pin name="D5" x="-40.64" y="0" length="middle"/>
<pin name="D18" x="-40.64" y="-2.54" length="middle"/>
<pin name="D19" x="-40.64" y="-5.08" length="middle"/>
<pin name="D21" x="-40.64" y="-7.62" length="middle"/>
<pin name="RX0" x="-40.64" y="-10.16" length="middle"/>
<pin name="TX0" x="-40.64" y="-12.7" length="middle"/>
<pin name="D22" x="-40.64" y="-15.24" length="middle"/>
<pin name="D23" x="-40.64" y="-17.78" length="middle"/>
<pin name="EN" x="-2.54" y="-17.78" length="middle" rot="R180"/>
<pin name="VP" x="-2.54" y="-15.24" length="middle" rot="R180"/>
<pin name="VN" x="-2.54" y="-12.7" length="middle" rot="R180"/>
<pin name="D34" x="-2.54" y="-10.16" length="middle" rot="R180"/>
<pin name="D35" x="-2.54" y="-7.62" length="middle" rot="R180"/>
<pin name="D32" x="-2.54" y="-5.08" length="middle" rot="R180"/>
<pin name="D33" x="-2.54" y="-2.54" length="middle" rot="R180"/>
<pin name="D25" x="-2.54" y="0" length="middle" rot="R180"/>
<pin name="D26" x="-2.54" y="2.54" length="middle" rot="R180"/>
<pin name="D27" x="-2.54" y="5.08" length="middle" rot="R180"/>
<pin name="D14" x="-2.54" y="7.62" length="middle" rot="R180"/>
<pin name="D12" x="-2.54" y="10.16" length="middle" rot="R180"/>
<pin name="D13" x="-2.54" y="12.7" length="middle" rot="R180"/>
<pin name="SD2" x="-2.54" y="15.24" length="middle" rot="R180"/>
<pin name="SD3" x="-2.54" y="17.78" length="middle" rot="R180"/>
<pin name="CMD" x="-2.54" y="20.32" length="middle" rot="R180"/>
<pin name="GND" x="-2.54" y="22.86" length="middle" rot="R180"/>
<pin name="5V" x="-2.54" y="25.4" length="middle" rot="R180"/>
<wire x1="-35.56" y1="30.48" x2="-35.56" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-35.56" y1="-22.86" x2="-7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-22.86" x2="-7.62" y2="30.48" width="0.254" layer="94"/>
<wire x1="-7.62" y1="30.48" x2="-35.56" y2="30.48" width="0.254" layer="94"/>
<text x="-20.32" y="-5.08" size="1.778" layer="94" rot="R90">ESP32WROOM36</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32WROOM36">
<gates>
<gate name="G$1" symbol="ESP32WROOM36PINDIP" x="-17.78" y="2.54"/>
</gates>
<devices>
<device name="" package="ESP32WROOM36PINDIP">
<connects>
<connect gate="G$1" pin="3V3" pad="ESP32WROOM360"/>
<connect gate="G$1" pin="5V" pad="ESP32WROOM3635"/>
<connect gate="G$1" pin="CLK" pad="ESP32WROOM361"/>
<connect gate="G$1" pin="CMD" pad="ESP32WROOM3633"/>
<connect gate="G$1" pin="D0" pad="ESP32WROOM364"/>
<connect gate="G$1" pin="D12" pad="ESP32WROOM3629"/>
<connect gate="G$1" pin="D13" pad="ESP32WROOM3630"/>
<connect gate="G$1" pin="D14" pad="ESP32WROOM3628"/>
<connect gate="G$1" pin="D15" pad="ESP32WROOM365"/>
<connect gate="G$1" pin="D18" pad="ESP32WROOM3611"/>
<connect gate="G$1" pin="D19" pad="ESP32WROOM3612"/>
<connect gate="G$1" pin="D2" pad="ESP32WROOM366"/>
<connect gate="G$1" pin="D21" pad="ESP32WROOM3613"/>
<connect gate="G$1" pin="D22" pad="ESP32WROOM3616"/>
<connect gate="G$1" pin="D23" pad="ESP32WROOM3617"/>
<connect gate="G$1" pin="D25" pad="ESP32WROOM3625"/>
<connect gate="G$1" pin="D26" pad="ESP32WROOM3626"/>
<connect gate="G$1" pin="D27" pad="ESP32WROOM3627"/>
<connect gate="G$1" pin="D32" pad="ESP32WROOM3623"/>
<connect gate="G$1" pin="D33" pad="ESP32WROOM3624"/>
<connect gate="G$1" pin="D34" pad="ESP32WROOM3621"/>
<connect gate="G$1" pin="D35" pad="ESP32WROOM3622"/>
<connect gate="G$1" pin="D4" pad="ESP32WROOM367"/>
<connect gate="G$1" pin="D5" pad="ESP32WROOM3610"/>
<connect gate="G$1" pin="EN" pad="ESP32WROOM3618"/>
<connect gate="G$1" pin="GND" pad="ESP32WROOM3634"/>
<connect gate="G$1" pin="RX0" pad="ESP32WROOM3614"/>
<connect gate="G$1" pin="RX2" pad="ESP32WROOM368"/>
<connect gate="G$1" pin="SD0" pad="ESP32WROOM362"/>
<connect gate="G$1" pin="SD1" pad="ESP32WROOM363"/>
<connect gate="G$1" pin="SD2" pad="ESP32WROOM3631"/>
<connect gate="G$1" pin="SD3" pad="ESP32WROOM3632"/>
<connect gate="G$1" pin="TX0" pad="ESP32WROOM3615"/>
<connect gate="G$1" pin="TX2" pad="ESP32WROOM369"/>
<connect gate="G$1" pin="VN" pad="ESP32WROOM3620"/>
<connect gate="G$1" pin="VP" pad="ESP32WROOM3619"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-amp-mt" urn="urn:adsk.eagle:library:123">
<description>&lt;b&gt;AMP Connectors, Type MT&lt;/b&gt;&lt;p&gt;
include  Type MT6; con-amp-mt6.lbr&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="L02P" urn="urn:adsk.eagle:footprint:5718/1" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<wire x1="2.418" y1="-4.345" x2="-2.331" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="2.418" y1="6.45" x2="2.926" y2="7.339" width="0.1524" layer="21"/>
<wire x1="2.418" y1="-3.456" x2="-2.331" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="2.418" y1="-3.456" x2="2.418" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="2.418" y1="6.45" x2="2.418" y2="5.815" width="0.1524" layer="21"/>
<wire x1="2.418" y1="5.815" x2="2.418" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="2.418" y1="5.815" x2="-2.331" y2="5.815" width="0.1524" layer="21"/>
<wire x1="-2.331" y1="-3.456" x2="-2.331" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="-2.331" y1="5.815" x2="-2.331" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="-4.871" y1="-5.869" x2="-4.871" y2="7.339" width="0.1524" layer="21"/>
<wire x1="-4.871" y1="7.339" x2="-2.839" y2="7.339" width="0.1524" layer="21"/>
<wire x1="-2.839" y1="7.339" x2="-2.331" y2="6.45" width="0.1524" layer="21"/>
<wire x1="-2.331" y1="6.45" x2="-2.331" y2="5.815" width="0.1524" layer="21"/>
<wire x1="4.933" y1="-5.869" x2="4.933" y2="7.339" width="0.1524" layer="21"/>
<wire x1="4.933" y1="7.339" x2="2.926" y2="7.339" width="0.1524" layer="21"/>
<wire x1="1.25" y1="3.529" x2="1.25" y2="3.021" width="0.6604" layer="21"/>
<wire x1="4.933" y1="-5.869" x2="2.241" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="0.259" y1="-5.869" x2="2.241" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="0.259" y1="-5.869" x2="-0.249" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-2.23" y1="-5.869" x2="-0.249" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-2.23" y1="-5.869" x2="-4.871" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-1.25" y1="3.529" x2="-1.25" y2="3.021" width="0.6604" layer="21"/>
<pad name="2" x="-1.25" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="1.25" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<text x="-4.7698" y="-8.79" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.195" y="-1.17" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="4.3742" y="-4.345" size="1.27" layer="21" ratio="10" rot="R90">1</text>
<text x="-2.7886" y="-4.472" size="1.27" layer="21" ratio="10" rot="R90">2</text>
<rectangle x1="0.9452" y1="-3.456" x2="1.5548" y2="3.148" layer="21"/>
<rectangle x1="0.9452" y1="-6.504" x2="1.5548" y2="-5.869" layer="51"/>
<rectangle x1="-1.544" y1="-3.456" x2="-0.9344" y2="3.148" layer="21"/>
<rectangle x1="-1.544" y1="-6.504" x2="-0.9344" y2="-5.869" layer="51"/>
</package>
<package name="L09P" urn="urn:adsk.eagle:footprint:5724/1" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<wire x1="11.168" y1="-4.345" x2="-11.107" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="11.168" y1="6.45" x2="11.676" y2="7.339" width="0.1524" layer="21"/>
<wire x1="11.168" y1="-3.456" x2="-11.107" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="11.168" y1="-3.456" x2="11.168" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="11.168" y1="6.45" x2="11.168" y2="5.815" width="0.1524" layer="21"/>
<wire x1="11.168" y1="5.815" x2="11.168" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="11.168" y1="5.815" x2="-11.107" y2="5.815" width="0.1524" layer="21"/>
<wire x1="-11.107" y1="-3.456" x2="-11.107" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="-11.107" y1="5.815" x2="-11.107" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="-13.647" y1="-5.869" x2="-13.647" y2="7.339" width="0.1524" layer="21"/>
<wire x1="-13.647" y1="7.339" x2="-11.615" y2="7.339" width="0.1524" layer="21"/>
<wire x1="-11.615" y1="7.339" x2="-11.107" y2="6.45" width="0.1524" layer="21"/>
<wire x1="-11.107" y1="6.45" x2="-11.107" y2="5.815" width="0.1524" layer="21"/>
<wire x1="13.683" y1="-5.869" x2="13.683" y2="7.339" width="0.1524" layer="21"/>
<wire x1="13.683" y1="7.339" x2="11.676" y2="7.339" width="0.1524" layer="21"/>
<wire x1="10" y1="3.529" x2="10" y2="3.021" width="0.6604" layer="21"/>
<wire x1="13.683" y1="-5.869" x2="10.991" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="9.009" y1="-5.869" x2="10.991" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="9.009" y1="-5.869" x2="8.501" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="6.52" y1="-5.869" x2="8.501" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="6.52" y1="-5.869" x2="6.012" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="4.031" y1="-5.869" x2="6.012" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="4.031" y1="-5.869" x2="3.498" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="1.516" y1="-5.869" x2="3.498" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="1.516" y1="-5.869" x2="1.008" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-0.947" y1="-5.869" x2="1.008" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-0.947" y1="-5.869" x2="-1.532" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-3.513" y1="-5.869" x2="-1.532" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-3.513" y1="-5.869" x2="-4.021" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-6.002" y1="-5.869" x2="-4.021" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-6.002" y1="-5.869" x2="-6.535" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-8.517" y1="-5.869" x2="-6.535" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-8.517" y1="-5.869" x2="-9.025" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-11.006" y1="-5.869" x2="-9.025" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-11.006" y1="-5.869" x2="-13.647" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="7.5" y1="3.529" x2="7.5" y2="3.021" width="0.6604" layer="21"/>
<wire x1="4.996" y1="3.529" x2="4.996" y2="3.021" width="0.6604" layer="21"/>
<wire x1="2.5" y1="3.529" x2="2.5" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-0.008" y1="3.529" x2="-0.008" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-2.497" y1="3.529" x2="-2.497" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-5" y1="3.529" x2="-5" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-7.501" y1="3.529" x2="-7.501" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-9.99" y1="3.529" x2="-9.99" y2="3.021" width="0.6604" layer="21"/>
<pad name="8" x="-7.5" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-5" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-2.5" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="0" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="2.5" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="7.5" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="10" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-10" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<text x="-12.9108" y="-8.79" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.1008" y="6.45" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="13.1242" y="-4.345" size="1.27" layer="21" ratio="10" rot="R90">1</text>
<text x="-11.5646" y="-4.472" size="1.27" layer="21" ratio="10" rot="R90">9</text>
<rectangle x1="9.6952" y1="-3.456" x2="10.3048" y2="3.148" layer="21"/>
<rectangle x1="9.6952" y1="-6.504" x2="10.3048" y2="-5.869" layer="51"/>
<rectangle x1="7.206" y1="-3.456" x2="7.8156" y2="3.148" layer="21"/>
<rectangle x1="7.206" y1="-6.504" x2="7.8156" y2="-5.869" layer="51"/>
<rectangle x1="4.6914" y1="-6.504" x2="5.301" y2="-5.869" layer="51"/>
<rectangle x1="4.6914" y1="-3.456" x2="5.301" y2="3.148" layer="21"/>
<rectangle x1="2.2022" y1="-6.504" x2="2.8118" y2="-5.869" layer="51"/>
<rectangle x1="2.2022" y1="-3.456" x2="2.8118" y2="3.148" layer="21"/>
<rectangle x1="-0.3124" y1="-6.504" x2="0.2972" y2="-5.869" layer="51"/>
<rectangle x1="-0.3124" y1="-3.456" x2="0.2972" y2="3.148" layer="21"/>
<rectangle x1="-2.8016" y1="-6.504" x2="-2.192" y2="-5.869" layer="51"/>
<rectangle x1="-2.8016" y1="-3.456" x2="-2.192" y2="3.148" layer="21"/>
<rectangle x1="-5.3162" y1="-6.504" x2="-4.7066" y2="-5.869" layer="51"/>
<rectangle x1="-5.3162" y1="-3.456" x2="-4.7066" y2="3.148" layer="21"/>
<rectangle x1="-7.8054" y1="-6.504" x2="-7.1958" y2="-5.869" layer="51"/>
<rectangle x1="-7.8054" y1="-3.456" x2="-7.1958" y2="3.148" layer="21"/>
<rectangle x1="-10.2946" y1="-6.504" x2="-9.685" y2="-5.869" layer="51"/>
<rectangle x1="-10.2946" y1="-3.456" x2="-9.685" y2="3.148" layer="21"/>
</package>
<package name="L03P" urn="urn:adsk.eagle:footprint:5717/1" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<wire x1="3.668" y1="-4.345" x2="-3.596" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="3.668" y1="6.45" x2="4.176" y2="7.339" width="0.1524" layer="21"/>
<wire x1="3.668" y1="-3.456" x2="-3.596" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="3.668" y1="-3.456" x2="3.668" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="3.668" y1="6.45" x2="3.668" y2="5.815" width="0.1524" layer="21"/>
<wire x1="3.668" y1="5.815" x2="3.668" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="3.668" y1="5.815" x2="-3.596" y2="5.815" width="0.1524" layer="21"/>
<wire x1="-3.596" y1="-3.456" x2="-3.596" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="-3.596" y1="5.815" x2="-3.596" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="-6.136" y1="-5.869" x2="-6.136" y2="7.339" width="0.1524" layer="21"/>
<wire x1="-6.136" y1="7.339" x2="-4.104" y2="7.339" width="0.1524" layer="21"/>
<wire x1="-4.104" y1="7.339" x2="-3.596" y2="6.45" width="0.1524" layer="21"/>
<wire x1="-3.596" y1="6.45" x2="-3.596" y2="5.815" width="0.1524" layer="21"/>
<wire x1="6.183" y1="-5.869" x2="6.183" y2="7.339" width="0.1524" layer="21"/>
<wire x1="6.183" y1="7.339" x2="4.176" y2="7.339" width="0.1524" layer="21"/>
<wire x1="2.5" y1="3.529" x2="2.5" y2="3.021" width="0.6604" layer="21"/>
<wire x1="6.183" y1="-5.869" x2="3.491" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="1.509" y1="-5.869" x2="3.491" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="1.509" y1="-5.869" x2="1.001" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-0.98" y1="-5.869" x2="1.001" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-0.98" y1="-5.869" x2="-1.488" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-3.469" y1="-5.869" x2="-1.488" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-3.494" y1="-5.869" x2="-6.136" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="0" y1="3.529" x2="0" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-2.504" y1="3.529" x2="-2.504" y2="3.021" width="0.6604" layer="21"/>
<pad name="3" x="-2.5" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="2.5" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<text x="-6.0344" y="-8.79" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.485" y="-1.17" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="5.6242" y="-4.345" size="1.27" layer="21" ratio="10" rot="R90">1</text>
<text x="-4.0532" y="-4.472" size="1.27" layer="21" ratio="10" rot="R90">3</text>
<rectangle x1="2.1952" y1="-3.456" x2="2.8048" y2="3.148" layer="21"/>
<rectangle x1="2.1952" y1="-6.504" x2="2.8048" y2="-5.869" layer="51"/>
<rectangle x1="-0.294" y1="-3.456" x2="0.3156" y2="3.148" layer="21"/>
<rectangle x1="-0.294" y1="-6.504" x2="0.3156" y2="-5.869" layer="51"/>
<rectangle x1="-2.8086" y1="-6.504" x2="-2.199" y2="-5.869" layer="51"/>
<rectangle x1="-2.8086" y1="-3.456" x2="-2.199" y2="3.148" layer="21"/>
</package>
<package name="L06P" urn="urn:adsk.eagle:footprint:5720/1" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<wire x1="7.4184" y1="-4.345" x2="-7.3644" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="7.418" y1="6.45" x2="7.9264" y2="7.339" width="0.1524" layer="21"/>
<wire x1="7.4184" y1="-3.456" x2="-7.3644" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="7.4184" y1="-3.456" x2="7.4184" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="7.418" y1="6.45" x2="7.418" y2="5.815" width="0.1524" layer="21"/>
<wire x1="7.418" y1="5.815" x2="7.4184" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="7.418" y1="5.815" x2="-7.364" y2="5.815" width="0.1524" layer="21"/>
<wire x1="-7.3644" y1="-3.456" x2="-7.3644" y2="-4.345" width="0.1524" layer="21"/>
<wire x1="-7.364" y1="5.815" x2="-7.3644" y2="-3.456" width="0.1524" layer="21"/>
<wire x1="-9.9044" y1="-5.869" x2="-9.9044" y2="7.339" width="0.1524" layer="21"/>
<wire x1="-9.9044" y1="7.339" x2="-7.8724" y2="7.339" width="0.1524" layer="21"/>
<wire x1="-7.8724" y1="7.339" x2="-7.364" y2="6.45" width="0.1524" layer="21"/>
<wire x1="-7.364" y1="6.45" x2="-7.364" y2="5.815" width="0.1524" layer="21"/>
<wire x1="9.933" y1="-5.869" x2="9.933" y2="7.339" width="0.1524" layer="21"/>
<wire x1="9.933" y1="7.339" x2="7.9264" y2="7.339" width="0.1524" layer="21"/>
<wire x1="6.25" y1="3.529" x2="6.25" y2="3.021" width="0.6604" layer="21"/>
<wire x1="9.933" y1="-5.869" x2="7.2406" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="5.2594" y1="-5.869" x2="7.2406" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="5.2594" y1="-5.869" x2="4.7514" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="2.77" y1="-5.869" x2="4.7514" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="2.77" y1="-5.869" x2="2.262" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="0.281" y1="-5.869" x2="2.262" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="0.281" y1="-5.869" x2="-0.252" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-2.234" y1="-5.869" x2="-0.252" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-2.234" y1="-5.869" x2="-2.742" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-4.697" y1="-5.869" x2="-2.742" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-4.697" y1="-5.869" x2="-5.282" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="-7.2628" y1="-5.869" x2="-5.282" y2="-5.869" width="0.1524" layer="51"/>
<wire x1="-7.2628" y1="-5.869" x2="-9.9044" y2="-5.869" width="0.1524" layer="21"/>
<wire x1="3.75" y1="3.529" x2="3.75" y2="3.021" width="0.6604" layer="21"/>
<wire x1="1.246" y1="3.529" x2="1.2462" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-1.25" y1="3.529" x2="-1.25" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-3.7576" y1="3.529" x2="-3.758" y2="3.021" width="0.6604" layer="21"/>
<wire x1="-6.2468" y1="3.529" x2="-6.247" y2="3.021" width="0.6604" layer="21"/>
<pad name="3" x="1.25" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-6.25" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-3.75" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.25" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="3.75" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="6.25" y="-6.25" drill="1.016" shape="long" rot="R90"/>
<text x="-9.625" y="-8.79" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.45" y="6.45" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="9.3742" y="-4.345" size="1.27" layer="21" ratio="10" rot="R90">1</text>
<text x="-7.8216" y="-4.472" size="1.27" layer="21" ratio="10" rot="R90">6</text>
<rectangle x1="5.9452" y1="-3.456" x2="6.5548" y2="3.148" layer="21"/>
<rectangle x1="5.9452" y1="-6.504" x2="6.5548" y2="-5.869" layer="51"/>
<rectangle x1="3.456" y1="-3.456" x2="4.0656" y2="3.148" layer="21"/>
<rectangle x1="3.456" y1="-6.504" x2="4.0656" y2="-5.869" layer="51"/>
<rectangle x1="0.9414" y1="-6.504" x2="1.551" y2="-5.869" layer="51"/>
<rectangle x1="0.9414" y1="-3.456" x2="1.551" y2="3.148" layer="21"/>
<rectangle x1="-1.5478" y1="-6.504" x2="-0.9382" y2="-5.869" layer="51"/>
<rectangle x1="-1.5478" y1="-3.456" x2="-0.9382" y2="3.148" layer="21"/>
<rectangle x1="-4.0624" y1="-6.504" x2="-3.4528" y2="-5.869" layer="51"/>
<rectangle x1="-4.0624" y1="-3.456" x2="-3.4528" y2="3.148" layer="21"/>
<rectangle x1="-6.5516" y1="-6.504" x2="-5.942" y2="-5.869" layer="51"/>
<rectangle x1="-6.5516" y1="-3.456" x2="-5.942" y2="3.148" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="L02P" urn="urn:adsk.eagle:package:5777/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="L02P"/>
</packageinstances>
</package3d>
<package3d name="L09P" urn="urn:adsk.eagle:package:5779/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="L09P"/>
</packageinstances>
</package3d>
<package3d name="L03P" urn="urn:adsk.eagle:package:5781/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="L03P"/>
</packageinstances>
</package3d>
<package3d name="L06P" urn="urn:adsk.eagle:package:5771/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="L06P"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="M" urn="urn:adsk.eagle:symbol:5716/1" library_version="2">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<text x="-0.508" y="1.016" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="0.254" y="-2.413" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="L02P" urn="urn:adsk.eagle:component:5826/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="M" x="0" y="2.54" addlevel="always"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always"/>
</gates>
<devices>
<device name="" package="L02P">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5777/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="L09P" urn="urn:adsk.eagle:component:5828/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="M" x="0" y="15.24" addlevel="always"/>
<gate name="-2" symbol="M" x="0" y="10.16" addlevel="always"/>
<gate name="-3" symbol="M" x="0" y="5.08" addlevel="always"/>
<gate name="-4" symbol="M" x="0" y="0" addlevel="always"/>
<gate name="-5" symbol="M" x="0" y="-5.08" addlevel="always"/>
<gate name="-6" symbol="M" x="0" y="-10.16" addlevel="always"/>
<gate name="-7" symbol="M" x="0" y="-15.24" addlevel="always"/>
<gate name="-8" symbol="M" x="0" y="-20.32" addlevel="always"/>
<gate name="-9" symbol="M" x="0" y="-25.4" addlevel="always"/>
</gates>
<devices>
<device name="" package="L09P">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5779/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="L03P" urn="urn:adsk.eagle:component:5835/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="M" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="M" x="0" y="0" addlevel="always"/>
<gate name="-3" symbol="M" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="L03P">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5781/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="L06P" urn="urn:adsk.eagle:component:5821/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="M" x="0" y="17.78" addlevel="always"/>
<gate name="-2" symbol="M" x="0" y="12.7" addlevel="always"/>
<gate name="-3" symbol="M" x="0" y="7.62" addlevel="always"/>
<gate name="-4" symbol="M" x="0" y="2.54" addlevel="always"/>
<gate name="-5" symbol="M" x="0" y="-2.54" addlevel="always"/>
<gate name="-6" symbol="M" x="0" y="-7.62" addlevel="always"/>
</gates>
<devices>
<device name="" package="L06P">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5771/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-amp" urn="urn:adsk.eagle:library:127">
<description>&lt;b&gt;AMP Connectors&lt;/b&gt;&lt;p&gt;
RJ45 Jack connectors&lt;br&gt;
 Based on the previous libraris:
 &lt;ul&gt;
 &lt;li&gt;amp.lbr
 &lt;li&gt;amp-j.lbr
 &lt;li&gt;amp-mta.lbr
 &lt;li&gt;amp-nlok.lbr
 &lt;li&gt;amp-sim.lbr
 &lt;li&gt;amp-micro-match.lbr
 &lt;/ul&gt;
 Sources :
 &lt;ul&gt;
 &lt;li&gt;Catalog 82066 Revised 11-95 
 &lt;li&gt;Product Guide 296785 Rev. 8-99
 &lt;li&gt;Product Guide CD-ROM 1999
 &lt;li&gt;www.amp.com
 &lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="10X08MTA" urn="urn:adsk.eagle:footprint:8080335/1" library_version="4">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;&lt;p&gt;
Source: http://ecommas.tycoelectronics.com .. ENG_CD_640456_W.pdf</description>
<wire x1="-10.16" y1="-1.27" x2="-10.16" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.27" x2="-10.16" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.27" x2="10.16" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.27" x2="10.16" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.27" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="1.27" width="0.1524" layer="21"/>
<pad name="7" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.9812" y="-3.2512" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.0762" y="2.2507" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="21"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="21"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="21"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="21"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="21"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="21"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="21"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="10X08MTA" urn="urn:adsk.eagle:package:8081637/1" type="box" library_version="4">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;&lt;p&gt;
Source: http://ecommas.tycoelectronics.com .. ENG_CD_640456_W.pdf</description>
<packageinstances>
<packageinstance name="10X08MTA"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MTA-1_8" urn="urn:adsk.eagle:symbol:8079837/1" library_version="4">
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="-1.905" width="0.254" layer="94"/>
<wire x1="11.43" y1="-1.905" x2="-8.89" y2="-1.905" width="0.254" layer="94"/>
<wire x1="11.43" y1="-1.905" x2="11.43" y2="1.27" width="0.254" layer="94"/>
<wire x1="-8.89" y1="1.27" x2="11.43" y2="1.27" width="0.254" layer="94"/>
<circle x="-7.62" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="-5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="7.62" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="10.16" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="12.7" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="12.7" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-8.89" y="0" size="1.27" layer="95" rot="R180">1</text>
<pin name="1" x="-7.62" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="3" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="4" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="5" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="6" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="7" x="7.62" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="8" x="10.16" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MTA08-100" urn="urn:adsk.eagle:component:8082812/2" prefix="J" uservalue="yes" library_version="4">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MTA-1_8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="10X08MTA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8081637/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-wago-508" urn="urn:adsk.eagle:library:196">
<description>&lt;b&gt;Wago Screw Clamps&lt;/b&gt;&lt;p&gt;
Grid 5.08 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="W237-6P" urn="urn:adsk.eagle:footprint:10716/1" library_version="2">
<description>&lt;b&gt;WAGO SREW CLAMP&lt;/b&gt;</description>
<wire x1="11.7856" y1="-1.6002" x2="13.589" y2="0.3556" width="0.254" layer="51"/>
<wire x1="6.7056" y1="-1.6764" x2="8.6106" y2="0.3556" width="0.254" layer="51"/>
<wire x1="1.5494" y1="-1.651" x2="3.556" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-3.4544" y1="-1.6002" x2="-1.651" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-8.5344" y1="-1.6764" x2="-6.6294" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-13.6906" y1="-1.651" x2="-11.684" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-15.24" y1="-4.826" x2="15.24" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="15.24" y1="4.445" x2="0" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-4.826" x2="-15.24" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-2.413" x2="-13.589" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-13.589" y1="-2.413" x2="-11.811" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-11.811" y1="-2.413" x2="-8.509" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.413" x2="-3.429" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-2.413" x2="0" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-2.413" x2="-15.24" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="4.191" x2="-15.24" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="4.191" x2="15.24" y2="4.191" width="0.1524" layer="21"/>
<wire x1="15.24" y1="4.445" x2="15.24" y2="4.191" width="0.1524" layer="21"/>
<wire x1="15.24" y1="4.191" x2="15.24" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-2.413" x2="15.24" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="0" y1="4.445" x2="0" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="0" y1="4.445" x2="-15.24" y2="4.445" width="0.1524" layer="21"/>
<wire x1="0" y1="-2.413" x2="1.651" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.413" x2="6.731" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.413" x2="11.811" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="13.589" y1="-2.413" x2="15.24" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="-2.413" x2="-6.731" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-2.413" x2="-1.651" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-2.413" x2="3.429" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="6.731" y1="-2.413" x2="8.509" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="11.811" y1="-2.413" x2="13.589" y2="-2.413" width="0.1524" layer="51"/>
<circle x="-12.7" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.54" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-12.7" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="-2.54" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="-7.62" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-7.62" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.54" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="12.7" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.54" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="12.7" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="7.62" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="7.62" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-12.7" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="-7.62" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="5" x="7.62" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="6" x="12.7" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<text x="-14.605" y="1.27" size="1.27" layer="51" ratio="10">1</text>
<text x="-9.4742" y="1.2192" size="1.27" layer="51" ratio="10">2</text>
<text x="-4.3942" y="1.27" size="1.27" layer="51" ratio="10">3</text>
<text x="-13.97" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-13.97" y="-6.858" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="1.27" size="1.27" layer="51" ratio="10">4</text>
<text x="5.7658" y="1.2192" size="1.27" layer="51" ratio="10">5</text>
<text x="10.8458" y="1.27" size="1.27" layer="51" ratio="10">6</text>
</package>
</packages>
<packages3d>
<package3d name="W237-6P" urn="urn:adsk.eagle:package:10742/1" type="box" library_version="2">
<description>WAGO SREW CLAMP</description>
<packageinstances>
<packageinstance name="W237-6P"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="KL" urn="urn:adsk.eagle:symbol:10710/1" library_version="2">
<wire x1="1.778" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="0.889" y="0" radius="0.898" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KL+V" urn="urn:adsk.eagle:symbol:10711/1" library_version="2">
<wire x1="1.778" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="0.889" y="0" radius="0.898" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="W237-06P" urn="urn:adsk.eagle:component:10758/2" prefix="X" uservalue="yes" library_version="2">
<description>&lt;b&gt;WAGO SREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="-5.08" addlevel="always"/>
<gate name="-3" symbol="KL" x="0" y="-10.16" addlevel="always"/>
<gate name="-4" symbol="KL" x="0" y="-15.24" addlevel="always"/>
<gate name="-5" symbol="KL" x="0" y="-20.32" addlevel="always"/>
<gate name="-6" symbol="KL+V" x="0" y="-25.4" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-6P">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10742/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="diode" urn="urn:adsk.eagle:library:210">
<description>&lt;b&gt;Diodes&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola : www.onsemi.com
&lt;li&gt;Fairchild : www.fairchildsemi.com
&lt;li&gt;Philips : www.semiconductors.com
&lt;li&gt;Vishay : www.vishay.de
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DO201-15" urn="urn:adsk.eagle:footprint:43127/1" library_version="8">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 5.6 mm, horizontal, grid 15.24 mm</description>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0.5842" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.143" y2="0.5842" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.5842" x2="1.143" y2="-0.5842" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.5842" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.5842" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.794" x2="-5.08" y2="2.794" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.794" x2="5.08" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.794" x2="5.08" y2="2.794" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-2.794" x2="-5.08" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0" x2="6.223" y2="0" width="1.27" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.223" y2="0" width="1.27" layer="51"/>
<pad name="C" x="-7.62" y="0" drill="1.4986" shape="long"/>
<pad name="A" x="7.62" y="0" drill="1.4986" shape="long"/>
<text x="-5.08" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.191" y1="-2.794" x2="-3.429" y2="2.794" layer="21"/>
<rectangle x1="-5.969" y1="-0.635" x2="-5.08" y2="0.635" layer="21"/>
<rectangle x1="5.08" y1="-0.635" x2="5.969" y2="0.635" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="DO201-15" urn="urn:adsk.eagle:package:43365/2" type="model" library_version="8">
<description>DIODE
diameter 5.6 mm, horizontal, grid 15.24 mm</description>
<packageinstances>
<packageinstance name="DO201-15"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="D" urn="urn:adsk.eagle:symbol:43091/2" library_version="8">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<text x="2.54" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.3114" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
<pin name="A" x="-2.54" y="0" visible="off" length="point" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="UF5400" urn="urn:adsk.eagle:component:43531/4" prefix="D" library_version="8">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
ultra fast rectifier, 3 A</description>
<gates>
<gate name="1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DO201-15">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:43365/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26990/1" library_version="2">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:27037/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
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
<library name="docu-dummy" urn="urn:adsk.eagle:library:215">
<description>Dummy symbols</description>
<packages>
</packages>
<symbols>
<symbol name="RESISTOR" urn="urn:adsk.eagle:symbol:13162/1" library_version="3">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:13171/1" prefix="R" library_version="3">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
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
<library name="con-phoenix-254" urn="urn:adsk.eagle:library:172">
<description>&lt;b&gt;Phoenix Connectors&lt;/b&gt;&lt;p&gt;
Grid 2.54 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="12POL254" urn="urn:adsk.eagle:footprint:9314/1" library_version="2">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<wire x1="-15.37" y1="-1.45" x2="15.37" y2="-1.45" width="0.254" layer="21"/>
<wire x1="15.37" y1="-1.45" x2="15.37" y2="1.45" width="0.254" layer="21"/>
<wire x1="15.37" y1="1.45" x2="-15.37" y2="1.45" width="0.254" layer="21"/>
<wire x1="-15.37" y1="1.45" x2="-15.37" y2="-1.45" width="0.254" layer="21"/>
<wire x1="-15.26" y1="1.1" x2="15.26" y2="1.1" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-0.508" x2="-13.462" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-12.192" y1="-0.254" x2="-10.668" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-9.398" y1="0.635" x2="-8.382" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="0.381" x2="-5.588" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="0.635" x2="-3.302" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="0.381" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.635" x2="1.778" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="3.175" y1="-0.508" x2="4.318" y2="0.635" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-0.508" x2="6.858" y2="0.635" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-0.508" x2="9.398" y2="0.635" width="0.1524" layer="51"/>
<wire x1="10.795" y1="-0.508" x2="11.938" y2="0.635" width="0.1524" layer="51"/>
<wire x1="13.335" y1="-0.508" x2="14.478" y2="0.635" width="0.1524" layer="51"/>
<circle x="-13.97" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-11.43" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-8.89" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="8.89" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="11.43" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="13.97" y="0" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-13.97" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="2" x="-11.43" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="3" x="-8.89" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="4" x="-6.35" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="6" x="-1.27" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="7" x="1.27" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="8" x="3.81" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="9" x="6.35" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="10" x="8.89" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="12" x="13.97" y="0" drill="1.2" shape="long" rot="R90"/>
<text x="-15.494" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-15.494" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="4POL254" urn="urn:adsk.eagle:footprint:9307/1" library_version="2">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<wire x1="-5.21" y1="-1.45" x2="5.21" y2="-1.45" width="0.254" layer="21"/>
<wire x1="5.21" y1="-1.45" x2="5.21" y2="1.45" width="0.254" layer="21"/>
<wire x1="5.21" y1="1.45" x2="-5.21" y2="1.45" width="0.254" layer="21"/>
<wire x1="-5.21" y1="1.45" x2="-5.21" y2="-1.45" width="0.254" layer="21"/>
<wire x1="-5.1" y1="1.1" x2="5.1" y2="1.1" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-3.302" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-0.254" x2="-0.508" y2="0.127" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.635" x2="1.778" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="3.048" y1="0.381" x2="4.572" y2="-0.381" width="0.1524" layer="51"/>
<circle x="-3.81" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="0" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.2" shape="long" rot="R90"/>
<text x="-5.334" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.334" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="12POL254" urn="urn:adsk.eagle:package:9323/1" type="box" library_version="2">
<description>PHOENIX CONNECTOR</description>
<packageinstances>
<packageinstance name="12POL254"/>
</packageinstances>
</package3d>
<package3d name="4POL254" urn="urn:adsk.eagle:package:9326/1" type="box" library_version="2">
<description>PHOENIX CONNECTOR</description>
<packageinstances>
<packageinstance name="4POL254"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="SKB" urn="urn:adsk.eagle:symbol:9303/1" library_version="2">
<wire x1="2.032" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.556" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="SKBV" urn="urn:adsk.eagle:symbol:9304/1" library_version="2">
<wire x1="2.032" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.556" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.016" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MPT12" urn="urn:adsk.eagle:component:9332/2" prefix="X" uservalue="yes" library_version="2">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="SKB" x="2.54" y="17.78" addlevel="always"/>
<gate name="-2" symbol="SKB" x="2.54" y="12.7" addlevel="always"/>
<gate name="-3" symbol="SKB" x="2.54" y="7.62" addlevel="always"/>
<gate name="-4" symbol="SKB" x="2.54" y="2.54" addlevel="always"/>
<gate name="-5" symbol="SKB" x="2.54" y="-2.54" addlevel="always"/>
<gate name="-6" symbol="SKB" x="2.54" y="-7.62" addlevel="always"/>
<gate name="-7" symbol="SKB" x="25.4" y="17.78" addlevel="always"/>
<gate name="-8" symbol="SKB" x="25.4" y="12.7" addlevel="always"/>
<gate name="-9" symbol="SKB" x="25.4" y="7.62" addlevel="always"/>
<gate name="-10" symbol="SKB" x="25.4" y="2.54" addlevel="always"/>
<gate name="-11" symbol="SKB" x="25.4" y="-2.54" addlevel="always"/>
<gate name="-12" symbol="SKBV" x="25.4" y="-7.62" addlevel="always"/>
</gates>
<devices>
<device name="" package="12POL254">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9323/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MPT4" urn="urn:adsk.eagle:component:9333/2" prefix="X" uservalue="yes" library_version="2">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="SKB" x="0" y="10.16" addlevel="always"/>
<gate name="-2" symbol="SKB" x="0" y="5.08" addlevel="always"/>
<gate name="-3" symbol="SKB" x="0" y="0" addlevel="always"/>
<gate name="-4" symbol="SKBV" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="4POL254">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9326/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="5" constant="no"/>
</technology>
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
</classes>
<parts>
<part name="U$1" library="ESP32WROOM36" deviceset="ESP32WROOM36" device=""/>
<part name="U$2" library="ESP32WROOM36" deviceset="ESP32WROOM36" device=""/>
<part name="SV1" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="L02P" device="" package3d_urn="urn:adsk.eagle:package:5777/1"/>
<part name="SV2" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="L09P" device="" package3d_urn="urn:adsk.eagle:package:5779/1"/>
<part name="SV3" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="L09P" device="" package3d_urn="urn:adsk.eagle:package:5779/1"/>
<part name="J1" library="con-amp" library_urn="urn:adsk.eagle:library:127" deviceset="MTA08-100" device="" package3d_urn="urn:adsk.eagle:package:8081637/1"/>
<part name="J2" library="con-amp" library_urn="urn:adsk.eagle:library:127" deviceset="MTA08-100" device="" package3d_urn="urn:adsk.eagle:package:8081637/1"/>
<part name="X1" library="con-wago-508" library_urn="urn:adsk.eagle:library:196" deviceset="W237-06P" device="" package3d_urn="urn:adsk.eagle:package:10742/1"/>
<part name="X2" library="con-wago-508" library_urn="urn:adsk.eagle:library:196" deviceset="W237-06P" device="" package3d_urn="urn:adsk.eagle:package:10742/1"/>
<part name="D1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="UF5400" device="" package3d_urn="urn:adsk.eagle:package:43365/2"/>
<part name="D2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="UF5400" device="" package3d_urn="urn:adsk.eagle:package:43365/2"/>
<part name="SV4" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="L03P" device="" package3d_urn="urn:adsk.eagle:package:5781/1"/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="R1" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R2" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R3" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY7" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="R4" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R5" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R6" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="SUPPLY8" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY9" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY10" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY11" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY12" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="X3" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT12" device="" package3d_urn="urn:adsk.eagle:package:9323/1"/>
<part name="X4" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT12" device="" package3d_urn="urn:adsk.eagle:package:9323/1"/>
<part name="X5" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT12" device="" package3d_urn="urn:adsk.eagle:package:9323/1"/>
<part name="SUPPLY13" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="X6" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT4" device="" package3d_urn="urn:adsk.eagle:package:9326/1"/>
<part name="X7" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT12" device="" package3d_urn="urn:adsk.eagle:package:9323/1"/>
<part name="X8" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT12" device="" package3d_urn="urn:adsk.eagle:package:9323/1"/>
<part name="X9" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT12" device="" package3d_urn="urn:adsk.eagle:package:9323/1"/>
<part name="SUPPLY14" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SV5" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="L06P" device="" package3d_urn="urn:adsk.eagle:package:5771/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="63.5" y="53.34" smashed="yes"/>
<instance part="U$2" gate="G$1" x="160.02" y="53.34" smashed="yes"/>
<instance part="SV1" gate="-1" x="15.24" y="99.06" smashed="yes">
<attribute name="NAME" x="14.732" y="100.076" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="15.494" y="96.647" size="1.778" layer="96"/>
</instance>
<instance part="SV1" gate="-2" x="15.24" y="93.98" smashed="yes">
<attribute name="NAME" x="14.732" y="94.996" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="15.494" y="91.567" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-1" x="-27.94" y="78.74" smashed="yes">
<attribute name="NAME" x="-28.448" y="79.756" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="76.327" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-2" x="-27.94" y="73.66" smashed="yes">
<attribute name="NAME" x="-28.448" y="74.676" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="71.247" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-3" x="-27.94" y="68.58" smashed="yes">
<attribute name="NAME" x="-28.448" y="69.596" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="66.167" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-4" x="-27.94" y="63.5" smashed="yes">
<attribute name="NAME" x="-28.448" y="64.516" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="61.087" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-5" x="-27.94" y="58.42" smashed="yes">
<attribute name="NAME" x="-28.448" y="59.436" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="56.007" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-6" x="-27.94" y="53.34" smashed="yes">
<attribute name="NAME" x="-28.448" y="54.356" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="50.927" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-7" x="-27.94" y="48.26" smashed="yes">
<attribute name="NAME" x="-28.448" y="49.276" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="45.847" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-8" x="-27.94" y="43.18" smashed="yes">
<attribute name="NAME" x="-28.448" y="44.196" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="40.767" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-9" x="-27.94" y="38.1" smashed="yes">
<attribute name="NAME" x="-28.448" y="39.116" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="35.687" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-1" x="-27.94" y="22.86" smashed="yes">
<attribute name="NAME" x="-28.448" y="23.876" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="20.447" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-2" x="-27.94" y="17.78" smashed="yes">
<attribute name="NAME" x="-28.448" y="18.796" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="15.367" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-3" x="-27.94" y="12.7" smashed="yes">
<attribute name="NAME" x="-28.448" y="13.716" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="10.287" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-4" x="-27.94" y="7.62" smashed="yes">
<attribute name="NAME" x="-28.448" y="8.636" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="5.207" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-5" x="-27.94" y="2.54" smashed="yes">
<attribute name="NAME" x="-28.448" y="3.556" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="0.127" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-6" x="-27.94" y="-2.54" smashed="yes">
<attribute name="NAME" x="-28.448" y="-1.524" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="-4.953" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-7" x="-27.94" y="-7.62" smashed="yes">
<attribute name="NAME" x="-28.448" y="-6.604" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="-10.033" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-8" x="-27.94" y="-12.7" smashed="yes">
<attribute name="NAME" x="-28.448" y="-11.684" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="-15.113" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="-9" x="-27.94" y="-17.78" smashed="yes">
<attribute name="NAME" x="-28.448" y="-16.764" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-27.686" y="-20.193" size="1.778" layer="96"/>
</instance>
<instance part="J1" gate="G$1" x="134.62" y="5.08" smashed="yes" rot="R270">
<attribute name="NAME" x="134.62" y="-7.62" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="130.81" y="-7.62" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="J2" gate="G$1" x="180.34" y="5.08" smashed="yes" rot="R270">
<attribute name="NAME" x="180.34" y="-7.62" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="176.53" y="-7.62" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X1" gate="-1" x="12.7" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="11.811" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X1" gate="-2" x="17.78" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="16.891" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X1" gate="-3" x="22.86" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="21.971" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X1" gate="-4" x="27.94" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="27.051" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X1" gate="-5" x="33.02" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="32.131" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X1" gate="-6" x="38.1" y="-25.4" smashed="yes" rot="R90">
<attribute name="VALUE" x="35.56" y="-25.4" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="37.211" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X2" gate="-1" x="53.34" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="52.451" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X2" gate="-2" x="58.42" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="57.531" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X2" gate="-3" x="63.5" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="62.611" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X2" gate="-4" x="68.58" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="67.691" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X2" gate="-5" x="73.66" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="72.771" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X2" gate="-6" x="78.74" y="-25.4" smashed="yes" rot="R90">
<attribute name="VALUE" x="76.2" y="-25.4" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="77.851" y="-26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="D1" gate="1" x="30.48" y="99.06" smashed="yes">
<attribute name="NAME" x="33.02" y="99.5426" size="1.778" layer="95"/>
<attribute name="VALUE" x="33.02" y="96.7486" size="1.778" layer="96"/>
</instance>
<instance part="D2" gate="1" x="-17.78" y="-30.48" smashed="yes">
<attribute name="NAME" x="-15.24" y="-29.9974" size="1.778" layer="95"/>
<attribute name="VALUE" x="-15.24" y="-32.7914" size="1.778" layer="96"/>
</instance>
<instance part="SV4" gate="-1" x="-30.48" y="-30.48" smashed="yes">
<attribute name="NAME" x="-30.988" y="-29.464" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-30.226" y="-32.893" size="1.778" layer="96"/>
</instance>
<instance part="SV4" gate="-2" x="-30.48" y="-35.56" smashed="yes">
<attribute name="NAME" x="-30.988" y="-34.544" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-30.226" y="-37.973" size="1.778" layer="96"/>
</instance>
<instance part="SV4" gate="-3" x="-30.48" y="-40.64" smashed="yes">
<attribute name="NAME" x="-30.988" y="-39.624" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-30.226" y="-43.053" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="0" y="-45.72" smashed="yes">
<attribute name="VALUE" x="-1.905" y="-48.895" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="GND" x="-17.78" y="73.66" smashed="yes" rot="R90">
<attribute name="VALUE" x="-14.605" y="71.755" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY3" gate="GND" x="-17.78" y="17.78" smashed="yes" rot="R90">
<attribute name="VALUE" x="-14.605" y="15.875" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R1" gate="G$1" x="-58.42" y="86.36" smashed="yes" rot="R90"/>
<instance part="R2" gate="G$1" x="-58.42" y="68.58" smashed="yes" rot="R90"/>
<instance part="R3" gate="G$1" x="-58.42" y="50.8" smashed="yes" rot="R90"/>
<instance part="SUPPLY4" gate="GND" x="-58.42" y="38.1" smashed="yes">
<attribute name="VALUE" x="-60.325" y="34.925" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY5" gate="GND" x="40.64" y="88.9" smashed="yes">
<attribute name="VALUE" x="38.735" y="85.725" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY6" gate="GND" x="33.02" y="-15.24" smashed="yes" rot="R180">
<attribute name="VALUE" x="34.925" y="-12.065" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SUPPLY7" gate="GND" x="73.66" y="-15.24" smashed="yes" rot="R180">
<attribute name="VALUE" x="75.565" y="-12.065" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R4" gate="G$1" x="-71.12" y="20.32" smashed="yes" rot="R90"/>
<instance part="R5" gate="G$1" x="-71.12" y="2.54" smashed="yes" rot="R90"/>
<instance part="R6" gate="G$1" x="-71.12" y="-15.24" smashed="yes" rot="R90"/>
<instance part="SUPPLY8" gate="GND" x="-71.12" y="-27.94" smashed="yes">
<attribute name="VALUE" x="-73.025" y="-31.115" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY9" gate="GND" x="-20.32" y="33.02" smashed="yes">
<attribute name="VALUE" x="-22.225" y="29.845" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY10" gate="GND" x="-22.86" y="-45.72" smashed="yes">
<attribute name="VALUE" x="-24.765" y="-48.895" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY11" gate="GND" x="-20.32" y="-22.86" smashed="yes">
<attribute name="VALUE" x="-22.225" y="-26.035" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY12" gate="GND" x="180.34" y="22.86" smashed="yes">
<attribute name="VALUE" x="178.435" y="19.685" size="1.778" layer="96"/>
</instance>
<instance part="X3" gate="-1" x="185.42" y="73.66" smashed="yes">
<attribute name="NAME" x="188.976" y="73.025" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-2" x="185.42" y="68.58" smashed="yes">
<attribute name="NAME" x="188.976" y="67.945" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-3" x="185.42" y="63.5" smashed="yes">
<attribute name="NAME" x="188.976" y="62.865" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-4" x="185.42" y="58.42" smashed="yes">
<attribute name="NAME" x="188.976" y="57.785" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-5" x="185.42" y="53.34" smashed="yes">
<attribute name="NAME" x="188.976" y="52.705" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-6" x="185.42" y="48.26" smashed="yes">
<attribute name="NAME" x="188.976" y="47.625" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-7" x="208.28" y="73.66" smashed="yes">
<attribute name="NAME" x="211.836" y="73.025" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-8" x="208.28" y="68.58" smashed="yes">
<attribute name="NAME" x="211.836" y="67.945" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-9" x="208.28" y="63.5" smashed="yes">
<attribute name="NAME" x="211.836" y="62.865" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-10" x="208.28" y="58.42" smashed="yes">
<attribute name="NAME" x="211.836" y="57.785" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-11" x="208.28" y="53.34" smashed="yes">
<attribute name="NAME" x="211.836" y="52.705" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="-12" x="208.28" y="48.26" smashed="yes">
<attribute name="NAME" x="211.836" y="47.625" size="1.778" layer="95"/>
<attribute name="VALUE" x="207.264" y="44.958" size="1.778" layer="96"/>
</instance>
<instance part="X4" gate="-1" x="231.14" y="73.66" smashed="yes">
<attribute name="NAME" x="234.696" y="73.025" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-2" x="231.14" y="68.58" smashed="yes">
<attribute name="NAME" x="234.696" y="67.945" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-3" x="231.14" y="63.5" smashed="yes">
<attribute name="NAME" x="234.696" y="62.865" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-4" x="231.14" y="58.42" smashed="yes">
<attribute name="NAME" x="234.696" y="57.785" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-5" x="231.14" y="53.34" smashed="yes">
<attribute name="NAME" x="234.696" y="52.705" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-6" x="231.14" y="48.26" smashed="yes">
<attribute name="NAME" x="234.696" y="47.625" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-7" x="254" y="73.66" smashed="yes">
<attribute name="NAME" x="257.556" y="73.025" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-8" x="254" y="68.58" smashed="yes">
<attribute name="NAME" x="257.556" y="67.945" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-9" x="254" y="63.5" smashed="yes">
<attribute name="NAME" x="257.556" y="62.865" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-10" x="254" y="58.42" smashed="yes">
<attribute name="NAME" x="257.556" y="57.785" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-11" x="254" y="53.34" smashed="yes">
<attribute name="NAME" x="257.556" y="52.705" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="-12" x="254" y="48.26" smashed="yes">
<attribute name="NAME" x="257.556" y="47.625" size="1.778" layer="95"/>
<attribute name="VALUE" x="252.984" y="44.958" size="1.778" layer="96"/>
</instance>
<instance part="X5" gate="-1" x="231.14" y="33.02" smashed="yes">
<attribute name="NAME" x="234.696" y="32.385" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-2" x="231.14" y="27.94" smashed="yes">
<attribute name="NAME" x="234.696" y="27.305" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-3" x="231.14" y="22.86" smashed="yes">
<attribute name="NAME" x="234.696" y="22.225" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-4" x="231.14" y="17.78" smashed="yes">
<attribute name="NAME" x="234.696" y="17.145" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-5" x="231.14" y="12.7" smashed="yes">
<attribute name="NAME" x="234.696" y="12.065" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-6" x="231.14" y="7.62" smashed="yes">
<attribute name="NAME" x="234.696" y="6.985" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-7" x="254" y="33.02" smashed="yes">
<attribute name="NAME" x="257.556" y="32.385" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-8" x="254" y="27.94" smashed="yes">
<attribute name="NAME" x="257.556" y="27.305" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-9" x="254" y="22.86" smashed="yes">
<attribute name="NAME" x="257.556" y="22.225" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-10" x="254" y="17.78" smashed="yes">
<attribute name="NAME" x="257.556" y="17.145" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-11" x="254" y="12.7" smashed="yes">
<attribute name="NAME" x="257.556" y="12.065" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="-12" x="254" y="7.62" smashed="yes">
<attribute name="NAME" x="257.556" y="6.985" size="1.778" layer="95"/>
<attribute name="VALUE" x="252.984" y="4.318" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY13" gate="GND" x="238.76" y="40.64" smashed="yes">
<attribute name="VALUE" x="236.855" y="37.465" size="1.778" layer="96"/>
</instance>
<instance part="X6" gate="-1" x="193.04" y="38.1" smashed="yes">
<attribute name="NAME" x="196.596" y="37.465" size="1.778" layer="95"/>
</instance>
<instance part="X6" gate="-2" x="193.04" y="33.02" smashed="yes">
<attribute name="NAME" x="196.596" y="32.385" size="1.778" layer="95"/>
</instance>
<instance part="X6" gate="-3" x="193.04" y="27.94" smashed="yes">
<attribute name="NAME" x="196.596" y="27.305" size="1.778" layer="95"/>
</instance>
<instance part="X6" gate="-4" x="193.04" y="22.86" smashed="yes">
<attribute name="NAME" x="196.596" y="22.225" size="1.778" layer="95"/>
<attribute name="VALUE" x="192.024" y="19.558" size="1.778" layer="96"/>
</instance>
<instance part="X7" gate="-1" x="127" y="129.54" smashed="yes">
<attribute name="NAME" x="130.556" y="128.905" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-2" x="127" y="124.46" smashed="yes">
<attribute name="NAME" x="130.556" y="123.825" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-3" x="127" y="119.38" smashed="yes">
<attribute name="NAME" x="130.556" y="118.745" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-4" x="127" y="114.3" smashed="yes">
<attribute name="NAME" x="130.556" y="113.665" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-5" x="127" y="109.22" smashed="yes">
<attribute name="NAME" x="130.556" y="108.585" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-6" x="127" y="104.14" smashed="yes">
<attribute name="NAME" x="130.556" y="103.505" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-7" x="149.86" y="129.54" smashed="yes">
<attribute name="NAME" x="153.416" y="128.905" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-8" x="149.86" y="124.46" smashed="yes">
<attribute name="NAME" x="153.416" y="123.825" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-9" x="149.86" y="119.38" smashed="yes">
<attribute name="NAME" x="153.416" y="118.745" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-10" x="149.86" y="114.3" smashed="yes">
<attribute name="NAME" x="153.416" y="113.665" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-11" x="149.86" y="109.22" smashed="yes">
<attribute name="NAME" x="153.416" y="108.585" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="-12" x="149.86" y="104.14" smashed="yes">
<attribute name="NAME" x="153.416" y="103.505" size="1.778" layer="95"/>
<attribute name="VALUE" x="148.844" y="100.838" size="1.778" layer="96"/>
</instance>
<instance part="X8" gate="-1" x="182.88" y="129.54" smashed="yes">
<attribute name="NAME" x="186.436" y="128.905" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-2" x="182.88" y="124.46" smashed="yes">
<attribute name="NAME" x="186.436" y="123.825" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-3" x="182.88" y="119.38" smashed="yes">
<attribute name="NAME" x="186.436" y="118.745" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-4" x="182.88" y="114.3" smashed="yes">
<attribute name="NAME" x="186.436" y="113.665" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-5" x="182.88" y="109.22" smashed="yes">
<attribute name="NAME" x="186.436" y="108.585" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-6" x="182.88" y="104.14" smashed="yes">
<attribute name="NAME" x="186.436" y="103.505" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-7" x="205.74" y="129.54" smashed="yes">
<attribute name="NAME" x="209.296" y="128.905" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-8" x="205.74" y="124.46" smashed="yes">
<attribute name="NAME" x="209.296" y="123.825" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-9" x="205.74" y="119.38" smashed="yes">
<attribute name="NAME" x="209.296" y="118.745" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-10" x="205.74" y="114.3" smashed="yes">
<attribute name="NAME" x="209.296" y="113.665" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-11" x="205.74" y="109.22" smashed="yes">
<attribute name="NAME" x="209.296" y="108.585" size="1.778" layer="95"/>
</instance>
<instance part="X8" gate="-12" x="205.74" y="104.14" smashed="yes">
<attribute name="NAME" x="209.296" y="103.505" size="1.778" layer="95"/>
<attribute name="VALUE" x="204.724" y="100.838" size="1.778" layer="96"/>
</instance>
<instance part="X9" gate="-1" x="223.52" y="129.54" smashed="yes">
<attribute name="NAME" x="227.076" y="128.905" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-2" x="223.52" y="124.46" smashed="yes">
<attribute name="NAME" x="227.076" y="123.825" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-3" x="223.52" y="119.38" smashed="yes">
<attribute name="NAME" x="227.076" y="118.745" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-4" x="223.52" y="114.3" smashed="yes">
<attribute name="NAME" x="227.076" y="113.665" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-5" x="223.52" y="109.22" smashed="yes">
<attribute name="NAME" x="227.076" y="108.585" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-6" x="223.52" y="104.14" smashed="yes">
<attribute name="NAME" x="227.076" y="103.505" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-7" x="246.38" y="129.54" smashed="yes">
<attribute name="NAME" x="249.936" y="128.905" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-8" x="246.38" y="124.46" smashed="yes">
<attribute name="NAME" x="249.936" y="123.825" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-9" x="246.38" y="119.38" smashed="yes">
<attribute name="NAME" x="249.936" y="118.745" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-10" x="246.38" y="114.3" smashed="yes">
<attribute name="NAME" x="249.936" y="113.665" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-11" x="246.38" y="109.22" smashed="yes">
<attribute name="NAME" x="249.936" y="108.585" size="1.778" layer="95"/>
</instance>
<instance part="X9" gate="-12" x="246.38" y="104.14" smashed="yes">
<attribute name="NAME" x="249.936" y="103.505" size="1.778" layer="95"/>
<attribute name="VALUE" x="245.364" y="100.838" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY14" gate="GND" x="228.6" y="91.44" smashed="yes">
<attribute name="VALUE" x="226.695" y="88.265" size="1.778" layer="96"/>
</instance>
<instance part="SV5" gate="-1" x="5.08" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="4.064" y="12.192" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="7.493" y="12.954" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SV5" gate="-2" x="10.16" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="9.144" y="12.192" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="12.573" y="12.954" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SV5" gate="-3" x="15.24" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="14.224" y="12.192" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="17.653" y="12.954" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SV5" gate="-4" x="20.32" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="19.304" y="12.192" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="22.733" y="12.954" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SV5" gate="-5" x="25.4" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="24.384" y="12.192" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="27.813" y="12.954" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SV5" gate="-6" x="30.48" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="29.464" y="12.192" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="32.893" y="12.954" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="5V"/>
<wire x1="60.96" y1="78.74" x2="60.96" y2="93.98" width="0.1524" layer="91"/>
<wire x1="60.96" y1="93.98" x2="157.48" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="5V"/>
<wire x1="157.48" y1="93.98" x2="157.48" y2="78.74" width="0.1524" layer="91"/>
<wire x1="60.96" y1="99.06" x2="60.96" y2="93.98" width="0.1524" layer="91"/>
<junction x="60.96" y="93.98"/>
<pinref part="D1" gate="1" pin="C"/>
<wire x1="33.02" y1="99.06" x2="60.96" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="-6" pin="KL"/>
<wire x1="38.1" y1="-20.32" x2="38.1" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-10.16" x2="-5.08" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-1" pin="S"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="78.74" x2="-22.86" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X2" gate="-6" pin="KL"/>
<pinref part="SV3" gate="-1" pin="S"/>
<wire x1="78.74" y1="-20.32" x2="78.74" y2="22.86" width="0.1524" layer="91"/>
<wire x1="78.74" y1="22.86" x2="-22.86" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SV2" gate="-2" pin="S"/>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<wire x1="-22.86" y1="73.66" x2="-20.32" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="-2" pin="S"/>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<wire x1="-22.86" y1="17.78" x2="-20.32" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="-58.42" y1="45.72" x2="-58.42" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="-2" pin="S"/>
<wire x1="20.32" y1="93.98" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
<wire x1="40.64" y1="93.98" x2="58.42" y2="93.98" width="0.1524" layer="91"/>
<wire x1="58.42" y1="93.98" x2="58.42" y2="86.36" width="0.1524" layer="91"/>
<wire x1="58.42" y1="86.36" x2="66.04" y2="86.36" width="0.1524" layer="91"/>
<wire x1="66.04" y1="86.36" x2="66.04" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="66.04" y1="76.2" x2="60.96" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="157.48" y1="76.2" x2="162.56" y2="76.2" width="0.1524" layer="91"/>
<wire x1="162.56" y1="76.2" x2="162.56" y2="86.36" width="0.1524" layer="91"/>
<wire x1="162.56" y1="86.36" x2="66.04" y2="86.36" width="0.1524" layer="91"/>
<junction x="66.04" y="86.36"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="40.64" y1="91.44" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
<junction x="40.64" y="93.98"/>
</segment>
<segment>
<pinref part="X1" gate="-5" pin="KL"/>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<wire x1="33.02" y1="-20.32" x2="33.02" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="X1" gate="-4" pin="KL"/>
<wire x1="27.94" y1="-20.32" x2="33.02" y2="-20.32" width="0.1524" layer="91"/>
<junction x="33.02" y="-20.32"/>
</segment>
<segment>
<pinref part="X2" gate="-5" pin="KL"/>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<wire x1="73.66" y1="-20.32" x2="73.66" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="X2" gate="-4" pin="KL"/>
<wire x1="73.66" y1="-20.32" x2="68.58" y2="-20.32" width="0.1524" layer="91"/>
<junction x="73.66" y="-20.32"/>
</segment>
<segment>
<pinref part="X1" gate="-1" pin="KL"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="12.7" y1="-20.32" x2="0" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="0" y1="-20.32" x2="0" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="X2" gate="-1" pin="KL"/>
<wire x1="0" y1="-40.64" x2="0" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-20.32" x2="45.72" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-20.32" x2="45.72" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-40.64" x2="0" y2="-40.64" width="0.1524" layer="91"/>
<junction x="0" y="-40.64"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<wire x1="-71.12" y1="-25.4" x2="-71.12" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="-3" pin="S"/>
<wire x1="-25.4" y1="-40.64" x2="-22.86" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
<wire x1="-22.86" y1="-40.64" x2="-22.86" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="SV4" gate="-2" pin="S"/>
<wire x1="-25.4" y1="-35.56" x2="-22.86" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-35.56" x2="-22.86" y2="-40.64" width="0.1524" layer="91"/>
<junction x="-22.86" y="-40.64"/>
</segment>
<segment>
<pinref part="SV3" gate="-9" pin="S"/>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
<wire x1="-22.86" y1="-17.78" x2="-20.32" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-17.78" x2="-20.32" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="-9" pin="S"/>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
<wire x1="-22.86" y1="38.1" x2="-20.32" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="38.1" x2="-20.32" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY12" gate="GND" pin="GND"/>
<wire x1="180.34" y1="25.4" x2="175.26" y2="25.4" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="2"/>
<wire x1="177.8" y1="10.16" x2="175.26" y2="10.16" width="0.1524" layer="91"/>
<wire x1="175.26" y1="10.16" x2="175.26" y2="20.32" width="0.1524" layer="91"/>
<wire x1="175.26" y1="20.32" x2="129.54" y2="20.32" width="0.1524" layer="91"/>
<wire x1="129.54" y1="20.32" x2="129.54" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="129.54" y1="10.16" x2="132.08" y2="10.16" width="0.1524" layer="91"/>
<wire x1="175.26" y1="25.4" x2="175.26" y2="20.32" width="0.1524" layer="91"/>
<junction x="175.26" y="20.32"/>
</segment>
<segment>
<pinref part="X4" gate="-1" pin="1"/>
<wire x1="228.6" y1="73.66" x2="223.52" y2="73.66" width="0.1524" layer="91"/>
<wire x1="223.52" y1="73.66" x2="223.52" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X4" gate="-6" pin="1"/>
<wire x1="223.52" y1="68.58" x2="223.52" y2="63.5" width="0.1524" layer="91"/>
<wire x1="223.52" y1="63.5" x2="223.52" y2="58.42" width="0.1524" layer="91"/>
<wire x1="223.52" y1="58.42" x2="223.52" y2="53.34" width="0.1524" layer="91"/>
<wire x1="223.52" y1="53.34" x2="223.52" y2="48.26" width="0.1524" layer="91"/>
<wire x1="223.52" y1="48.26" x2="228.6" y2="48.26" width="0.1524" layer="91"/>
<pinref part="X4" gate="-7" pin="1"/>
<wire x1="251.46" y1="73.66" x2="246.38" y2="73.66" width="0.1524" layer="91"/>
<wire x1="246.38" y1="73.66" x2="246.38" y2="68.58" width="0.1524" layer="91"/>
<wire x1="246.38" y1="68.58" x2="246.38" y2="63.5" width="0.1524" layer="91"/>
<wire x1="246.38" y1="63.5" x2="246.38" y2="58.42" width="0.1524" layer="91"/>
<wire x1="246.38" y1="58.42" x2="246.38" y2="53.34" width="0.1524" layer="91"/>
<wire x1="246.38" y1="53.34" x2="246.38" y2="48.26" width="0.1524" layer="91"/>
<wire x1="246.38" y1="48.26" x2="246.38" y2="45.72" width="0.1524" layer="91"/>
<wire x1="246.38" y1="45.72" x2="238.76" y2="45.72" width="0.1524" layer="91"/>
<wire x1="238.76" y1="45.72" x2="228.6" y2="45.72" width="0.1524" layer="91"/>
<wire x1="228.6" y1="45.72" x2="228.6" y2="48.26" width="0.1524" layer="91"/>
<junction x="228.6" y="48.26"/>
<pinref part="X4" gate="-5" pin="1"/>
<wire x1="228.6" y1="53.34" x2="223.52" y2="53.34" width="0.1524" layer="91"/>
<junction x="223.52" y="53.34"/>
<pinref part="X4" gate="-4" pin="1"/>
<wire x1="228.6" y1="58.42" x2="223.52" y2="58.42" width="0.1524" layer="91"/>
<junction x="223.52" y="58.42"/>
<pinref part="X4" gate="-3" pin="1"/>
<wire x1="228.6" y1="63.5" x2="223.52" y2="63.5" width="0.1524" layer="91"/>
<junction x="223.52" y="63.5"/>
<pinref part="X4" gate="-2" pin="1"/>
<wire x1="228.6" y1="68.58" x2="223.52" y2="68.58" width="0.1524" layer="91"/>
<junction x="223.52" y="68.58"/>
<pinref part="X4" gate="-8" pin="1"/>
<wire x1="251.46" y1="68.58" x2="246.38" y2="68.58" width="0.1524" layer="91"/>
<junction x="246.38" y="68.58"/>
<pinref part="X4" gate="-9" pin="1"/>
<wire x1="251.46" y1="63.5" x2="246.38" y2="63.5" width="0.1524" layer="91"/>
<junction x="246.38" y="63.5"/>
<pinref part="X4" gate="-10" pin="1"/>
<wire x1="251.46" y1="58.42" x2="246.38" y2="58.42" width="0.1524" layer="91"/>
<junction x="246.38" y="58.42"/>
<pinref part="X4" gate="-11" pin="1"/>
<wire x1="251.46" y1="53.34" x2="246.38" y2="53.34" width="0.1524" layer="91"/>
<junction x="246.38" y="53.34"/>
<pinref part="X4" gate="-12" pin="1"/>
<wire x1="251.46" y1="48.26" x2="246.38" y2="48.26" width="0.1524" layer="91"/>
<junction x="246.38" y="48.26"/>
<pinref part="SUPPLY13" gate="GND" pin="GND"/>
<wire x1="238.76" y1="43.18" x2="238.76" y2="45.72" width="0.1524" layer="91"/>
<junction x="238.76" y="45.72"/>
</segment>
<segment>
<pinref part="X9" gate="-7" pin="1"/>
<wire x1="243.84" y1="129.54" x2="236.22" y2="129.54" width="0.1524" layer="91"/>
<wire x1="236.22" y1="129.54" x2="236.22" y2="124.46" width="0.1524" layer="91"/>
<wire x1="236.22" y1="124.46" x2="236.22" y2="119.38" width="0.1524" layer="91"/>
<wire x1="236.22" y1="119.38" x2="236.22" y2="114.3" width="0.1524" layer="91"/>
<wire x1="236.22" y1="114.3" x2="236.22" y2="109.22" width="0.1524" layer="91"/>
<wire x1="236.22" y1="109.22" x2="236.22" y2="104.14" width="0.1524" layer="91"/>
<wire x1="236.22" y1="104.14" x2="236.22" y2="96.52" width="0.1524" layer="91"/>
<wire x1="236.22" y1="96.52" x2="228.6" y2="96.52" width="0.1524" layer="91"/>
<wire x1="228.6" y1="96.52" x2="218.44" y2="96.52" width="0.1524" layer="91"/>
<wire x1="218.44" y1="96.52" x2="218.44" y2="104.14" width="0.1524" layer="91"/>
<pinref part="X9" gate="-1" pin="1"/>
<wire x1="218.44" y1="104.14" x2="218.44" y2="109.22" width="0.1524" layer="91"/>
<wire x1="218.44" y1="109.22" x2="218.44" y2="114.3" width="0.1524" layer="91"/>
<wire x1="218.44" y1="114.3" x2="218.44" y2="119.38" width="0.1524" layer="91"/>
<wire x1="218.44" y1="119.38" x2="218.44" y2="124.46" width="0.1524" layer="91"/>
<wire x1="218.44" y1="124.46" x2="218.44" y2="129.54" width="0.1524" layer="91"/>
<wire x1="218.44" y1="129.54" x2="220.98" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X9" gate="-2" pin="1"/>
<wire x1="220.98" y1="124.46" x2="218.44" y2="124.46" width="0.1524" layer="91"/>
<junction x="218.44" y="124.46"/>
<pinref part="X9" gate="-3" pin="1"/>
<wire x1="220.98" y1="119.38" x2="218.44" y2="119.38" width="0.1524" layer="91"/>
<junction x="218.44" y="119.38"/>
<pinref part="X9" gate="-4" pin="1"/>
<wire x1="220.98" y1="114.3" x2="218.44" y2="114.3" width="0.1524" layer="91"/>
<junction x="218.44" y="114.3"/>
<pinref part="X9" gate="-5" pin="1"/>
<wire x1="220.98" y1="109.22" x2="218.44" y2="109.22" width="0.1524" layer="91"/>
<junction x="218.44" y="109.22"/>
<pinref part="X9" gate="-6" pin="1"/>
<wire x1="220.98" y1="104.14" x2="218.44" y2="104.14" width="0.1524" layer="91"/>
<junction x="218.44" y="104.14"/>
<pinref part="X9" gate="-8" pin="1"/>
<wire x1="243.84" y1="124.46" x2="236.22" y2="124.46" width="0.1524" layer="91"/>
<junction x="236.22" y="124.46"/>
<pinref part="X9" gate="-9" pin="1"/>
<wire x1="243.84" y1="119.38" x2="236.22" y2="119.38" width="0.1524" layer="91"/>
<junction x="236.22" y="119.38"/>
<pinref part="X9" gate="-10" pin="1"/>
<wire x1="243.84" y1="114.3" x2="236.22" y2="114.3" width="0.1524" layer="91"/>
<junction x="236.22" y="114.3"/>
<pinref part="X9" gate="-11" pin="1"/>
<wire x1="243.84" y1="109.22" x2="236.22" y2="109.22" width="0.1524" layer="91"/>
<junction x="236.22" y="109.22"/>
<pinref part="X9" gate="-12" pin="1"/>
<wire x1="243.84" y1="104.14" x2="236.22" y2="104.14" width="0.1524" layer="91"/>
<junction x="236.22" y="104.14"/>
<pinref part="SUPPLY14" gate="GND" pin="GND"/>
<wire x1="228.6" y1="93.98" x2="228.6" y2="96.52" width="0.1524" layer="91"/>
<junction x="228.6" y="96.52"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="-58.42" y1="81.28" x2="-58.42" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SV1" gate="-1" pin="S"/>
<wire x1="20.32" y1="99.06" x2="27.94" y2="99.06" width="0.1524" layer="91"/>
<pinref part="D1" gate="1" pin="A"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SV4" gate="-1" pin="S"/>
<pinref part="D2" gate="1" pin="A"/>
<wire x1="-25.4" y1="-30.48" x2="-20.32" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="-3" pin="KL"/>
<wire x1="22.86" y1="-20.32" x2="22.86" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-17.78" x2="22.86" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-12.7" x2="-7.62" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-30.48" x2="-15.24" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="D2" gate="1" pin="C"/>
<pinref part="X2" gate="-3" pin="KL"/>
<wire x1="63.5" y1="-20.32" x2="63.5" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-17.78" x2="22.86" y2="-17.78" width="0.1524" layer="91"/>
<junction x="22.86" y="-17.78"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="RX2"/>
<wire x1="22.86" y1="58.42" x2="0" y2="58.42" width="0.1524" layer="91"/>
<wire x1="0" y1="58.42" x2="0" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="X1" gate="-2" pin="KL"/>
<wire x1="0" y1="-17.78" x2="17.78" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-17.78" x2="17.78" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TX2"/>
<wire x1="22.86" y1="55.88" x2="2.54" y2="55.88" width="0.1524" layer="91"/>
<wire x1="2.54" y1="55.88" x2="2.54" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-5.08" x2="58.42" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="X2" gate="-2" pin="KL"/>
<wire x1="58.42" y1="-5.08" x2="58.42" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="SV2" gate="-3" pin="S"/>
<wire x1="-22.86" y1="68.58" x2="-20.32" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="68.58" x2="-20.32" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="91.44" x2="-58.42" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="-71.12" y1="-10.16" x2="-71.12" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D15"/>
<wire x1="-71.12" y1="-7.62" x2="-71.12" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="22.86" y1="66.04" x2="0" y2="66.04" width="0.1524" layer="91"/>
<wire x1="0" y1="66.04" x2="0" y2="99.06" width="0.1524" layer="91"/>
<wire x1="0" y1="99.06" x2="-76.2" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="99.06" x2="-76.2" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="-7.62" x2="-71.12" y2="-7.62" width="0.1524" layer="91"/>
<junction x="-71.12" y="-7.62"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="-71.12" y1="7.62" x2="-71.12" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<wire x1="-71.12" y1="25.4" x2="-71.12" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="27.94" x2="-12.7" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="27.94" x2="-12.7" y2="12.7" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-3" pin="S"/>
<wire x1="-12.7" y1="12.7" x2="-22.86" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D0"/>
<wire x1="22.86" y1="68.58" x2="-2.54" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="68.58" x2="-2.54" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="96.52" x2="-63.5" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="96.52" x2="-63.5" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="55.88" x2="-58.42" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="58.42" x2="-58.42" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="58.42" x2="-58.42" y2="58.42" width="0.1524" layer="91"/>
<junction x="-58.42" y="58.42"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D5"/>
<wire x1="22.86" y1="53.34" x2="-12.7" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-4" pin="S"/>
<wire x1="-12.7" y1="53.34" x2="-12.7" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="63.5" x2="-22.86" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D18"/>
<wire x1="22.86" y1="50.8" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="50.8" x2="-10.16" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-4" pin="S"/>
<wire x1="-10.16" y1="7.62" x2="-22.86" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D32"/>
<wire x1="60.96" y1="48.26" x2="86.36" y2="48.26" width="0.1524" layer="91"/>
<wire x1="86.36" y1="48.26" x2="86.36" y2="106.68" width="0.1524" layer="91"/>
<wire x1="86.36" y1="106.68" x2="-10.16" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="106.68" x2="-10.16" y2="58.42" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-5" pin="S"/>
<wire x1="-10.16" y1="58.42" x2="-22.86" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D33"/>
<wire x1="60.96" y1="50.8" x2="88.9" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-5" pin="S"/>
<wire x1="88.9" y1="50.8" x2="88.9" y2="2.54" width="0.1524" layer="91"/>
<wire x1="88.9" y1="2.54" x2="-22.86" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D27"/>
<wire x1="60.96" y1="58.42" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
<wire x1="83.82" y1="58.42" x2="83.82" y2="27.94" width="0.1524" layer="91"/>
<wire x1="83.82" y1="27.94" x2="5.08" y2="27.94" width="0.1524" layer="91"/>
<wire x1="5.08" y1="27.94" x2="5.08" y2="30.48" width="0.1524" layer="91"/>
<wire x1="5.08" y1="30.48" x2="-15.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="30.48" x2="-15.24" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-6" pin="S"/>
<wire x1="-15.24" y1="53.34" x2="-22.86" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D12"/>
<wire x1="60.96" y1="63.5" x2="91.44" y2="63.5" width="0.1524" layer="91"/>
<wire x1="91.44" y1="63.5" x2="91.44" y2="109.22" width="0.1524" layer="91"/>
<wire x1="91.44" y1="109.22" x2="-12.7" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="109.22" x2="-12.7" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="66.04" x2="-20.32" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="66.04" x2="-20.32" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-7" pin="S"/>
<wire x1="-20.32" y1="48.26" x2="-22.86" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D14"/>
<wire x1="60.96" y1="60.96" x2="93.98" y2="60.96" width="0.1524" layer="91"/>
<wire x1="93.98" y1="60.96" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="7.62" x2="7.62" y2="7.62" width="0.1524" layer="91"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-6" pin="S"/>
<wire x1="7.62" y1="-2.54" x2="-22.86" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D13"/>
<wire x1="60.96" y1="66.04" x2="96.52" y2="66.04" width="0.1524" layer="91"/>
<wire x1="96.52" y1="66.04" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
<wire x1="96.52" y1="5.08" x2="12.7" y2="5.08" width="0.1524" layer="91"/>
<wire x1="12.7" y1="5.08" x2="12.7" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-7" pin="S"/>
<wire x1="12.7" y1="-7.62" x2="-22.86" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="3V3"/>
<wire x1="119.38" y1="78.74" x2="109.22" y2="78.74" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="109.22" y1="78.74" x2="99.06" y2="78.74" width="0.1524" layer="91"/>
<wire x1="99.06" y1="78.74" x2="99.06" y2="12.7" width="0.1524" layer="91"/>
<wire x1="99.06" y1="12.7" x2="127" y2="12.7" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="1"/>
<wire x1="127" y1="12.7" x2="132.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="177.8" y1="12.7" x2="177.8" y2="17.78" width="0.1524" layer="91"/>
<wire x1="177.8" y1="17.78" x2="127" y2="17.78" width="0.1524" layer="91"/>
<wire x1="127" y1="17.78" x2="127" y2="12.7" width="0.1524" layer="91"/>
<junction x="127" y="12.7"/>
<pinref part="X5" gate="-1" pin="1"/>
<wire x1="228.6" y1="33.02" x2="223.52" y2="33.02" width="0.1524" layer="91"/>
<wire x1="223.52" y1="33.02" x2="223.52" y2="27.94" width="0.1524" layer="91"/>
<wire x1="223.52" y1="27.94" x2="223.52" y2="22.86" width="0.1524" layer="91"/>
<wire x1="223.52" y1="22.86" x2="223.52" y2="17.78" width="0.1524" layer="91"/>
<wire x1="223.52" y1="17.78" x2="223.52" y2="12.7" width="0.1524" layer="91"/>
<wire x1="223.52" y1="12.7" x2="223.52" y2="7.62" width="0.1524" layer="91"/>
<wire x1="223.52" y1="7.62" x2="223.52" y2="2.54" width="0.1524" layer="91"/>
<wire x1="223.52" y1="2.54" x2="248.92" y2="2.54" width="0.1524" layer="91"/>
<wire x1="248.92" y1="2.54" x2="248.92" y2="7.62" width="0.1524" layer="91"/>
<pinref part="X5" gate="-7" pin="1"/>
<wire x1="248.92" y1="7.62" x2="248.92" y2="12.7" width="0.1524" layer="91"/>
<wire x1="248.92" y1="12.7" x2="248.92" y2="17.78" width="0.1524" layer="91"/>
<wire x1="248.92" y1="17.78" x2="248.92" y2="22.86" width="0.1524" layer="91"/>
<wire x1="248.92" y1="22.86" x2="248.92" y2="27.94" width="0.1524" layer="91"/>
<wire x1="248.92" y1="27.94" x2="248.92" y2="33.02" width="0.1524" layer="91"/>
<wire x1="248.92" y1="33.02" x2="251.46" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X5" gate="-8" pin="1"/>
<wire x1="251.46" y1="27.94" x2="248.92" y2="27.94" width="0.1524" layer="91"/>
<junction x="248.92" y="27.94"/>
<pinref part="X5" gate="-9" pin="1"/>
<wire x1="251.46" y1="22.86" x2="248.92" y2="22.86" width="0.1524" layer="91"/>
<junction x="248.92" y="22.86"/>
<pinref part="X5" gate="-10" pin="1"/>
<wire x1="251.46" y1="17.78" x2="248.92" y2="17.78" width="0.1524" layer="91"/>
<junction x="248.92" y="17.78"/>
<pinref part="X5" gate="-11" pin="1"/>
<wire x1="251.46" y1="12.7" x2="248.92" y2="12.7" width="0.1524" layer="91"/>
<junction x="248.92" y="12.7"/>
<pinref part="X5" gate="-12" pin="1"/>
<wire x1="251.46" y1="7.62" x2="248.92" y2="7.62" width="0.1524" layer="91"/>
<junction x="248.92" y="7.62"/>
<pinref part="X5" gate="-6" pin="1"/>
<wire x1="228.6" y1="7.62" x2="223.52" y2="7.62" width="0.1524" layer="91"/>
<junction x="223.52" y="7.62"/>
<pinref part="X5" gate="-5" pin="1"/>
<wire x1="228.6" y1="12.7" x2="223.52" y2="12.7" width="0.1524" layer="91"/>
<junction x="223.52" y="12.7"/>
<pinref part="X5" gate="-4" pin="1"/>
<wire x1="228.6" y1="17.78" x2="223.52" y2="17.78" width="0.1524" layer="91"/>
<junction x="223.52" y="17.78"/>
<pinref part="X5" gate="-3" pin="1"/>
<wire x1="228.6" y1="22.86" x2="223.52" y2="22.86" width="0.1524" layer="91"/>
<junction x="223.52" y="22.86"/>
<pinref part="X5" gate="-2" pin="1"/>
<wire x1="228.6" y1="27.94" x2="223.52" y2="27.94" width="0.1524" layer="91"/>
<junction x="223.52" y="27.94"/>
<wire x1="177.8" y1="17.78" x2="223.52" y2="17.78" width="0.1524" layer="91"/>
<junction x="177.8" y="17.78"/>
<pinref part="X8" gate="-7" pin="1"/>
<wire x1="203.2" y1="129.54" x2="198.12" y2="129.54" width="0.1524" layer="91"/>
<wire x1="198.12" y1="129.54" x2="198.12" y2="124.46" width="0.1524" layer="91"/>
<wire x1="198.12" y1="124.46" x2="198.12" y2="119.38" width="0.1524" layer="91"/>
<wire x1="198.12" y1="119.38" x2="198.12" y2="114.3" width="0.1524" layer="91"/>
<wire x1="198.12" y1="114.3" x2="198.12" y2="109.22" width="0.1524" layer="91"/>
<wire x1="198.12" y1="109.22" x2="198.12" y2="104.14" width="0.1524" layer="91"/>
<wire x1="198.12" y1="104.14" x2="198.12" y2="99.06" width="0.1524" layer="91"/>
<wire x1="198.12" y1="99.06" x2="175.26" y2="99.06" width="0.1524" layer="91"/>
<wire x1="175.26" y1="99.06" x2="175.26" y2="104.14" width="0.1524" layer="91"/>
<pinref part="X8" gate="-1" pin="1"/>
<wire x1="175.26" y1="104.14" x2="175.26" y2="109.22" width="0.1524" layer="91"/>
<wire x1="175.26" y1="109.22" x2="175.26" y2="114.3" width="0.1524" layer="91"/>
<wire x1="175.26" y1="114.3" x2="175.26" y2="119.38" width="0.1524" layer="91"/>
<wire x1="175.26" y1="119.38" x2="175.26" y2="124.46" width="0.1524" layer="91"/>
<wire x1="175.26" y1="124.46" x2="175.26" y2="129.54" width="0.1524" layer="91"/>
<wire x1="175.26" y1="129.54" x2="180.34" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X8" gate="-2" pin="1"/>
<wire x1="180.34" y1="124.46" x2="175.26" y2="124.46" width="0.1524" layer="91"/>
<junction x="175.26" y="124.46"/>
<pinref part="X8" gate="-3" pin="1"/>
<wire x1="180.34" y1="119.38" x2="175.26" y2="119.38" width="0.1524" layer="91"/>
<junction x="175.26" y="119.38"/>
<pinref part="X8" gate="-4" pin="1"/>
<wire x1="180.34" y1="114.3" x2="175.26" y2="114.3" width="0.1524" layer="91"/>
<junction x="175.26" y="114.3"/>
<pinref part="X8" gate="-5" pin="1"/>
<wire x1="180.34" y1="109.22" x2="175.26" y2="109.22" width="0.1524" layer="91"/>
<junction x="175.26" y="109.22"/>
<pinref part="X8" gate="-6" pin="1"/>
<wire x1="180.34" y1="104.14" x2="175.26" y2="104.14" width="0.1524" layer="91"/>
<junction x="175.26" y="104.14"/>
<pinref part="X8" gate="-12" pin="1"/>
<wire x1="203.2" y1="104.14" x2="198.12" y2="104.14" width="0.1524" layer="91"/>
<junction x="198.12" y="104.14"/>
<pinref part="X8" gate="-11" pin="1"/>
<wire x1="203.2" y1="109.22" x2="198.12" y2="109.22" width="0.1524" layer="91"/>
<junction x="198.12" y="109.22"/>
<pinref part="X8" gate="-10" pin="1"/>
<wire x1="203.2" y1="114.3" x2="198.12" y2="114.3" width="0.1524" layer="91"/>
<junction x="198.12" y="114.3"/>
<pinref part="X8" gate="-9" pin="1"/>
<wire x1="203.2" y1="119.38" x2="198.12" y2="119.38" width="0.1524" layer="91"/>
<junction x="198.12" y="119.38"/>
<pinref part="X8" gate="-8" pin="1"/>
<wire x1="203.2" y1="124.46" x2="198.12" y2="124.46" width="0.1524" layer="91"/>
<junction x="198.12" y="124.46"/>
<wire x1="109.22" y1="78.74" x2="109.22" y2="99.06" width="0.1524" layer="91"/>
<wire x1="109.22" y1="99.06" x2="175.26" y2="99.06" width="0.1524" layer="91"/>
<junction x="109.22" y="78.74"/>
<junction x="175.26" y="99.06"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="132.08" y1="7.62" x2="129.54" y2="7.62" width="0.1524" layer="91"/>
<wire x1="129.54" y1="7.62" x2="101.6" y2="7.62" width="0.1524" layer="91"/>
<wire x1="101.6" y1="7.62" x2="101.6" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="D22"/>
<wire x1="101.6" y1="38.1" x2="119.38" y2="38.1" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="3"/>
<wire x1="177.8" y1="7.62" x2="147.32" y2="7.62" width="0.1524" layer="91"/>
<wire x1="147.32" y1="7.62" x2="147.32" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-12.7" x2="129.54" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-12.7" x2="129.54" y2="7.62" width="0.1524" layer="91"/>
<junction x="129.54" y="7.62"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="132.08" y1="5.08" x2="127" y2="5.08" width="0.1524" layer="91"/>
<wire x1="127" y1="5.08" x2="104.14" y2="5.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="5.08" x2="104.14" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="D21"/>
<wire x1="104.14" y1="45.72" x2="119.38" y2="45.72" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="4"/>
<wire x1="177.8" y1="5.08" x2="149.86" y2="5.08" width="0.1524" layer="91"/>
<wire x1="149.86" y1="5.08" x2="149.86" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="149.86" y1="-15.24" x2="127" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="127" y1="-15.24" x2="127" y2="5.08" width="0.1524" layer="91"/>
<junction x="127" y="5.08"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="CMD"/>
<pinref part="X3" gate="-1" pin="1"/>
<wire x1="157.48" y1="73.66" x2="182.88" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SD3"/>
<pinref part="X3" gate="-2" pin="1"/>
<wire x1="157.48" y1="71.12" x2="182.88" y2="71.12" width="0.1524" layer="91"/>
<wire x1="182.88" y1="71.12" x2="182.88" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SD2"/>
<wire x1="157.48" y1="68.58" x2="180.34" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X3" gate="-3" pin="1"/>
<wire x1="180.34" y1="68.58" x2="180.34" y2="63.5" width="0.1524" layer="91"/>
<wire x1="180.34" y1="63.5" x2="182.88" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D13"/>
<wire x1="157.48" y1="66.04" x2="177.8" y2="66.04" width="0.1524" layer="91"/>
<wire x1="177.8" y1="66.04" x2="177.8" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X3" gate="-4" pin="1"/>
<wire x1="177.8" y1="58.42" x2="182.88" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D12"/>
<wire x1="157.48" y1="63.5" x2="175.26" y2="63.5" width="0.1524" layer="91"/>
<wire x1="175.26" y1="63.5" x2="175.26" y2="53.34" width="0.1524" layer="91"/>
<pinref part="X3" gate="-5" pin="1"/>
<wire x1="175.26" y1="53.34" x2="182.88" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D14"/>
<wire x1="157.48" y1="60.96" x2="172.72" y2="60.96" width="0.1524" layer="91"/>
<wire x1="172.72" y1="60.96" x2="172.72" y2="48.26" width="0.1524" layer="91"/>
<pinref part="X3" gate="-6" pin="1"/>
<wire x1="172.72" y1="48.26" x2="182.88" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D27"/>
<wire x1="157.48" y1="58.42" x2="165.1" y2="58.42" width="0.1524" layer="91"/>
<wire x1="165.1" y1="58.42" x2="165.1" y2="86.36" width="0.1524" layer="91"/>
<wire x1="165.1" y1="86.36" x2="205.74" y2="86.36" width="0.1524" layer="91"/>
<pinref part="X3" gate="-7" pin="1"/>
<wire x1="205.74" y1="86.36" x2="205.74" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="X3" gate="-8" pin="1"/>
<wire x1="205.74" y1="68.58" x2="203.2" y2="68.58" width="0.1524" layer="91"/>
<wire x1="203.2" y1="68.58" x2="203.2" y2="83.82" width="0.1524" layer="91"/>
<wire x1="203.2" y1="83.82" x2="167.64" y2="83.82" width="0.1524" layer="91"/>
<wire x1="167.64" y1="83.82" x2="167.64" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="D26"/>
<wire x1="167.64" y1="55.88" x2="157.48" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="X3" gate="-9" pin="1"/>
<wire x1="205.74" y1="63.5" x2="200.66" y2="63.5" width="0.1524" layer="91"/>
<wire x1="200.66" y1="63.5" x2="200.66" y2="81.28" width="0.1524" layer="91"/>
<wire x1="200.66" y1="81.28" x2="170.18" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="D25"/>
<wire x1="170.18" y1="81.28" x2="170.18" y2="53.34" width="0.1524" layer="91"/>
<wire x1="170.18" y1="53.34" x2="157.48" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D33"/>
<wire x1="157.48" y1="50.8" x2="175.26" y2="50.8" width="0.1524" layer="91"/>
<wire x1="175.26" y1="50.8" x2="175.26" y2="78.74" width="0.1524" layer="91"/>
<wire x1="175.26" y1="78.74" x2="198.12" y2="78.74" width="0.1524" layer="91"/>
<pinref part="X3" gate="-10" pin="1"/>
<wire x1="198.12" y1="78.74" x2="198.12" y2="58.42" width="0.1524" layer="91"/>
<wire x1="198.12" y1="58.42" x2="205.74" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X3" gate="-11" pin="1"/>
<wire x1="205.74" y1="53.34" x2="195.58" y2="53.34" width="0.1524" layer="91"/>
<wire x1="195.58" y1="53.34" x2="195.58" y2="45.72" width="0.1524" layer="91"/>
<wire x1="195.58" y1="45.72" x2="170.18" y2="45.72" width="0.1524" layer="91"/>
<wire x1="170.18" y1="45.72" x2="170.18" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="D32"/>
<wire x1="170.18" y1="48.26" x2="157.48" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D35"/>
<wire x1="157.48" y1="45.72" x2="167.64" y2="45.72" width="0.1524" layer="91"/>
<wire x1="167.64" y1="45.72" x2="167.64" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X3" gate="-12" pin="1"/>
<wire x1="167.64" y1="43.18" x2="205.74" y2="43.18" width="0.1524" layer="91"/>
<wire x1="205.74" y1="43.18" x2="205.74" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D34"/>
<wire x1="157.48" y1="43.18" x2="165.1" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X6" gate="-1" pin="1"/>
<wire x1="165.1" y1="43.18" x2="165.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="165.1" y1="38.1" x2="190.5" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="X6" gate="-2" pin="1"/>
<wire x1="190.5" y1="33.02" x2="190.5" y2="35.56" width="0.1524" layer="91"/>
<wire x1="190.5" y1="35.56" x2="162.56" y2="35.56" width="0.1524" layer="91"/>
<wire x1="162.56" y1="35.56" x2="162.56" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VN"/>
<wire x1="162.56" y1="40.64" x2="157.48" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="VP"/>
<wire x1="157.48" y1="38.1" x2="160.02" y2="38.1" width="0.1524" layer="91"/>
<wire x1="160.02" y1="38.1" x2="160.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="160.02" y1="33.02" x2="187.96" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X6" gate="-3" pin="1"/>
<wire x1="190.5" y1="27.94" x2="187.96" y2="27.94" width="0.1524" layer="91"/>
<wire x1="187.96" y1="27.94" x2="187.96" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="X6" gate="-4" pin="1"/>
<wire x1="190.5" y1="22.86" x2="185.42" y2="22.86" width="0.1524" layer="91"/>
<wire x1="185.42" y1="22.86" x2="185.42" y2="30.48" width="0.1524" layer="91"/>
<wire x1="185.42" y1="30.48" x2="157.48" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="EN"/>
<wire x1="157.48" y1="30.48" x2="157.48" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="X7" gate="-12" pin="1"/>
<wire x1="147.32" y1="104.14" x2="147.32" y2="88.9" width="0.1524" layer="91"/>
<wire x1="147.32" y1="88.9" x2="119.38" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="CLK"/>
<wire x1="119.38" y1="88.9" x2="119.38" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="X7" gate="-11" pin="1"/>
<wire x1="147.32" y1="109.22" x2="144.78" y2="109.22" width="0.1524" layer="91"/>
<wire x1="144.78" y1="109.22" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
<wire x1="144.78" y1="91.44" x2="116.84" y2="91.44" width="0.1524" layer="91"/>
<wire x1="116.84" y1="91.44" x2="116.84" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="SD0"/>
<wire x1="116.84" y1="73.66" x2="119.38" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="X7" gate="-10" pin="1"/>
<wire x1="147.32" y1="114.3" x2="142.24" y2="114.3" width="0.1524" layer="91"/>
<wire x1="142.24" y1="114.3" x2="142.24" y2="96.52" width="0.1524" layer="91"/>
<wire x1="142.24" y1="96.52" x2="114.3" y2="96.52" width="0.1524" layer="91"/>
<wire x1="114.3" y1="96.52" x2="114.3" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="SD1"/>
<wire x1="114.3" y1="71.12" x2="119.38" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="X7" gate="-9" pin="1"/>
<wire x1="147.32" y1="119.38" x2="139.7" y2="119.38" width="0.1524" layer="91"/>
<wire x1="139.7" y1="119.38" x2="139.7" y2="101.6" width="0.1524" layer="91"/>
<wire x1="139.7" y1="101.6" x2="111.76" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="D0"/>
<wire x1="111.76" y1="101.6" x2="111.76" y2="68.58" width="0.1524" layer="91"/>
<wire x1="111.76" y1="68.58" x2="119.38" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D2"/>
<wire x1="119.38" y1="63.5" x2="106.68" y2="63.5" width="0.1524" layer="91"/>
<wire x1="106.68" y1="63.5" x2="106.68" y2="104.14" width="0.1524" layer="91"/>
<pinref part="X7" gate="-6" pin="1"/>
<wire x1="106.68" y1="104.14" x2="124.46" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D4"/>
<wire x1="119.38" y1="60.96" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X7" gate="-5" pin="1"/>
<wire x1="104.14" y1="60.96" x2="104.14" y2="109.22" width="0.1524" layer="91"/>
<wire x1="104.14" y1="109.22" x2="124.46" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="RX2"/>
<wire x1="119.38" y1="58.42" x2="101.6" y2="58.42" width="0.1524" layer="91"/>
<wire x1="101.6" y1="58.42" x2="101.6" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X7" gate="-4" pin="1"/>
<wire x1="101.6" y1="114.3" x2="124.46" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="TX2"/>
<wire x1="119.38" y1="55.88" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="55.88" x2="88.9" y2="119.38" width="0.1524" layer="91"/>
<pinref part="X7" gate="-3" pin="1"/>
<wire x1="88.9" y1="119.38" x2="124.46" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D5"/>
<wire x1="119.38" y1="53.34" x2="81.28" y2="53.34" width="0.1524" layer="91"/>
<wire x1="81.28" y1="53.34" x2="81.28" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X7" gate="-2" pin="1"/>
<wire x1="81.28" y1="124.46" x2="124.46" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D18"/>
<wire x1="119.38" y1="50.8" x2="91.44" y2="50.8" width="0.1524" layer="91"/>
<wire x1="91.44" y1="50.8" x2="91.44" y2="45.72" width="0.1524" layer="91"/>
<wire x1="91.44" y1="45.72" x2="73.66" y2="45.72" width="0.1524" layer="91"/>
<wire x1="73.66" y1="45.72" x2="73.66" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X7" gate="-1" pin="1"/>
<wire x1="73.66" y1="129.54" x2="124.46" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D15"/>
<wire x1="119.38" y1="66.04" x2="109.22" y2="66.04" width="0.1524" layer="91"/>
<wire x1="109.22" y1="66.04" x2="109.22" y2="71.12" width="0.1524" layer="91"/>
<wire x1="109.22" y1="71.12" x2="93.98" y2="71.12" width="0.1524" layer="91"/>
<wire x1="93.98" y1="71.12" x2="93.98" y2="134.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="134.62" x2="142.24" y2="134.62" width="0.1524" layer="91"/>
<wire x1="142.24" y1="134.62" x2="142.24" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X7" gate="-8" pin="1"/>
<wire x1="142.24" y1="124.46" x2="147.32" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="X7" gate="-7" pin="1"/>
<wire x1="147.32" y1="129.54" x2="147.32" y2="137.16" width="0.1524" layer="91"/>
<wire x1="147.32" y1="137.16" x2="162.56" y2="137.16" width="0.1524" layer="91"/>
<wire x1="162.56" y1="137.16" x2="162.56" y2="88.9" width="0.1524" layer="91"/>
<wire x1="162.56" y1="88.9" x2="149.86" y2="88.9" width="0.1524" layer="91"/>
<wire x1="149.86" y1="88.9" x2="149.86" y2="81.28" width="0.1524" layer="91"/>
<wire x1="149.86" y1="81.28" x2="134.62" y2="81.28" width="0.1524" layer="91"/>
<wire x1="134.62" y1="81.28" x2="134.62" y2="27.94" width="0.1524" layer="91"/>
<wire x1="134.62" y1="27.94" x2="116.84" y2="27.94" width="0.1524" layer="91"/>
<wire x1="116.84" y1="27.94" x2="116.84" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="D19"/>
<wire x1="116.84" y1="48.26" x2="119.38" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D19"/>
<pinref part="SV5" gate="-1" pin="S"/>
<wire x1="7.62" y1="48.26" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="5.08" y1="17.78" x2="7.62" y2="17.78" width="0.1524" layer="91"/>
<wire x1="7.62" y1="17.78" x2="7.62" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="SV5" gate="-2" pin="S"/>
<wire x1="10.16" y1="17.78" x2="10.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D21"/>
<wire x1="10.16" y1="45.72" x2="22.86" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="SV5" gate="-3" pin="S"/>
<wire x1="15.24" y1="17.78" x2="15.24" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="RX0"/>
<wire x1="15.24" y1="43.18" x2="22.86" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="SV5" gate="-6" pin="S"/>
<wire x1="30.48" y1="17.78" x2="30.48" y2="25.4" width="0.1524" layer="91"/>
<wire x1="30.48" y1="25.4" x2="22.86" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D23"/>
<wire x1="22.86" y1="25.4" x2="22.86" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="SV5" gate="-5" pin="S"/>
<wire x1="25.4" y1="17.78" x2="22.86" y2="17.78" width="0.1524" layer="91"/>
<wire x1="22.86" y1="17.78" x2="22.86" y2="20.32" width="0.1524" layer="91"/>
<wire x1="22.86" y1="20.32" x2="20.32" y2="20.32" width="0.1524" layer="91"/>
<wire x1="20.32" y1="20.32" x2="20.32" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D22"/>
<wire x1="20.32" y1="38.1" x2="22.86" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="SV5" gate="-4" pin="S"/>
<wire x1="20.32" y1="17.78" x2="17.78" y2="17.78" width="0.1524" layer="91"/>
<wire x1="17.78" y1="17.78" x2="17.78" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="TX0"/>
<wire x1="17.78" y1="40.64" x2="22.86" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
