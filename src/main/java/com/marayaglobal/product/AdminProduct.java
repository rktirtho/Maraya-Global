package com.marayaglobal.product;

import java.sql.Timestamp;

public class AdminProduct {
	 private int id ;
	 private String title ;
	 private String category ;
	 private double regularprice ;
	 private float discount ;
	 private String brand ;
	 private String model ;
	 private String processor ;
	 private String genaration ;
	 private String clockSpeed ;
	 private String cache ;
	 
	 
	 private String mainCamera;
	 private String selfieCamera;
	 private String announced;
	 private String wlan;
	 private String bluetooth;
	 private String dimensions;
	 
	 
	 
	 
	 private String displayType ;
	 private String displayResulation ;
	 private String displaySize ;
	 private String touch ;
	 
	 private String ramType ;
	 private String ram ;
	 private String storage ;
	 private String graphicsChipset ;
	 private String graphicsMemory ;
	 private String networking ;
	 private String displayPort ;
	 private String audioPort ;
	 private String usbPort ;
	 private String bettery ;
	 private String weight ;
	 private String color ;
	 private int view ;	 
	 private String operatingSystem ;
	 private String portNo ;
	 private String warrenty ;
	 private String description ;
	 private String primaryImage ;
	 private Timestamp time ;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getRegularprice() {
		return regularprice;
	}
	public void setRegularprice(double regularprice) {
		this.regularprice = regularprice;
	}
	public float getDiscount() {
		return discount;
	}
	
	public int currentPrice() {
		if (discount >0 ) {
			return  (int) (regularprice-((regularprice*discount)/100));
		}else {
			return (int) regularprice;
		}
		
	}
	
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getProcessor() {
		return processor;
	}
	public void setProcessor(String processor) {
		this.processor = processor;
	}
	public String getGenaration() {
		return genaration;
	}
	public void setGenaration(String genaration) {
		this.genaration = genaration;
	}
	public String getClockSpeed() {
		return clockSpeed;
	}
	public void setClockSpeed(String clockSpeed) {
		this.clockSpeed = clockSpeed;
	}
	public String getCache() {
		return cache;
	}
	public void setCache(String cache) {
		this.cache = cache;
	}
	public String getDisplayType() {
		return displayType;
	}
	public void setDisplayType(String displayType) {
		this.displayType = displayType;
	}
	public String getDisplayResulation() {
		return displayResulation;
	}
	public void setDisplayResulation(String displayResulation) {
		this.displayResulation = displayResulation;
	}
	public String getDisplaySize() {
		return displaySize;
	}
	public void setDisplaySize(String displaySize) {
		this.displaySize = displaySize;
	}
	public String getTouch() {
		return touch;
	}
	public void setTouch(String touch) {
		this.touch = touch;
	}
	public String getRamType() {
		return ramType;
	}
	public void setRamType(String ramType) {
		this.ramType = ramType;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getStorage() {
		return storage;
	}
	public void setStorage(String storage) {
		this.storage = storage;
	}
	public String getGraphicsChipset() {
		return graphicsChipset;
	}
	public void setGraphicsChipset(String graphicsChipset) {
		this.graphicsChipset = graphicsChipset;
	}
	public String getGraphicsMemory() {
		return graphicsMemory;
	}
	public void setGraphicsMemory(String graphicsMemory) {
		this.graphicsMemory = graphicsMemory;
	}
	public String getNetworking() {
		return networking;
	}
	public void setNetworking(String networking) {
		this.networking = networking;
	}
	public String getDisplayPort() {
		return displayPort;
	}
	public void setDisplayPort(String displayPort) {
		this.displayPort = displayPort;
	}
	public String getAudioPort() {
		return audioPort;
	}
	public void setAudioPort(String audioPort) {
		this.audioPort = audioPort;
	}
	public String getUsbPort() {
		return usbPort;
	}
	public void setUsbPort(String usbPort) {
		this.usbPort = usbPort;
	}
	public String getBettery() {
		return bettery;
	}
	public void setBettery(String bettery) {
		this.bettery = bettery;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public String getOperatingSystem() {
		return operatingSystem;
	}
	public void setOperatingSystem(String operatingSystem) {
		this.operatingSystem = operatingSystem;
	}
	public String getPortNo() {
		return portNo;
	}
	public void setPortNo(String portNo) {
		this.portNo = portNo;
	}
	public String getWarrenty() {
		return warrenty;
	}
	public void setWarrenty(String warrenty) {
		this.warrenty = warrenty;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrimaryImage() {
		return primaryImage;
	}
	public void setPrimaryImage(String primaryImage) {
		this.primaryImage = primaryImage;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	
	
	
	
	
	public String getMainCamera() {
		return mainCamera;
	}
	public void setMainCamera(String mainCamera) {
		this.mainCamera = mainCamera;
	}
	public String getSelfieCamera() {
		return selfieCamera;
	}
	public void setSelfieCamera(String selfieCamera) {
		this.selfieCamera = selfieCamera;
	}
	public String getAnnounced() {
		return announced;
	}
	public void setAnnounced(String announced) {
		this.announced = announced;
	}
	public String getWlan() {
		return wlan;
	}
	public void setWlan(String wlan) {
		this.wlan = wlan;
	}
	public String getBluetooth() {
		return bluetooth;
	}
	public void setBluetooth(String bluetooth) {
		this.bluetooth = bluetooth;
	}
	public String getDimensions() {
		return dimensions;
	}
	public void setDimensions(String dimensions) {
		this.dimensions = dimensions;
	}
	@Override
	public String toString() {
		return "AdminProduct [id=" + id + ", title=" + title + ", category=" + category + ", regularprice="
				+ regularprice + ", discount=" + discount + ", brand=" + brand + ", model=" + model + ", processor="
				+ processor + ", genaration=" + genaration + ", clockSpeed=" + clockSpeed + ", cache=" + cache
				+ ", displayType=" + displayType + ", displayResulation=" + displayResulation + ", displaySize="
				+ displaySize + ", touch=" + touch + ", ramType=" + ramType + ", ram=" + ram + ", storage=" + storage
				+ ", graphicsChipset=" + graphicsChipset + ", graphicsMemory=" + graphicsMemory + ", networking="
				+ networking + ", displayPort=" + displayPort + ", audioPort=" + audioPort + ", usbPort=" + usbPort
				+ ", bettery=" + bettery + ", weight=" + weight + ", color=" + color + ", view=" + view
				+ ", operatingSystem=" + operatingSystem + ", portNo=" + portNo + ", warrenty=" + warrenty
				+ ", description=" + description + ", primaryImage=" + primaryImage + ", time=" + time + "]";
	}

	 
	 
	 
	 
}
