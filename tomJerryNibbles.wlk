object tom {
    var energia = 50
    var ultimoRatonComido = jerry

    method cambiarUltimoRatonComido(ratonComido){
        ultimoRatonComido = ratonComido
    }

    method ultimoRatonComido(){
        return ultimoRatonComido
    }

    method getEnergia() = energia

    method correr(metrosRecorridos){
        energia -= ( metrosRecorridos / 2 )
    }

    method comerRaton(raton){
        energia += 12 + raton.peso()
    }
    
    method velocidadMaxima(){
        return 5 + ( self.getEnergia() / 10 )
    }

    method puedeCazar(distancia){
        return distancia / 2 < self.getEnergia()
    }

    method puedeCazarAUnRaton(raton,distancia){
        if(self.puedeCazar(distancia)){
            self.correr(distancia)
            self.comerRaton(raton)
        }
    }
}

object jerry {
    var edad = 2

    method getEdad() = edad

    method cumplirAnios(){
        edad += 1
    }

    method peso() = self.getEdad() * 20
}

object nibbles {
    method peso() = 35
}

object mickey {
    var peso = 20

    method correr(){
        peso -= 1
    }

    method peso() = peso
}