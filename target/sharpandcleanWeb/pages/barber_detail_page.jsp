<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>barber detail page</title>
    <link rel="stylesheet" href="../Assets/CSS/barber_detail.css" />
  </head>
  <body>
    <div class="full_content">
      <div class="photo_div">
        <div class="site_name_div">
          <p class="site_name">SHARP & CLEAN</p>

          <p class="barber_text">Official barber</p>
        </div>
        <div class="profile">
          <img class="photo" id="b_photo" alt="barber profile photo" />
        </div>

        <div class="primary_information_div">
          <fieldset class="field_div">
            <legend class="label">Barber name</legend>
            <input class="input_two" type="text" id="barber_name" disabled />
          </fieldset>

          <fieldset class="field_div">
            <legend class="label_full_details">Experience</legend>
            <input class="input" type="text" id="experience" disabled />
          </fieldset>
          <fieldset class="field_div">
            <legend class="label_full_details">Slogan</legend>
            <input class="input" type="text" id="slogan" disabled />
          </fieldset>

          <fieldset class="input_div">
            <legend class="label_full_details">Address</legend>
            <input class="input" type="text" id="address" disabled />
          </fieldset>
          <fieldset class="input_div">
            <legend class="label_full_details">About</legend>
            <input class="input" type="text" id="barber_about_id" disabled />
          </fieldset>
        </div>

        <div class="two_buttons">
          <a class="p_edit" href="./customer_select_barber.html">Back</a>
          <!-- <a href="./customer_booking_barber.html" id="delete_barber" class="p_edit"> Select</a> -->
        </div>
      </div>
      <!-- left side end -->

      <div class="all_haircuts">
        <div class="right_head">
          <p>Barber's more haircuts</p>
        </div>
        <div class="information"></div>
      </div>
    </div>

    <!-- java script -->

    <script>
      let url = location.search;
      let prams = new URLSearchParams(url);
      let id = prams.get("id");

      //   get data from localstorage
      const onebarberCard = JSON.parse(
        localStorage.getItem("barber_card")
      ).find(e => e.barberid == id);
      //   get data from localstorage
      const one_barber = JSON.parse(
        localStorage.getItem("barber_profile")
      ).find(event => event.barber_email == onebarberCard["barber_card_email"]);

      //   set value

      const barberProfile = document
        .getElementById("b_photo")
        .setAttribute("src", one_barber["barber_photo"]);
      const barberName = (document.getElementById("barber_name").value =
        one_barber["barbername"]);

      const barberExperience = (document.getElementById("experience").value =
        one_barber["barber_experience"]);
      const barberSlogan = (document.getElementById("slogan").value =
        one_barber["barber_slogan"]);

      const barberAddress = (document.getElementById("address").value =
        one_barber["barber_address"]);
      const barberAbout = (document.getElementById("barber_about_id").value =
        one_barber["barber_about"]);

      //  that pbarber's all haircuts

      const oneBarberHaircuts = JSON.parse(localStorage.getItem("newhaircuts"));

      let one_email_haircuts_array = oneBarberHaircuts.filter(
        F => F.haircut_email == onebarberCard["barber_card_email"]
      );

      console.log(one_email_haircuts_array);

      for (let i = 0; i < one_email_haircuts_array.length; i++) {
        let big_div = document.createElement("div");
        big_div.setAttribute("class", "haircut_card");
        document.querySelector(".information").append(big_div);

        let image = document.createElement("img");
        image.setAttribute("class", "haircut_card_img");
        image.setAttribute("src", one_email_haircuts_array[i]["haircutImage"]);
        image.setAttribute("alt", one_email_haircuts_array[i]["haircutname"]);
        image.setAttribute("alt", "image");
        big_div.append(image);

        let content_div = document.createElement("div");
        content_div.setAttribute("class", "haircut_card-content");
        big_div.append(content_div);

        let name = document.createElement("h2");
        name.setAttribute("class", "haircut_card-title");
        name.innerText = one_email_haircuts_array[i]["haircutname"];
        content_div.append(name);

        let text = document.createElement("p");
        text.setAttribute("class", "haircut_card-text");
        text.innerText = one_email_haircuts_array[i]["haircut_para"];
        content_div.append(text);
      }
    </script>
  </body>
</html>
