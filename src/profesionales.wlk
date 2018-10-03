import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	var cobro
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	method cobrar(importe){cobro=importe}
	
	method donar(){
		universidad.donaciones(cobro)
		cobro=0
	}
}



// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	var cobro
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora()= universidad.honorariosRecomendados()
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()} }
	
	method cobrar(importe){ cobro+= importe }
	
	method donar(){
		universidad.donaciones(cobro/2) 
		cobro -= cobro/2
	}

}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var cobro
	
	var property universidad
	var property provinciasDondePuedeTrabajar
	var property honorariosPorHora
	
	method cobrar(importe){ cobro+= importe }
	method pasarDinero(alguien,plata){
		alguien.cobro(plata)
		cobro-=plata
	}
}





