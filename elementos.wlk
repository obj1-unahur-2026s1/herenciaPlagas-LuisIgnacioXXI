import plagas.*

class Hogar {
    var mugre
    const confort
    method esBueno() = mugre * 2 <= confort

    method recibirAtaqueDe(unaPlaga) {
        mugre += unaPlaga.nivelDeDaño()
    }
}

class Huerta {
    var produccion
    method esBueno() = produccion > nivelDeCosecha.valor()
    method recibirAtaqueDe(unaPlaga) {
        produccion -= unaPlaga.nivelDeDaño() * 0.1 +
        if (unaPlaga.transmitirEnfermedades()) 10 else 0
    }
}
object nivelDeCosecha {
    var property valor = 10
}

class Mascota {
    var salud
    method esBueno() = salud > 250
    method recibirDañoDe(unaPlaga) {
        if(unaPlaga.transmitirEnfermedades()){
            salud = (salud - unaPlaga.nivelDeDaño()).max(0)
        }
    }
}


class Barrio {
    const elementos = []

    method esCopado(){
        return self.cantidadElementosBuenos() > elementos.size() / 2
    } 
    method cantidadElementosBuenos() {
        return elementos.count({e => e.esBueno()})
    }
}









