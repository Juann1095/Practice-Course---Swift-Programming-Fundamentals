//Parte 2: Definir las Operaciones Bancarias
//Usuarios Podrán Retirar Dinero de los Depósitos
var balance=100
//Función Obtener Balance
func ObtenerBalance()->String{
    "Balance Actual:$\(balance)"
}
print(ObtenerBalance())
//Implementación del Retiro
func Retiro(_ Cantidad:Int) {
    balance-=Cantidad
    print("Retiro:$\(Cantidad). \(ObtenerBalance())")
}
Retiro(20)
//Implementación de Retiro por Cuentas Débito
func RetiroDebito(_ Cantidad:Int) {
    // Comprobar si la cantidad es Mayor que Balance
    if Cantidad>balance{
        print("Fondos Insuficientes para Retirar $\(Cantidad).\(ObtenerBalance())")
    } else {
        Retiro(Cantidad)
    }
}
RetiroDebito(81)
RetiroDebito(80)
//Implementar el depósito para Cuentas Gen y Deb
func Deposito(_ Cantidad:Int){
    balance+=Cantidad
    print("Depositado: $\(Cantidad). \(ObtenerBalance())")
}

Deposito(100)
//Implementar el Depósito para Cuentas Crédito
func DepositoCredito (_ Cantidad:Int){
    Deposito(Cantidad)
    if balance==0 {
        print("Cuenta Pagada")
    }
    else if balance>0{
        print("Cuenta SobrePagada.")
    }
}
Retiro(200)
DepositoCredito(50)
DepositoCredito(50)
DepositoCredito(100)
