package org.obf.core

class Parish {

	String name
	String address
	byte[] image
	Map<String, Object> imageParams
	String parishPriest
    static hasMany = [parishioners: Parishioner]
	
	@Override
	public String toString() {
		return "Parish [name=" + name + ", address=" + address + "]";
	}


	static constraints = {
		image maxSize:3 * 1024 * 1024
		image nullable:true
    }
}
