# Adobe ColdFusion

Este repositório documenta a jornada de aprendizado em Adobe ColdFusion 2023, focando nas práticas modernas de desenvolvimento, sintaxe em script e arquitetura de componentes.

## 💻 Ambiente de Desenvolvimento

* **Motor:** Adobe ColdFusion 2023
* **Servidor:** [CommandBox](https://commandbox.ortusbooks.com/)
* **Editor:** IntelliJ IDEA Ultimate / VS Code

### Comandos Essenciais (CommandBox)

* `box server start`: Inicia o servidor em background.
* `box server stop`: Derruba a instância local.
* `box server open`: Abre o navegador na porta do servidor atual.

---

## 📚 Conceitos Fundamentais Aprendidos

### 1. Sintaxe: Tags vs. Script

O ColdFusion possui duas formas de escrita. A sintaxe de tags é ideal para Views, enquanto a sintaxe de script é o padrão moderno para regras de negócio.

```html
<cfset nome = "Desenvolvedora">
<cfoutput>Olá, #nome#!</cfoutput>

<cfscript>
    nome = "Desenvolvedora";
    writeOutput("Olá, #nome#!");
</cfscript>
```

### 2. Debugging
* `<cfdump> / writeDump()`: A melhor ferramenta de debug. Gera uma tabela visual detalhada inspecionando Arrays, Structs e Queries.

* `<cfoutput> / writeOutput()`: Usado exclusivamente para imprimir textos simples e variáveis no HTML.

### 3. Estruturas de Dados
- Arrays
    * O índice inicial no ColdFusion é 1.
    * Suporta métodos funcionais modernos como .each(), .filter(), .map().

- Structs
    * Estrutura de chave: valor.
    * Sempre validar a existência da chave com .keyExists() para evitar quebras na aplicação.

### 4. Laços de Repetição (<cfloop>)
A tag `<cfloop>`  adapta-se ao tipo de dado passado em seus atributos:

    * Range Loop: Iteração numérica exata.
    * Array Loop: Iteração sobre os itens de uma lista.
    * Collection Loop: Iteração sobre as chaves de uma Struct.
    * Condition Loop: Iteração baseada em uma condição verdadeira.

