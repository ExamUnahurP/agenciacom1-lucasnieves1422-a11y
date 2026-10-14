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
    const todosLosBeneficios = []
    var cordinadorACargo
    var destinoDeViaje
    method destinoDeViaje() = destinoDeViaje
    method precioTotal() = precioBase + todosLosBeneficios.sum(costo)
}



class Nacionales inherits Pack{
    const actividadesIncluidas = []
    override method precioTotal() = super + (self.precioBase() / 20)
}

class Internacionales inherits Pack{
    var cantidadDeEscalas
    var esLugarDeInteres
}

class Cordinador{
    var cantDeViajesRealizados
    var estaMotivado 
    var aniosDeExperiencia
    var rol
    method esAltamenteCertificado() = cantDeViajesRealizados > 20 && rol.esCertificado()
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
    method esCertificado() = Cordinador.estaMotivado
}
object asistenteLogistico{
    method esCertificado() = Cordinador.aniosDeExperiencia > 3
}
object acompaniante{
    method esCertificado(){}
}

class BeneficiosEspeciales{
    const tiposDeBeneficiosOpcionales = ["Traslados privados","acceso a salas VIP","Seguros adicionales"]
    var costo
    var estaVigente
    method precioTotalDeBeneficio() =
        if(!estaVigente){
            costo = 0
        } 
    method costo() = costo
}

class Provinciales inherits Nacionales{
    cantDeViajesAVisitar
}






























