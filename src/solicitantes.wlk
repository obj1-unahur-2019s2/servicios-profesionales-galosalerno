import profesionales.*
import empresas.*



class PersonasSolicitantes {
	
	var property provincia 
	
	method puedeSerAtendidaPor(profesional){
		return profesional.provinciasDondePuedeTrabajar().contains(provincia)
	}
		
}

class InstitucionesSolicitantes{
	
		var property universidadesQueReconoce = []
		
		method puedeSerAtendidaPor(profesional){
			return universidadesQueReconoce.any{a=>a == profesional.universidad()}
		}
		
}
