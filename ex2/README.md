# Entendendo a Separação de Responsabilidades no ColdFusion

Este documento serve para fixar o conceito de separação entre a lógica de processamento e a interface visual.

## O Conceito: Componente vs. View

Em aplicações estruturadas, nós dividimos as tarefas para que o código fique organizado, seguro e fácil de dar manutenção:

* **O Componente (`.cfc`):** É o cérebro da operação. Ele não sabe o que é HTML, CSS ou navegador. Ele apenas recebe dados, processa regras e devolve um resultado.
* **A View (`.cfm`):** É a interface. Ela é responsável por interagir com o usuário, coletar informações, chamar o Componente para fazer o trabalho pesado e exibir o resultado final na tela.

## Exemplo Prático: A Calculadora

### 1. O Componente (Calculadora.cfc)
Este arquivo encapsula a regra de negócio.


### 2. A View (calculadoraView.cfm)
Este arquivo consome a inteligência do componente e renderiza a tela.