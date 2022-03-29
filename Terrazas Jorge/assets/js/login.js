import ajax from "./ajax.js";


const $login = document.querySelector(".login"),
  $form = document.querySelector("form--login"),
  $messageError = document.getElementById("mensaje-error");



document.addEventListener("submit", (e) => {
  if (e.target.matches(".form--login")) {
    e.preventDefault();
    let formData = new FormData();

    formData.append("txtEmail", e.target.txtEmail.value);
    formData.append("txtPassword", e.target.txtPassword.value);
    formData.append("txtType", e.target.txtType.value);
    
    ajax({
      url: "/BibliotecaUNFV/Terrazas%20Jorge/assets/php/login.php",
      method: "POST",
      success: (res) => {
        const json = JSON.parse(res);
        if (json["page"] === "home") {
          location.href = "/BibliotecaUNFV/Terrazas%20Jorge/home.html";
        }
        if (json["page"] === "admin") {
          location.href =
            "/BibliotecaUNFV/Terrazas%20Jorge/admin/home_admin.php";
        }
      },
      error: (err) =>
        ($messageError.innerHTML =
          "Error al ingresar datos en login, vuelva a intentarlo"),
      data: formData,
    });
  }
});
