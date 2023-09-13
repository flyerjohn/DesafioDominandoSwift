import UIKit

// Criado por João Gabriel Antunes - 13/02/2023
/// Neste desafio, decidi criar um simples sistema de gerenciamento de conta bancária para aplicar os conhecimentos de Programação Orientada a Objetos em Swift

// Primeiro, precisamos criar a nossa classe que representa a conta bancária
class ContaBancaria {
    var idConta: Int
    var nomeTitular: String
    var saldo: Double = 0.0
    
    init(idConta: Int, nomeTitular: String, saldo: Double) {
        self.idConta = idConta
        self.nomeTitular = nomeTitular
        self.saldo = saldo
    }
    
    func sacar(quantia: Double) -> Double {
        //TODO: implementar a funcionalidade do saque
        if (saldo < quantia){
            print("Saldo insuficiente para saque.")
            return 0
        } else {
            saldo -= quantia
            print("\(quantia) reais foram sacados com sucesso! Novo saldo: \(saldo)")
            return saldo
        }
    }
    
    func depositar(quantia: Double) -> Double {
        //TODO: implementar a funcionalidade do depósito
        saldo += quantia
        print("\(quantia) reais foram depositados com sucesso! Novo saldo: \(saldo)")
        return saldo
    }
    
    func checarSaldo() -> Double {
        return self.saldo
    }
}
// alguns testes do sistema de gerenciamento
var conta1 = ContaBancaria(idConta: 0, nomeTitular: "João Silva", saldo: 10000.84)
conta1.sacar(quantia: 9000.20)
conta1.depositar(quantia: 10000.0)
print("Saldo atual: \(conta1.checarSaldo())")
conta1.sacar(quantia: 120000)
