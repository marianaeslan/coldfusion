component {

// 1. O nome oficial da sua aplicação
    this.name = "ColdFusion";

// 2. Habilita o uso de Variáveis de Sessão (para guardar dados de login, carrinho, etc)
    this.sessionManagement = true;

// 3. Define quanto tempo a sessão dura se o usuário ficar inativo (ex: 30 minutos)
    this.sessionTimeout = createTimeSpan(0, 0, 30, 0);


// --- MÉTODOS DE CICLO DE VIDA (Lifecycle Hooks) ---

// Executa APENAS UMA VEZ quando o servidor liga ou a aplicação é acessada pela primeira vez
    public boolean function onApplicationStart() {
        return true;
    }

// Executa toda vez que uma nova sessão (um novo usuário) entra no site
    public void function onSessionStart() {
// Inicializa uma struct vazia na sessão do usuário para guardarmos os dados dele depois
        session.usuario = {};
    }

// Executa TODA VEZ que qualquer página (.cfm) é carregada
    public boolean function onRequestStart(string targetPage) {
// Um truque de desenvolvimento: se você colocar ?reload=true na URL, ele reinicia a aplicação
        if (url.keyExists("reload")) {
            applicationStop();
            location(url="/", addToken=false);
        }
        return true;
    }

}