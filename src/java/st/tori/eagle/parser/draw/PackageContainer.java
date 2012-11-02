package st.tori.eagle.parser.draw;

import java.util.HashMap;
import java.util.Map;

import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Package;

public class PackageContainer {

	Map<String, Map<String, Package>> packMap = new HashMap<String, Map<String, Package>>();
	
	public void addPackage(String name, String packageValue, Package pack) {
		Map<String, Package> subMap = packMap.get(name);
		if(subMap==null) {
			subMap = new HashMap<String, Package>();
			packMap.put(name, subMap);
		}
		subMap.put(packageValue, pack);
	}
	public Package getPackage(String name, String packageValue) {
		if(name==null||packageValue==null)return null;
		Map<String, Package> subMap = packMap.get(name);
		if(subMap==null)return null;
		return subMap.get(packageValue);
	}

}
