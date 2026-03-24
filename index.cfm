<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cheatsheet ColdFusion</title>
    <style>
        body { font-family: system-ui, sans-serif; padding: 20px; background: #f9f9f9; }
        .card { background: white; padding: 20px; border-radius: 8px; margin-bottom: 20px; border: 1px solid #ddd; }
        h2 { color: #2c3e50; border-bottom: 2px solid #eee; padding-bottom: 5px; }
        .explicacao { color: #555; background: #eef7fa; padding: 10px; border-left: 4px solid #007bff; border-radius: 4px; }
    </style>
</head>
<body>
    <nav style="background: #eee; padding: 10px; margin-bottom: 20px;">
        <strong>Meus Estudos:</strong>
        <a href="index.cfm">Cheatsheet</a> |
        <a href="exercicio1.cfm">Exercício</a> |

    </nav>
    <h1>O Guia Definitivo: ColdFusion</h1>

    <div class="card">
        <h2>1. Variáveis e Concatenação</h2>
        <p class="explicacao">Utilizamos a tag cfset para criar variáveis na sintaxe tradicional. Para juntar textos e variáveis, usamos obrigatoriamente o E comercial (&) no lugar do sinal de adição (+).</p>

    <cfset linguagem = "ColdFusion">
    <cfset frase = "Estudando " & linguagem & " com CommandBox.">
    <cfoutput><p>#frase#</p></cfoutput>

    <cfscript>
        projeto = "VittaCenter";
        versao = 1.0;
        textoCompleto = projeto & " - Versão " & versao;
    </cfscript>
    <cfoutput><p>#textoCompleto#</p></cfoutput>
    </div>

    <div class="card">
        <h2>2. cfoutput vs writeOutput vs cfdump</h2>
        <p class="explicacao">cfoutput é usado no HTML para renderizar textos e números usando cerquilhas. writeOutput() faz exatamente a mesma coisa, mas dentro do bloco cfscript. cfdump (ou writeDump) é a ferramenta visual de debug para inspecionar objetos complexos e arrays.</p>

    <cfscript>
        writeOutput("<p><strong>Aviso:</strong> Este texto foi gerado via writeOutput dentro do cfscript.</p>");

        dadosProjeto = {
            fase: "Desenvolvimento",
            stack: ["Angular", "ColdFusion", "SQL"]
        };

        writeDump(dadosProjeto);
    </cfscript>
    </div>

    <div class="card">
        <h2>3. Arrays (Listas)</h2>
        <p class="explicacao">A regra de ouro: o índice inicial é sempre 1. Utilizamos colchetes para criar a lista e funções embutidas como append() e deleteAt() para manipulação de dados.</p>

    <cfscript>
        ferramentas = ["VS Code", "CommandBox"];
        ferramentas.append("IntelliJ");
        ferramentas.deleteAt(1);
    </cfscript>
    <cfdump var="#ferramentas#">
    </div>

    <div class="card">
        <h2>4. Structs (Objetos)</h2>
        <p class="explicacao">Equivalentes aos objetos literais em formato chave/valor. É mandatório verificar a existência de uma chave com keyExists() antes de tentar acessá-la, caso contrário, a página apresentará um erro fatal.</p>

    <cfscript>
        usuario = {
            id: 1,
            perfil: "Administrador"
        };

        if (usuario.keyExists("perfil")) {
            writeOutput("<p>O perfil encontrado é: <strong>" & usuario.perfil & "</strong></p>");
        }
    </cfscript>
    </div>

    <div class="card">
        <h2>5. A Tag &lt;cfloop&gt;: Diferentes Tipos de Ciclos (Loops)</h2>
        <p class="explicacao">A tag &lt;cfloop&gt; é o "canivete suíço" das repetições no ColdFusion. Consoante os atributos que passamos, ela comporta-se como um ciclo diferente (for, foreach, while, etc.). Abaixo estão as 5 formas principais de a utilizar.</p>

        <h3>5.1. Ciclo de Contagem (Index / Range Loop)</h3>
        <p class="explicacao">Equivalente ao tradicional <code>for (i=1; i<=5; i++)</code>. Executa um bloco de código um número exato de vezes.</p>

    <ul>
    <cfloop index="i" from="1" to="5">
        <cfoutput><li>Contagem atual: #i#</li></cfoutput>
    </cfloop>
    </ul>

        <h3>5.2. Ciclo sobre Arrays (Array Loop)</h3>
        <p class="explicacao">Equivalente ao <code>for...of</code>. Itera sobre cada elemento de um Array. O atributo <code>index</code> guarda o valor do item na rodada atual.</p>

    <cfset linguagens = ["ColdFusion", "JavaScript", "Kotlin"]>
    <ul>
    <cfloop array="#linguagens#" index="lang">
        <cfoutput><li>Estudando: #lang#</li></cfoutput>
    </cfloop>
    </ul>

        <h3>5.3. Ciclo sobre Structs / Objetos (Collection Loop)</h3>
        <p class="explicacao">Equivalente ao <code>for...in</code>. O atributo <code>collection</code> recebe a Struct, e o <code>item</code> guarda o nome da <strong>chave (key)</strong> atual.</p>

    <cfset programadora = {nome: "Mariana", perfil: "Desenvolvedora", nivel: "Júnior"}>
    <ul>
    <cfloop collection="#programadora#" item="chave">
        <cfoutput><li><strong>#chave#:</strong> #programadora[chave]#</li></cfoutput>
    </cfloop>
    </ul>

        <h3>5.4. Ciclo Condicional (While Loop)</h3>
        <p class="explicacao">Equivalente ao <code>while()</code>. Repete o bloco de código enquanto a condição definida for verdadeira.</p>

    <cfset contador = 1>
    <cfloop condition="contador LTE 3">
        <cfoutput>Passo #contador# executado. <br></cfoutput>

        <cfset contador = contador + 1>
    </cfloop>
        <br>

        <h3>5.5. Ciclo sobre Listas (List Loop)</h3>
        <p class="explicacao">No ColdFusion, uma "List" é apenas uma String comum separada por um delimitador (como vírgulas). O &lt;cfloop&gt; consegue separar e iterar sobre essa string automaticamente.</p>

    <cfset tecnologiasFrontEnd = "React,Angular,Vue">
    <ul>
    <cfloop list="#tecnologiasFrontEnd#" index="tec" delimiters=",">
        <cfoutput><li>Framework: #tec#</li></cfoutput>
    </cfloop>
    </ul>
    </div>

    <div class="card">
        <h2>6. Funções Nativas e Datas</h2>
        <p class="explicacao">Funções como now() capturam a data exata do servidor. DateDiff() calcula o tempo entre duas datas usando abreviações como 'd' (dias), 'm' (meses) ou 'yyyy' (anos).</p>

    <cfset hoje = now()>
    <cfset diasPassados = DateDiff("d", "2026-01-01", hoje)>

    <cfoutput>
        <p>Data de hoje no servidor: #dateTimeFormat(hoje, "dd/mm/yyyy")#</p>
        <p>Dias passados desde o início do ano de 2026: <strong>#diasPassados#</strong></p>
    </cfoutput>
    </div>

</body>
</html>