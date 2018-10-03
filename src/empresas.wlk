import personas.*
import universidades.*
import profesionales.*

class EmpresasDeServicio {
	
	var profesionalesContratados=[]
	var property honorariosReferencia
	
	
	method contratarProfesional(profesional){ profesionalesContratados.add(profesional) }
	method profesionalesCaros(){
	  return profesionalesContratados.filter({ profesional=> profesional.honorariosPorHora() > honorariosReferencia }).asSet()
	}
	method universidadesDondeEstudiaron(){
		return	profesionalesContratados.map({profesional=> profesional.universidad() }).asSet() 
	}
	
	method profesionalMasBarato(){
		return profesionalesContratados.min({ profesional=> profesional.honorariosPorHora() })
	}
	
	method provinciaCubierta(provincia){
		return profesionalesContratados.any({profesional=> profesional.provinciasDondePuedeTrabajar().contains(provincia) })
	}
	
	method cuantosEstudiaron(universidad){
		return profesionalesContratados.count({profesionales=> profesionales.universidad() == universidad })
	}
	
	
	method podemosSatisfacerA(solicitante)= solicitante.puedeSerAtendido(self)
				
}
