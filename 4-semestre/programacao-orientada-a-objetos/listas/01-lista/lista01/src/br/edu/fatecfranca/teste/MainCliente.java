package br.edu.fatecfranca.teste;

import br.edu.fatecfranca.exe02.Cliente;

public class MainCliente {
    public static void main(String[] args) {
        Cliente cliente1 = new Cliente(123, 87,"Fulano",1000);

        cliente1.realizarDeposito(500);
        cliente1.realizarSaque(300);
        cliente1.dadosCliente();

        Cliente cliente2 = new Cliente(-321,-75, "Beltrano", -9);
        cliente2.realizarDeposito(700);
        cliente2.realizarSaque(250);
        cliente2.dadosCliente();
    }
}