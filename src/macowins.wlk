import prendas.*
import ventas.*

object macowins {
    const ventas = []

    method ganancia(unDia) {
        return self.gananciasPorVentasEn(unDia).sum()
    }

    method ventasEn(unDia) {
        return ventas.filter({ venta => venta.fechaDeVenta() == unDia })
    }

    method gananciasPorVentasEn(unDia) {
        return self.ventasEn(unDia).map({ venta => venta.ganancia() })
    }
    
    method realizarVenta(unaVenta) {
    	ventas.add(unaVenta)
    }
}