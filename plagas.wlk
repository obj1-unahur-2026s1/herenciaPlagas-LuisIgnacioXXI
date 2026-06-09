import elementos.*

class Plaga {
    var poblacion
    method transmitirEnfermedades() {
        return poblacion >= 10 and self.condicionAdicional()
    }
    method condicionAdicional()
    method nivelDeDaño() 

    method atacar(unElemento) {
        unElemento.recibirAtaqueDe(self)
        poblacion = poblacion * 1.1
    }
}

class Cucarachas inherits Plaga {
    var peso
    override method nivelDeDaño() = poblacion * 0.5
    override method condicionAdicional() = peso >= 10
    override method atacar(unElemento) {
        super(unElemento)
        peso += 2
    }
}

class Pulgas inherits Plaga {
    override method nivelDeDaño() = poblacion * 2
    override method condicionAdicional() = true
}

class Garrapatas inherits Pulgas {
    override method atacar(unElemento){
        unElemento.recibirAtaqueDe(self)
        poblacion = poblacion * 1.2
    }
}

class Mosquitos inherits Plaga {
    override method nivelDeDaño() = poblacion
    override method condicionAdicional() = poblacion % 3 == 0
}












