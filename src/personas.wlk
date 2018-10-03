import profesionales.*
import empresas.*

class Persona {
	
	var property vive
	method puedeSerAtendido(empresa)=empresa.provinciaCubierta(vive)
}

class Institucion{
	var property universidades=#{}
	
	method vive(){}
	method puedeSerAtendido(empresa)= empresa.universidadesDondeEstudiaron().intersection(universidades).size()>0
}