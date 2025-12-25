document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll(".btn-horoscope").forEach((button) => {
    button.addEventListener("click", function () {
      const id_signe = this.getAttribute("data-signe");
      const phraseContainer = this.nextElementSibling;

      fetch("phrases.php", {
        method: "POST",
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: "id_signe=" + encodeURIComponent(id_signe),
      })
        .then((response) => response.text())
        .then((data) => {
          phraseContainer.textContent = data;
        })
        .catch((error) => {
          phraseContainer.textContent = "Erreur : " + error;
        });
    });
  });
});
