<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/barber_account_profile.css" />
    <title>barber account</title>
  </head>
  <body>
    <!-- header is started -->
    <jsp:include page="barber_header.jsp" />
    <!-- header is ended -->

    <!-- section is started -->
    <div class="full_content">
      <div class="topic_div">
        <h1 class="topic">Account Details</h1>
      </div>

      <div class="information">
        <div class="input_div">
          <label class="label">Username: </label>
          <br />
          <input class="input" type="text" id="barber_name" disabled />
        </div>
        <br />
        <div class="input_div">
          <label class="label">Email id: </label>
          <br />
          <input class="input" type="text" id="barber_email" disabled />
        </div>
        <br />
        <div class="input_div">
          <label class="label">Password: </label>
          <br />
          <input class="input" type="password" id="barber_password" disabled />
        </div>
        <br />
        <div class="input_div">
          <label class="label">Confirm password: </label>
          <br />
          <input
            class="input"
            type="password"
            id="barber_c_password"
            disabled
          />
        </div>
        <br />

        <div class="input_div">
          <label class="label">Phone number: </label>
          <br />
          <input class="input" type="text" id="phone_number" disabled />
        </div>
      </div>

      <div class="three_buttons">
        <a class="create_card" href="./barber_account_edit.html">Edit </a>
        <button id="delete_barber" class="edit_card">Delete</button>
      </div>
      <a class="create_card" id="logout">Log out</a>
    </div>
    <!-- section is ended -->

    <!-- Java Script -->

    <script>
      // get data from both storage of login & register

      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      const barberInfo = JSON.parse(localStorage.getItem("barberinfo"));
      // get object from local storage by email

      let oneBarber = barberInfo.find(function (event) {
        let oneBarberEmail = event["barber_email"];
        if (thisBarber == oneBarberEmail) {
          return true;
        }
      });

      const barberName = (document.getElementById("barber_name").value =
        oneBarber["barberName"]);
      const barberEmail = (document.getElementById("barber_email").value =
        oneBarber["barber_email"]);
      const barberPassword = (document.getElementById("barber_password").value =
        oneBarber["email_password"]);

      const barberCPassword = (document.getElementById(
        "barber_c_password"
      ).value = oneBarber["confirm_Password"]);

      const barberPhone = (document.getElementById("phone_number").value =
        oneBarber["phoneNumber"]);

      // delete  profile function

      let deleteOneBarber = document.getElementById("delete_barber");

      deleteOneBarber.addEventListener("click", function (event) {
        event.preventDefault();
        let index = barberInfo.indexOf(oneBarber);
        // give a confirm alert
        let msg = confirm("Are you sure! you want to delete this account");
        if (msg !== true) {
          return;
        } else {
          barberInfo.splice(index, 1);
          localStorage.setItem("barberinfo", JSON.stringify(barberInfo));
          window.location.href = "../index.html";
        }
      });

      // logout function!
      let logout = document.getElementById("logout");
      logout.addEventListener("click", function (event) {
        event.preventDefault();
        let msg = confirm("Are you sure you want to logout this account");
        if (msg !== true) {
          return;
        } else {
          localStorage.setItem("single_barber", JSON.stringify(null));
          window.location.href = "../index.html";
        }
      });
    </script>
  </body>
</html>