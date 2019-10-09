import profesionales.*

class Empresa {
		
		var property honorarioDeReferencia
		var empleadosContratados = []
		
		method agregarEmpleado(empleado){empleadosContratados.add(empleado)}
		
		method cuantosEstudiaronEn(universidad){
				
			return empleadosContratados.count({a=>a.universidad()==universidad})
		} 
		
		method profesionalesCaros(){
			
			return empleadosContratados.filter({a=>a.honorariosPorHora()>honorarioDeReferencia})
		}
		method universidadesFormadoras(){
			
			return empleadosContratados.map{a=>a.universidad()}.asSet()
		}
		method profesionalMasBarato(){
			
			return empleadosContratados.min{a=>a.honorariosPorHora()}	
		}
		method genteAcotada(){
			
			return empleadosContratados.all{a=>a.provinciasDondePuedeTrabajar().size()<=3}
		}
		
	
}
