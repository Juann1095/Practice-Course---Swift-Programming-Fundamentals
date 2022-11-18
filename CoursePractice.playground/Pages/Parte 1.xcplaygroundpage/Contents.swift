//Aplicar Conocimientos Adquiridos
//Final Project:
//The Bank Account Simulator

//Parte 1
//Crear la Cuenta Bancaria y Acomodar 3 Tipos:
//Crédito, Débito, Genérico
print("Bienvenido al Banco Virtual")
print("¿Que tipo de Cuenta quieres Hacer?")
print("1. Cuenta Débito")
print("2. Cuenta Crédito")
print("3. Cuenta Genérica")
//Crear Variables para Tipo Cuenta y EleccionUsr
var TipoCuenta=""
var UsrCaptura=0
repeat{
    print("¿Cuál Opción eliges? 1,2 o 3")
    UsrCaptura = Int.random(in: 1...3)
    switch UsrCaptura {
    case 1: TipoCuenta="Débito"
    case 2: TipoCuenta="Crédito"
    case 3: TipoCuenta="Genérica"
    default: break
    }
} while TipoCuenta==""
print("---------------------------------")
print("Has Abierto una Cuenta de Tipo: \(TipoCuenta)")
