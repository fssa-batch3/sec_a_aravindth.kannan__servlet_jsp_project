<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/barber_profile.css" />
    <title>barber profile</title>
  </head>
  <body>
    <!-- header is started -->
    <header>
      <div class="header">
        <div>
          <a href="../pages/barber_home.html">
            <img
              class="logo_img"
              src="../Assets/Images/sharp logo black.png"
              alt="logo"
            />
          </a>
        </div>
        <div>
          <nav class="All-navs">
            <div class="nav_dropdown">
              <button class="nav_dropbtn">Hair styles</button>
              <div class="nav_dropdown-content">
                <a href="../pages/barber_medium_style.html">Haircut</a>
                <a href="../pages/barber_fade_style.html"
                  >Hair straightening</a
                >
                <a href="../pages/barber_long_style.html">Hair coloring</a>
                <a href="../pages/barber_undercut_style.html">Facials</a>
                <a href="../pages/barber_short_style.html">Shaves</a>
                <a href="../pages/barber_beard_style.html">Beard trim</a>
              </div>
            </div>
            <a class="nav" href="../pages/barber_card.html">Apply barber </a>
            <a class="nav" href="../pages/barber_shop_card.html"
              >Register shop
            </a>
            <a class="nav" href="../pages/barber_booking_list.html"
              >booking list</a
            >
            <a class="nav" href="./barber_profile.html">Barber profile</a>
            <a class="nav" href="./shop_profile.html">Shop profile</a>
            <a class="nav" href="./barber_account_profile.html"
              ><img
                src="../Assets/Images/profile-2.png"
                alt="profile"
                height="30px"
                width="30px"
            /></a>
          </nav>
        </div>
      </div>
    </header>
    <!-- header is ended -->

    <!-- section is started -->
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
            <legend class="label">Phone number</legend>
            <input class="input_two" type="text" id="phone_number" disabled />
          </fieldset>
        </div>

        <div class="two_buttons">
          <a class="p_edit" href="./barber_profile_edit.html">Edit profile</a>
          <button id="delete_barber" class="p_edit">Delete profile</button>
        </div>
      </div>
      <!-- left side end -->

      <div class="information">
        <div class="right_head">
          <p>Barber information</p>
        </div>

        <fieldset class="input_div">
          <legend class="label_full_details">Experience</legend>
          <input class="input" type="text" id="experience" disabled />
        </fieldset>
        <fieldset class="input_div">
          <legend class="label_full_details">Slogan</legend>
          <input class="input" type="text" id="slogan" disabled />
        </fieldset>

        <fieldset class="input_div_add">
          <legend class="label_full_details">Address</legend>
          <input class="input" type="text" id="address" disabled />
        </fieldset>
        <fieldset class="input_div_add">
          <legend class="label_full_details">About</legend>
          <input class="input" type="text" id="barber_about_id" disabled />
        </fieldset>

        <!-- your card -->

        <div class="card_text_div">
          <p class="Your_card">Your barber card</p>
        </div>

        <!-- full card details -->

        <div class="card">
          <div class="card-header">
            <h3>Sample haircuts</h3>
          </div>

          <div class="card-content">
            <div class="card-img">
              <img
                alt="Barber profile"
                id="card_profile"
                src="https://source.unsplash.com/0fN7Fxv1eWA"
              />
            </div>
            <div class="projects">
              <div class="project">
                <img
                  alt="sample haircut"
                  id="card_sample_1"
                  src="https://source.unsplash.com/Q3NEoed1dzs"
                />
              </div>

              <div class="project">
                <img
                  alt="sample haircut"
                  id="card_sample_2"
                  src="https://source.unsplash.com/vYRAP3yMa3I"
                />
              </div>

              <div class="project">
                <img
                  alt="sample haircut"
                  id="card_sample_3"
                  src="https://source.unsplash.com/4uojMEdcwI8"
                />
              </div>
            </div>
          </div>

          <div class="card-footer">
            <div class="profile-group">
              <div class="name">Name</div>
              <div id="card_b_name" class="job">Web developer</div>
            </div>
            <div class="select">
              <button id="card_details" class="detail">Details</button>
              <a href="./booking-barber.html" class="select-button">Select</a>
            </div>
          </div>
        </div>

        <!-- card end -->
        <div class="three_buttons">
          <a href="./barber_card_create_form.html" class="create_card"
            >Create card</a
          >
          <a href="./barber_card_edit.html" class="create_card">Edit card</a>
          <button class="edit_card" id="delete_card">delete card</button>
        </div>
      </div>
    </div>

    <!-- add more haircut designs -->

    <div class="all_haircut_designs">
      <div class="form_div">
        <p>Add more haircuts</p>
        <form id="add_form" class="add_style_form">
          <div class="small_form_div">
            <label class="label">Haircut name</label>

            <br />
            <input
            value="fire coloring"
              required
              pattern="[A-Z a-z]{1,32}"
              title="Make sure that name should space"
              id="style_name"
              class="name-box-1"
              type="text"
              autocomplete="name"
            />
          </div>
          <div class="small_form_div">
            <label class="label"> Select service</label>
            <br />
            <select name="type" id="type_id" class="name-box-1" required>
              <option>Haircut</option>
              <option>Hair coloring</option>
              <option>Hair straitning</option>
              <option>Facials</option>
              <option>Shaves</option>
              <option>Beard trim</option>
            </select>
          </div>

          <div class="small_form_div">
            <label class="label">Description</label>

            <br />
            <input
            value="This type coloring is going trending now. In this service we use fire to coloring your hair."
              required
              id="style_para"
              class="name-box-1"
              type="text"
              autocomplete="name"
            />
          </div>

          <div class="small_form_div">
            <label class="label">Haircut photo</label>
            <br />
            <input required class="name-box-1" type="url" id="design_photo" />
          </div>
          <div class="three_buttons">
            <button class="submit_1">Submit</button>
          </div>
        </form>
      </div>

      <div class="haircuts"></div>
    </div>

    <!-- section is ended -->

    <!-- footer is started -->
    <footer>
      <div class="footer">
        <div class="footicons">
          <a href="#"
            ><img
              class="footround"
              src="../Assets/Images/Y- facebook.png"
              alt="What's app"
          /></a>
          <a href="#">
            <img
              class="footround"
              src="../Assets/Images/Y- insta.png"
              alt="face book"
          /></a>
          <a href="#">
            <img
              class="footround"
              src="../Assets/Images/Y- twitter.png"
              alt="instagram"
          /></a>
        </div>
        <br />
        <div class="footer_firsthalf">
          <a>Home</a>
          <a>Services</a>
          <a>About</a>
          <a>terms</a>
          <a>Privacy policy</a>
        </div>
        <div class="copy_right_div">
          <pre>sharp & clean  <img alt="copy right" class="c_round" src="../Assets/Images/C - copyright.png"/>  2023</pre>
        </div>
      </div>
    </footer>
    <!-- footer is ended -->

    <!-- Java Script -->

    <script>
      // get data from both storage of login & register

      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      const barberProfileArray = JSON.parse(
        localStorage.getItem("barber_profile")
      );
      // get object from local storage by email

      let oneBarber = barberProfileArray.find(function (event) {
        let oneBarberEmail = event["barber_email"];
        if (thisBarber == oneBarberEmail) {
          return true;
        }
      });

      const barberProfile = document
        .getElementById("b_photo")
        .setAttribute("src", oneBarber["barber_photo"]);
      const barberName = (document.getElementById("barber_name").value =
        oneBarber["barbername"]);

      const barberExperience = (document.getElementById("experience").value =
        oneBarber["barber_experience"]);
      const barberSlogan = (document.getElementById("slogan").value =
        oneBarber["barber_slogan"]);
      const barberPhone = (document.getElementById("phone_number").value =
        oneBarber["barber_phone"]);
      const barberAddress = (document.getElementById("address").value =
        oneBarber["barber_address"]);
      const barberAbout = (document.getElementById("barber_about_id").value =
        oneBarber["barber_about"]);

      // delete  profile function

      let deleteOneBarber = document.getElementById("delete_barber");

      deleteOneBarber.addEventListener("click", function (event) {
        event.preventDefault();
        let index = barberProfileArray.indexOf(oneBarber);
        // give a confirm alert
        let msg = confirm("Are you sure! you want to delete this account");
        if (msg !== true) {
          return;
        } else {
          barberProfileArray.splice(index, 1);
          localStorage.setItem(
            "barber_profile",
            JSON.stringify(barberProfileArray)
          );
          window.location.href = "./barber_home.html";
        }
      });

      // card java script (or) function
      const barberCardInfo = JSON.parse(localStorage.getItem("barber_card"));
      // store a email for verify!
      let barber_email = oneBarber["barber_email"];
      let barberCard = barberCardInfo.find(function (event) {
        let one_barber_card = event["barber_card_email"];
        if (barber_email == one_barber_card) {
          return true;
        }
      });

      //  set the value of that card for barber profile
      let cardbarberProfile = document
        .getElementById("card_profile")
        .setAttribute("src", barberCard["barber_photo"]);
      let cardbarberName = (document.getElementById("card_b_name").innerHTML =
        barberCard["barbername"]);
      let cardbarberSample_1 = document
        .getElementById("card_sample_1")
        .setAttribute("src", barberCard["barber_sample"]);
      let cardbarberSample_2 = document
        .getElementById("card_sample_2")
        .setAttribute("src", barberCard["barber_sample_1"]);
      let cardbarberSample_3 = document
        .getElementById("card_sample_3")
        .setAttribute("src", barberCard["barber_sample_2"]);

      //  delete card function
      let deleteOneCard = document.getElementById("delete_card");

      deleteOneCard.addEventListener("click", function (event) {
        event.preventDefault();
        let index = barberCardInfo.indexOf(barberCard);
        // give a confirm alert
        let msg = confirm("Are you sure! you want to delete this account");
        if (msg !== true) {
          return;
        } else {
          barberCardInfo.splice(index, 1);
          localStorage.setItem("barber_card", JSON.stringify(barberCardInfo));
          window.location.href = "./barber_profile.html";
        }
      });

      // get data from add more hairstyles

      let checker = false;
      const addDesign = document.getElementById("add_form");
      addDesign.addEventListener("submit", function (event) {
        event.preventDefault();

        let new_hair = [];
        if (localStorage.getItem("newhaircuts") != null) {
          new_hair = JSON.parse(localStorage.getItem("newhaircuts"));
        }

        const hairName = document.getElementById("style_name").value.trim();
        const hairType = document.getElementById("type_id").value.trim();
        const hairDescription = document
          .getElementById("style_para")
          .value.trim();
        const hairCutPhoto = document
          .getElementById("design_photo")
          .value.trim();
        const haircutId = Date.now();

        let hair_cut_data = {
          haircut_id: haircutId,
          haircutname: hairName,
          barber_hair_type: hairType,
          // this email is profile email
          haircut_email: thisBarber,
          haircut_para: hairDescription,
          haircutImage: hairCutPhoto,
        };

        new_hair.push(hair_cut_data);
        const new_Array = JSON.stringify(new_hair);
        localStorage.setItem("newhaircuts", new_Array);
        alert("Successfully new hair style added");
        window.location.href = "./barber_profile.html";
      });

      // add haircuts Java script

      const oneBarberHaircuts = JSON.parse(localStorage.getItem("newhaircuts"));

      let one_email_haircuts_array = oneBarberHaircuts.filter(
        F => F.haircut_email == thisBarber
      );

      console.log(one_email_haircuts_array);

      for (let i = 0; i < one_email_haircuts_array.length; i++) {
        let big_div = document.createElement("div");
        big_div.setAttribute("class", "haircut_card");
        document.querySelector(".haircuts").append(big_div);

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

        let delete_haircut = document.createElement("button");
        delete_haircut.setAttribute("class", "haircut_delete");
        delete_haircut.innerText = "Delete";
        delete_haircut.setAttribute(
          "onclick",
          "deleteCard(" + one_email_haircuts_array[i]["haircut_id"] + ")"
        );
        content_div.append(delete_haircut);
      }

      // delete haircut function
      function deleteCard(id) {
        let arr = oneBarberHaircuts;
        let card = arr.find(e => {
          if (id == e["haircut_id"]) {
            return true;
          }
        });
        let con = confirm("Are you sure want to delete");
        if (con == true) {
          let index = arr.indexOf(card);
          arr.splice(index, 1);
          localStorage.setItem("newhaircuts", JSON.stringify(arr));
          alert("Successfully hair type deleted")
        }
      }
    </script>
  </body>
</html>
