package org.obf.core

import java.util.Map;

class Family {
	
	byte[] marriagePhoto
	Map<String, Object> imageParams
	String marriedByFather
	Date marriedOn
	Parish marriedIn
	Parishioner witness1
	Parishioner witness2
	Parishioner witness3
	
	static hasMany = [children: Parishioner, visitsFromParishPriest: Date, subscriptions: Date]
	static hasOne = [husband: Parishioner, wife: Parishioner]

    static constraints = {
		witness1 nullable:true
		witness2 nullable:true
		witness3 nullable:true
		marriagePhoto nullable:true 
    }
}
