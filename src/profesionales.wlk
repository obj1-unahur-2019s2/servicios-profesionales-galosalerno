
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	       
}



class ProfesionalVinculado {
	
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar(){return #{universidad.provincia()}}
	method honorariosPorHora(){return universidad.honorarios()}
	//method cobrarDinero(){universidad}
}



class ProfesionalLibre {
	
		var property universidad
		var property honorariosPorHora
		var property provinciasDondePuedeTrabajar
		
		
}

class Universidad {
	
		var dineroRecaudado = 0
		
		var property provincia //recibe un string 
		var property honorarios
		
		method recibirDonacion(dinero){dineroRecaudado+=dinero}
		
}
