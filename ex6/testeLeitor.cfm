<cfscript>
    leitor = new leitor();
    leitor.leitorfrota(expandPath("./frota.json"));
</cfscript>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="utf-8">
    <title>Exercicio 6</title>
    <style>
        body {
            font-family: Inconsolata, monospace;
            text-align: center;
            padding: 5rem 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .message {
            width: fit-content;
            display: block;
            text-align: center;
            padding: 1rem;
            border-radius: 3rem;
            background-color: #11bd14;
            color: white;
        }
    </style>
</head>
<body>
<h1>Exercicio 6</h1>
<cfoutput>
    <div class="message">
        <p>Arquivo atualizado com sucesso! Confira a sua pasta :)</p>
    </div>
</cfoutput>
</body>