# Exercício 4: Leitor e Atualizador de Frota (JSON)

Este repositório contém a resolução do **Exercício 4** da nossa trilha de estudos em ColdFusion. O objetivo principal deste projeto é demonstrar como o ColdFusion interage com o sistema de arquivos do servidor, manipulando dados no formato JSON.

---

## O Que Este Código Faz?

O sistema simula a entrada de um novo veículo no pátio de uma transportadora. Em vez de usar um banco de dados tradicional, ele utiliza arquivos físicos (`.json`) para armazenar o estado da frota.

O fluxo de execução segue os seguintes passos lógicos:

1.  **Leitura:** O sistema abre e lê um arquivo físico contendo a frota original.
2.  **Desserialização:** O texto JSON é convertido para um **Array de Structs** nativo do ColdFusion.
3.  **Injeção de Dados:** Um novo veículo (neste caso, um caminhão Mercedes-Benz Actros) é adicionado ao array em memória.
4.  **Serialização:** O array atualizado é convertido novamente para o formato de texto JSON.
5.  **Gravação:** O sistema cria um **novo arquivo** no disco rígido contendo a frota atualizada, preservando o histórico do arquivo original.

---

## Estrutura de Arquivos

Para que o exercício funcione corretamente, os arquivos devem estar organizados na mesma pasta:

-   **`frota.json`**: O arquivo de origem. Contém a lista inicial de veículos no formato JSON.
-   **`leitor.cfc`**: O **Componente ColdFusion** (CFC) que encapsula a lógica de negócio. Ele contém a função responsável por processar o arquivo.
-   **`teste.cfm`**: O arquivo de visualização/execução. É ele que chamamos no navegador para instanciar o componente e disparar a ação.
-   **`frota_atualizada.json`**: O arquivo de destino. É **gerado automaticamente** pelo sistema após a execução bem-sucedida do script.

---

## Tecnologias e Funções Utilizadas

Este projeto fixa o aprendizado nas seguintes funções nativas do ColdFusion:

-   **`fileRead()`**: Para acessar o conteúdo de arquivos no disco.
-   **`deserializeJSON()`**: Para traduzir texto puro em estruturas de dados manipuláveis.
-   **`serializeJSON()`**: Para preparar dados do ColdFusion para exportação.
-   **`fileWrite()`**: Para salvar novos arquivos no disco do servidor.
-   **`expandPath()`**: Para garantir que o servidor encontre os arquivos usando caminhos relativos (na mesma pasta do script).
-   **`ArrayAppend()`** (via `.append()`): Para adicionar itens dinamicamente ao final de uma lista.

---

## Como Executar o Projeto

Siga os passos abaixo para ver a manipulação de arquivos em ação:

1.  **Inicie o Servidor:** Certifique-se de que o seu servidor ColdFusion (ex: CommandBox) está rodando.
2.  **Acesse a URL:** Abra o seu navegador web e digite o endereço local apontando para o arquivo de teste.
    -   *Exemplo:* `http://127.0.0.1:8500/caminho_da_pasta/teste.cfm`
3.  **Confirme o Sucesso:** Você verá uma mensagem impressa na tela indicando que o processo foi finalizado.
4.  **Verifique a Pasta:** Abra a pasta do projeto no seu sistema operacional ou editor de código. O arquivo `frota_atualizada.json` terá aparecido magicamente lá dentro, contendo os dados originais mais o novo veículo inserido.