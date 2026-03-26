<cfscript>
    if(structKeyExists(form, "nomeFuncionario")){
        session.nomeFuncionario = form.nomeFuncionario;
    }
</cfscript>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Exercicio 5</title>
    <style>
        .container {
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin: auto;
            background-color: #2c3e50;
            color: white;
            font-family: Inconsolata, monospace;
            padding: 10rem 0;
            height: 60vh ;
        }
        form {
            margin-top: 3rem;
        }
        .btn-form {
            border: none;
            padding: 0.5rem 1rem;
            background-color: #eabc05;
            color: black;
            border-radius: 0.3rem;
            transition: background-color 0.2s ease-in-out;
            cursor: pointer;
        }
        .btn-form:hover {
            background-color: white;
        }
        .input-form {
            padding: 0.5rem 1rem;
            border-radius: 0.3rem;
        }
    </style>
</head>
<body>
 <div class="container">
    <h1>Exercicio 5</h1>
    <p><strong>Objetivo: </strong>Fixar o uso do arquivo Application.cfc e do escopo session.</p>
    <p><strong>Desafio: </strong>Crie um formulário simples que peça o nome de um funcionário. Ao enviar o formulário, salve esse nome na sessão.</p>
    <cfif structKeyExists(session, "nomeFuncionario")>

        <cfoutput>
                <p>Bem-vindo de volta, #session.nomeFuncionario#!</p>
        </cfoutput>

    <cfelse>

            <form method="POST">
                <label for="nomeFuncionario">Nome
                    <input name="nomeFuncionario" type="text" class="input-form">
                </label>
                <button type="submit" class="btn-form">Enviar</button>
            </form>

    </cfif>
 </div>


</body>
</html>