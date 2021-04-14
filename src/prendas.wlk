class Prenda {
    var estado
    var precioBase
    var tipoDePrenda

    method precio() {
        return estado.precioModificado(precioBase)
    }
}

object nueva {
    method precioModificado(precioBase) {
        return precioBase
    }
}

class Promocion {
    var descuentoPromocion

    method precioModificado(precioBase) {
        return precioBase - descuentoPromocion
    }
}

object liquidacion {
    method precioModificado(precioBase) {
        return precioBase / 2
    }
}