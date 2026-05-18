const userIcon = document.getElementById("userIcon");

const loginModal = document.getElementById("loginModal");
const cadastroModal = document.getElementById("cadastroModal");
const agendamentoModal = document.getElementById("agendamentoModal");

const formLogin = document.getElementById("formLogin");
const formCadastro = document.getElementById("formCadastro");
const formAgendamento = document.getElementById("formAgendamento");

const abrirCadastro = document.getElementById("abrirCadastro");

const fecharLogin = loginModal.querySelector(".fechar");
const fecharCadastro = cadastroModal.querySelector(".fechar");

const fecharAgendamento = agendamentoModal?.querySelector(".fechar");

if (userIcon && loginModal) {
    userIcon.addEventListener("click", () => {
        loginModal.classList.add("active");
    });
}

if (fecharLogin && loginModal && formLogin) {
    fecharLogin.addEventListener("click", () => {
        loginModal.classList.remove("active");
        formLogin.reset();
    });
}

if (abrirCadastro && cadastroModal && loginModal) {
    abrirCadastro.addEventListener("click", (e) => {
        e.preventDefault();
        loginModal.classList.remove("active");
        cadastroModal.classList.add("active");
    });
}

if (fecharCadastro && cadastroModal && formCadastro) {
    fecharCadastro.addEventListener("click", () => {
        cadastroModal.classList.remove("active");
        formCadastro.reset();
        formLogin.reset();
    });
}

if (fecharAgendamento && agendamentoModal){

    fecharAgendamento.addEventListener("click", () => {
        agendamentoModal.classList.remove("active");
        if (formAgendamento){
        formAgendamento.reset();
        }
    })
}

window.addEventListener("click", (e) => {
    if (e.target === loginModal) {
        loginModal.classList.remove("active");
        formLogin.reset();
    }

    if (e.target === cadastroModal) {
        cadastroModal.classList.remove("active");
        formCadastro.reset();
        formLogin.reset();
    }

    if (e.target === agendamentoModal){
        agendamentoModal.classList.remove("active");
        if (formAgendamento){
        formAgendamento.reset();
        }
    }
});