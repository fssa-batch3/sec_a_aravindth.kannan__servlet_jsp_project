<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>barber account edit</title>
    <link rel="stylesheet" href="../Assets/CSS/barber_account_profile.css" />
  </head>
  <body>
    <form class="full_content" id="E_form">
      <div class="topic_div">
        <p class="topic">Registration info</p>
      </div>

      <div class="input_div">
        <label class="label" pattern="[A-Z a-z]{1,32}">Username</label>
        <br />
        <input
          required
          pattern="[A-Za-z0-9]+"
          title="Make sure that name should not contain space"
          class="input"
          type="text"
          id="B_name"
          autocomplete="name"
        />
      </div>
      <br />
      <div class="input_div">
        <label for="email" class="label">Email Id</label>
        <br />

        <input
          disabled
          required
          pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
          class="input"
          type="email"
          id="B_email"
          autocomplete="email"
        />
      </div>
      <br />
      <div class="input_div">
        <label for="password" class="label">Password</label>
        <br />

        <input
          required
          pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\S+$).{8,}$"
          title="Must contain at least one number and one uppercase and lowercase letter,at least 8 or more characters and must not contain space "
          class="input"
          type="password"
          id="b_password"
          autocomplete="password"
        />
      </div>
      <br />
      <div class="input_div">
        <label for="password" class="label"> Confirm Password</label>
        <br />

        <input
          required
          pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\S+$).{8,}$"
          title="Must contain at least one number and one uppercase and lowercase letter,at least 8 or more characters and must not contain space "
          class="input"
          type="password"
          id="b_c_password"
          autocomplete="password"
        />
      </div>
      <br />
      <div class="input_div">
        <label for="phone" class="label">phone number</label>
        <br />

        <input
          pattern="[7-9]{1}[0-9]{9}"
          title="Phone number with 7-9 and remaing 9 digit with 0-9"
          required
          class="input"
          type="number"
          id="b_phone_number"
        />
      </div>

      <div class="three_buttons">
        <button class="create_card" type="submit" id="btn">Save</button>
      </div>
    </form>

    <!-- javav-script -->

    <script>
      
      // Java Script
      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      const barberInfo = JSON.parse(localStorage.getItem("barberinfo"));
      // get object from local storage by email

      let oneBarber = barberInfo.find(function (event) {
        let oneBarberEmail = event["barber_email"];
        if (thisBarber == oneBarberEmail) {
          return true;
        }
      });

      // show data from local storage!
      const barberName = (document.getElementById("B_name").value =
        oneBarber["barberName"]);
      const barberEmail = (document.getElementById("B_email").value =
        oneBarber["barber_email"]);
      const barberEmailPassword = (document.getElementById("b_password").value =
        oneBarber["email_password"]);
      const barberEmailcPassword = (document.getElementById(
        "b_c_password"
      ).value = oneBarber["confirm_Password"]);
      const phoneNumber = (document.getElementById("b_phone_number").value =
        oneBarber["phoneNumber"]);

      // edit page function!

      let save = document.getElementById("E_form");

      save.addEventListener("submit", function (event) {
        event.preventDefault();

        // get data from edit form!

        let barberName = document.getElementById("B_name").value;
        let barber_email = document.getElementById("B_email").value;
        let email_password = document.getElementById("b_password").value;
        let confirm_Password = document.getElementById("b_c_password").value;
        let phoneNumber = document.getElementById("b_phone_number").value;

        var regex = /^[6789]{1}[0-9]{9,15}$/;
        if (regex.test(phoneNumber)) {
          console.log("Valid phone number!");
        } else {
          alert("Phone number is invalid kindly change your number");
          return;
        }

        //  some errors in this step
        let editBarberData = {
          barberName,
          barber_email,
          email_password,
          confirm_Password,
          phoneNumber,
        };

        // email validation!

        let newData = JSON.parse(localStorage.getItem("barberinfo"));

        if (email_password === confirm_Password) {
          let oldData = newData.find(i => i.barber_email == barber_email);

          if (oldData == undefined) {
            alert("Email Id not match");
          }

          // assign the value in object!
          else {
            let updated = Object.assign(oldData, editBarberData);
            let index = newData.indexOf(oldData.barber_email);
            newData[index] = updated;
            localStorage.setItem("barberinfo", JSON.stringify(newData));
            alert("Successfully account Edited");
            window.location.href = "./barber_account_profile.html";
          }
        } else {
          alert("password and confirm password should be same");
        }
      });
    </script>
  </body>
</html>
