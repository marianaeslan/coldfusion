component {
    public void function LeitorFrota(required string filePath) {
        var doc = fileRead(filePath);
        var veiculos = deserializeJSON(doc);
        var novoVeiculo = {
            id: "5A4B3CF2-1E2F-3A4B-5C6D-7E8F9A0B1EE4",
            placa: "FGH-5678",
            modelo: "Actros 2651",
            marca: "Mercedes-Benz",
            disponivel: false
        };
        veiculos.append(novoVeiculo);
        var new_doc = serializeJSON(veiculos);
        fileWrite(expandPath("./frota_atualizada.json"), new_doc);

    }
}