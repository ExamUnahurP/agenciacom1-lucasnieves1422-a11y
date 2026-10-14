object viajesSinFronteras{
    var packActual = "Ninguno"
    const packDisponibles = [Nacionales,Internacionales]
    method comprarPack(unPack){
        if(packDisponibles.contains(unPack)){
            packActual = unPack
        }else {
            self.error("pack no valido")
        }
    }
}

class Nacionales{
    var duracionDeDias
    
    var cordinadorAsignado
    var destinoDeViaje
    method destinoDeViaje() = destinoDeViaje
    const actividadesIncluidas = []
}

class Internacionales{
    var duracionDeDias
    
    var cordinadorAsignado
    var destinoDeViaje
    method destinoDeViaje() = destinoDeViaje
    var cantidadDeEscalas
    var esLugarDeInteres
}

class Cordinador{
    var cantDeViajesRealizados
    var estaMotivado
    var aniosDeExperiencia
    var rol
    const rolesValidos = [guia,asistenteLogistico,acompaniante]
    method cambiarDeRol(unRol){
        if(rolesValidos.contains(unRol)){
            rol = unRol
        }else{
            self.error("rol invalido")
        } 
    }
}

object guia{

}

object asistenteLogistico{

}

object acompaniante{

}




















