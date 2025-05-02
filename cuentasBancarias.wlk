object cuentaCorriente {
    var property saldo = 50000

    method depositar(cantidad){
        self.saldo(saldo + cantidad)
    }

    method extraer(cantidad){
        self.validarOperacion(cantidad)
        self.saldo(self.saldo() - cantidad)
    }

    method validarOperacion(cantidad){
        if(cantidad>saldo){
            self.error("no es posible extraer, no hay saldo suficiente")
        }
    }
}

object cuentaConGastos {
    var property saldo = 50000
    var property costoPorOperacion = 0

    method depositar(cantidad){
        self.validarOperacion(cantidad)
        self.saldo(saldo + (cantidad - self.costoPorOperacion()))
    }

    method validarOperacion(cantidad) {
        if(cantidad > self.depositoMaximo()){
            self.error("excede limite por operacion")
        }
    }

    method depositoMaximo(){
        return 1000
    }

    method extraer(cantidad){
        saldo = saldo - cantidad
    }
}