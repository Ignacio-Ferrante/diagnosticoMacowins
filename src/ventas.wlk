class Venta {
    const prendasVendidas = []
    var fechaDeVenta
    var metodoDePago

    method prendasVendidas() {
        return prendasVendidas
    }

    method fechaDeVenta() {
        return fechaDeVenta
    }

    method precioPorPrendasVendidas() {
        return prendasVendidas.map({ prenda => prenda.precio() }).sum()
    }

    method ganancia() {
        return self.precioPorPrendasVendidas() + metodoDePago.recargo(self.precioPorPrendasVendidas())
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