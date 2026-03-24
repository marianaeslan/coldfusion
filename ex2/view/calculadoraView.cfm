<cfscript>
    calculadora = new services.Calculadora();
    somar = calculadora.somar(13, 17);
</cfscript>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Calculadora</title>
    </head>
    <body>
        <h1>Calculadora</h1>
        <cfoutput>
            <p>Resultado de 13 + 17: #somar#</p>
        </cfoutput>
    </body>
</html>