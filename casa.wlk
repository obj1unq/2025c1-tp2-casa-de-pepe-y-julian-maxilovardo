import cosas.*
import cuentasBancarias.*

object casaDePepeYJulian {
    const cosas = []
    var property cuentaAsignada = cuentaCorriente

    method cosas(){
        return cosas
    }

    method comprar(cosa){
        cosas.add(cosa)
        self.cuentaAsignada().extraer(cosa.precio())
    }

    method cantidadDeCosasCompradas(){
        return cosas.size()
    }

    method tieneAlgun(categoria){
        return cosas.count({cosa => cosa.esCategoria(categoria)})>0
    }

    method vieneDeComprar(categoria){
        return if(cosas.isEmpty()){
            false
        }else{
            cosas.last().esCategoria(categoria)
        }
    }

    method esDerrochona(){
        return cosas.average({cosa => cosa.precio()}) >= 9000
    }

    method compraMasCara(){
        return cosas.max({cosa => cosa.precio()})
    }

    method comprados(categoria){
        return cosas.filter({cosa => cosa.esCategoria(categoria)})
    }

    method malaEpoca(){
        return cosas.all({cosa => cosa.esCategoria(comida)})
    }

    method queFaltaComprar(lista){
        return lista.filter({elemento => self.noEstaEn(elemento,cosas)})
    }

    method noEstaEn(elemento,lista){
        return not lista.contains(elemento)
    }

    method faltaComida(){
        return self.cantidadComida() < 2
    }

    method cantidadComida(){
        return cosas.count({cosa => cosa.esCategoria(comida)})
    }

    method categoríasCompradas(){
        return cosas.map({cosa => cosa.categoria()}).asSet()
    }
}
