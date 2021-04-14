class Venta {
    const prendasVendidas = []
    var fechaDeVenta
    var metodoDePago

    method fechaDeVenta() {
        return fechaDeVenta
    }

    method precioPorPrendasVendidas() {
        return prendasVendidas.map({ prenda => prenda.precio() }).sum()
    }

    method ganancia() {
        return self.precioPorPrendasVendidas() + metodoDePago.recargo(self.precioPorPrendasVendidas())
    }
    
    method agregarPrenda(unaPrenda) {
    	prendasVendidas.add(unaPrenda)
    }
}

object efectivo {
    method recargo() {
        return 0
    }
}

class Tarjeta {
    var cantidadDeCuotas
    var coeficiente

    method recargo(precioPrendas) {
        return cantidadDeCuotas * coeficiente + precioPrendas * 0.1
    }
}