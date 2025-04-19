object cuentaCorriente {
    var property saldo = 30000

    method depositar(cantidad){
        self.saldo(saldo + cantidad)
    }

    method extraer(cantidad){
        if(cantidad>saldo){
            self.error("no es posible extraer, no hay saldo suficiente")
        }else{
            self.saldo(saldo - cantidad)
        }
    }
}

object cuentaConGastos {
    var property saldo = 0
    var property costoPorOperacion = 0

    method depositar(cantidad){
        if(cantidad > 1000){
            self.error("excede limite por operacion")
        }else{
            self.saldo(saldo + (cantidad - self.costoPorOperacion()))
        }
    }

    method extraer(cantidad){
        saldo = saldo - cantidad
    }
}