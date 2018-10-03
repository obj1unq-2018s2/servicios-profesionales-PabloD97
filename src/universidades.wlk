import profesionales.*


class Universidad{
	var donaciones=0
	
	var property provincia
	var property honorariosRecomendados
	
	method donaciones(donacion){ donaciones += donacion }
	
	
}

object asociacioDeProfesionalesDelLitoral{
	var donaciones=0
	
	method donaciones(donacion){ donaciones+= donacion }
}