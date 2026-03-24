<!--- Exercicio com foco em Tags e Loop --->
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cheatsheet ColdFusion</title>
    <style>
        body { font-family: system-ui, sans-serif; padding: 20px; background: #f9f9f9; text-align: center}
        .card { background: white; padding: 20px; border-radius: 8px; margin-bottom: 20px; border: 1px solid #ddd; }
        h2 { color: #2c3e50; border-bottom: 2px solid #eee; padding-bottom: 5px; }
        .explicacao { color: #555; background: #eef7fa; padding: 10px; border-left: 4px solid #007bff; border-radius: 4px; }
        h3 { color: #2c3e50; text-align: center;}

        }
        .tech-list {
            background: #ddecfc;
            max-width: 400px;
            margin: 0 auto;
            padding: 0;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05), 0 1px 3px rgba(0, 0, 0, 0.1);
            list-style: none;
            overflow: hidden;

        }

        .tech-list li {
            padding: 16px 20px;
            border-bottom: 1px solid #f0f0f0;
            display: flex;
            align-items: center;
            font-size: 1.1rem;
            font-weight: 500;
            color: #2c3e50;
            transition: all 0.2s ease-in-out;
            cursor: pointer;
            background-color: #ddecfc;
        }
    </style>
</head>
<body>
    <h1>Exercicio 1</h1>
    <p> Objetivo: Praticar a criação de variáveis, inspeção visual de dados e renderização de listas no HTML usando a sintaxe tradicional de tags.</p>

    <!--- Criação de variavel e loop em array --->
    <cfset minhaStack = ["React", "Angular", "ColdFusion", "Java"]>
    <cfdump var="#minhaStack#">
    <h3>Loop sobre array</h3>
    <ul class="tech-list">
        <cfloop array="#minhaStack#" index="i">
            <cfoutput><li>Stack #i#</li></cfoutput>
        </cfloop>
    </ul>

    <!--- Adicionando novo item e removendo item do array --->
    <cfscript>
        <!--- adiciona item ao fim da lista --->
        minhaStack.append("Python");
        <!--- adiciona item ao inicio da lista --->
        minhaStack.prepend("C++");
        <!--- remove item na posição x, no caso deve remover o react --->
        minhaStack.deleteAt(2);
    </cfscript>
    <h3>Adicionando e removendo items do array</h3>
    <ul class="tech-list">
        <cfloop array="#minhaStack#" index="i">
            <cfoutput><li>Stack #i#</li></cfoutput>
        </cfloop>
    </ul>
    <cfscript>
        <!--- ordenando o array --->
        minhaStack.sort("textnocase");
    </cfscript>
    <h3>Ordenando lista</h3>
    <ul class="tech-list">
        <cfloop array="#minhaStack#" index="i">
            <cfoutput><li>Stack #i#</li></cfoutput>
        </cfloop>
    </ul>

</body>
</html>
