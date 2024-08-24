object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
  var energia = 30

  method energia() {
    return energia

  }

  method comer(alimento) {
    energia = energia + ( alimento.energiaQueAporta() / 2)   

  }

   method volar(distancia){
    energia = energia - 20 - distancia * 2

  }

}


object roque {

  var aveActual = pepita  // Inicialmente es pepita
  var contadorDeCenas = 0

  method cambiarAve(nuevaAve) {
    aveActual = nuevaAve
    contadorDeCenas = 0  // Reinicia el contador cuando cambio de aves 
  }

  method alimentar(alimento) {
    aveActual.comer(alimento)
    contadorDeCenas = contadorDeCenas + 1
  }

  method cenas() {
    return contadorDeCenas
  }
}