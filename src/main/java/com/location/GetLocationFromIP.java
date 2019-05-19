package com.location;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class GetLocationFromIP {
	 public LocationUseBean get_ip_Details(String ip) {
	        String key = "9d6jinufcfdfacc213c7ddf4ef911dfe97b55e4696be3732bf8302876c09ebad06b";
	        ip = ip.trim();
	        LocationUseBean obj_Location_Use_Bean = new LocationUseBean();
	        System.out.println("The ip adress is before " + ip + "  split");
	        try {
	            if (ip.contains(",")) {
	                String temp_ip[] = ip.split(",");
	                ip = temp_ip[1].trim();
	            }
	        } catch (Exception e) {
	            // TODO: handle exception
	        }
	        System.out.println("The ip adress is after " + ip + " split");
	        URL url;
	        try {
	            url = new URL("https://api.ipinfodb.com/v3/ip-city/?key=" + key + "&ip=" + ip);
	            BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
	            String strTemp = "";
	            String temporaray = "";
	            String temp_array[] = null;
	            while (null != (strTemp = br.readLine())) {
	                temporaray = strTemp;
	            }
	            temp_array = temporaray.split(";");
	            System.out.println("Str length is " + temp_array.length);
	            int length = temp_array.length;
	            
	            if (length == 11) {
	                obj_Location_Use_Bean.setIp_address(ip);
	                if (temp_array[3] != null) {
	                    obj_Location_Use_Bean.setCountry_code(temp_array[3]);
	                }
	                if (temp_array[4] != null) {
	                    obj_Location_Use_Bean.setCountry(temp_array[4]);
	                }
	                if (temp_array[5] != null) {
	                    obj_Location_Use_Bean.setState(temp_array[5]);
	                }
	                if (temp_array[6] != null) {
	                    obj_Location_Use_Bean.setCity(temp_array[6]);
	                }
	                if (temp_array[7] != null) {
	                    obj_Location_Use_Bean.setZip(temp_array[7]);
	                }
	                if (temp_array[8] != null) {
	                    obj_Location_Use_Bean.setLat(temp_array[8]);
	                }
	                if (temp_array[9] != null) {
	                    obj_Location_Use_Bean.setLon(temp_array[9]);
	                }
	                if (temp_array[10] != null) {
	                    obj_Location_Use_Bean.setUtc_offset(temp_array[10]);
	                }
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return obj_Location_Use_Bean;
	    }
	    public static void main(String[] args) {
	        GetLocationFromIP obj_Get_Location_From_IP = new GetLocationFromIP();
	        LocationUseBean obj_Location_Use_Bean = obj_Get_Location_From_IP.get_ip_Details("103.196.234.174");
	        System.out.println("IP Address--" + obj_Location_Use_Bean.getIp_address());
	        System.out.println("Country Code-- " + obj_Location_Use_Bean.getIp_address());
	        System.out.println("Country--" + obj_Location_Use_Bean.getCountry());
	        System.out.println("State--" + obj_Location_Use_Bean.getState());
	        System.out.println("City--" + obj_Location_Use_Bean.getCity());
	        System.out.println("ZIP--" + obj_Location_Use_Bean.getZip());
	        System.out.println("Lat--" + obj_Location_Use_Bean.getLat());
	        System.out.println("Lon--" + obj_Location_Use_Bean.getLon());
	        System.out.println("Offset--" + obj_Location_Use_Bean.getUtc_offset());
	    }
}
