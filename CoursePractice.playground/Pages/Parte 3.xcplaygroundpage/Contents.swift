//Parte 3: Administrar la Cuenta Bancaria
//Añadir El Código Inicial Para:
//Crear Cuenta Bancaria
//Implementar Operaciones a Cuenta Bancaria
func getBalanceInfo() -> String {
    "Balance Actual: $\(balance)"
}
func withdraw(_ amount: Int) {
    balance -= amount
    print("Retirado:: $\(amount). \(getBalanceInfo())")
}
func debitWithdraw(_ amount: Int) {
    if amount > balance {
        print("Fondos Insuficientes Para Retirar $\(amount). \(getBalanceInfo())")
    } else {
        withdraw(amount)
    }
}
func deposit(_ amount: Int) {
    balance += amount
    print("Depositado $\(amount). \(getBalanceInfo())")
}
func creditDeposit(_ amount: Int) {
    deposit(amount)
    if balance == 0 {
        print("Cuenta Pagada.")
    } else if balance > 0 {
        print("Cuenta SobrePagada.")
    }
}
print("Bienvenido al Banco Virtual. ¿Qué Tipo de Cuenta Deseas Hacer?")
print("1. Débito")
print("2. Crédito")
print("3. Cuenta Bancaria")
var accountType = ""
var input = 0

repeat {
    print("¿Cuál Opción eliges? (1, 2 o 3)")
    input = Int.random(in: 1...3)
    print("Opción Seleccionada: \(input)")
    switch input {
    case 1: accountType = "debito"
    case 2: accountType = "credito"
    case 3: accountType = "generica"
    default: break
    }
} while accountType == ""
var balance = 100
let transferAmount = 50
print("Balance Actual: $\(balance)")
print("Cantidad Transferida: $\(transferAmount)")
//Implementar la Opción de Transferencia Para:
//Cuentas Genéricas, Crédito y Débito
//Implementar la Función para Manipular Transferencias
func transferMoney(_ transferType: String) {
    switch transferType {
    case "retiro":
        if accountType == "debito" {
            debitWithdraw(transferAmount)
        } else {
            withdraw(transferAmount)
        }
    case "deposito":
        if accountType == "credito" {
            creditDeposit(transferAmount)
        } else {
            deposit(transferAmount)
        }
    default:
        break
    }
}
//Almacenar Estados Con Variables
var isSystemOpened = true
var option = 0
//Administrar la Cuenta Bancaria basado en la Opción de Intefaz de Usuario
repeat {
    print("¿Qué te Gustaría Hacer?")
    print("1. Checar Cuenta Bancaria")
    print("2. Retirar Dinero")
    print("3. Depositar Dinero")
    print("4. Cerrar el Sistema")
    print("Cuál Opción Eliges? (1, 2, 3 o 4)")
    option = Int.random(in: 1...5)
    print("Opción Seleccionada: \(option).")
    switch option {
    case 1: print("Balance Actual: $\(balance) Pesos")
    case 2: transferMoney("retiro")
    case 3: transferMoney("deposito")
    case 4:
        isSystemOpened = false
        print("El Sistema Ha Finalizado.")
    default: break
    }
} while isSystemOpened
