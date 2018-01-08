package org.obf.core

class Parishioner {
	
	String name
	String address
	Date dateOfBirth
	Date dateOfBaptism
	Date dateOfConfirmation
	Date dateOfCommunion
	String occupation
	Date dateOfAnointing
	Date dateOfDeath
	Family family
	Parishioner father
	Parishioner mother
	Parishioner godFather
	Parishioner godMother
	Parish cemetry
	Parish parishOfBirth
	Parish parishOfBaptism
	Parish parishOfConfirmation
	Parish parishOfCommunion
	Parish parishOfAnointing
	Parish parishOfDeath
	
	@Override
	public String toString() {
		return "Parishioner [name=" + name + ", address=" + address
				+ ", father=" + father + ", mother=" + mother + "]";
	}
	static belongsTo = [parish: Parish]

    static constraints = {
		dateOfBaptism nullable:true
		dateOfConfirmation nullable:true
		dateOfCommunion nullable:true
		dateOfAnointing nullable:true
		dateOfDeath nullable:true  
		family nullable:true
		father nullable:true
		mother nullable:true
		godFather nullable:true
		godMother nullable:true
		parish nullable:true
		cemetry nullable:true
		parishOfBirth nullable:true
		parishOfBaptism nullable:true
		parishOfConfirmation nullable:true
		parishOfCommunion nullable:true
		parishOfAnointing nullable:true
		parishOfDeath nullable:true
    }
}
