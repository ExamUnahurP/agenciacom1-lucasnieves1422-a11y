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

class Pack{
    const duracionDeDias 
    var precioBase
    var todosLosBeneficios
    var cordinadorACargo
    method precioTotal() = precioBase + todosLosBeneficios.costo()

}

class Nacionales inherits Pack{
    var destinoDeViaje
    method destinoDeViaje() = destinoDeViaje
    const actividadesIncluidas = []
    override method precioTotal() = super + (self.precioBase() / 20)
}

class Internacionales inherits Pack{
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

object guia{}
object asistenteLogistico{}
object acompaniante{}

class BeneficiosEspeciales{
    const tiposDeBeneficiosOpcionales = ["Traslados privados","acceso a salas VIP","Seguros adicionales"]
    var costo
    var estaVigente
    method costo() = costo
}































