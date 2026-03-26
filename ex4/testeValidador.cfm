<cfscript>
    validador = new Validador();
    resultado = validador.validadorIdade(18);
</cfscript>

<cfoutput>
    <p>É maior de idade: #resultado#</p>
</cfoutput>