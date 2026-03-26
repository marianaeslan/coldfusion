<!---  Loop em array com filtro de prioridade --->
<cfscript>
    fila = [
        {
            nome: "Mariana",
            idade: 27,
            prioridade: "Alta"
        },
        {
            nome: "Luiza",
            idade: 32,
            prioridade: "Baixa"
        },
        {
            nome: "Camila",
            idade: 37,
            prioridade: "Alta"
        },
        {
            nome: "Leonardo",
            idade: 54,
            prioridade: "Baixa"
        }
    ];

    filaFiltrada = fila.filter(function(i){
        return i.prioridade == "Alta";
    });

</cfscript>

<cfoutput>
    <cfloop array="#filaFiltrada#" index="pacienteAtual">
        <p>
            nome: #pacienteAtual.nome# | prioridade: #pacienteAtual.prioridade#
        </p>
    </cfloop>
</cfoutput>