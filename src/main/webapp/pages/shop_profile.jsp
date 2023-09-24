<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/shop_profile.css" />
    <title>shop profile</title>
  </head>
  <body>
    <!-- header is started -->
   <jsp:include page="barber_header.jsp"></jsp:include>
    <!-- header is ended -->

    <!-- section is started -->
    <div class="topic_div">
      <h1 class="topic">Shop profile</h1>
    </div>

    <div class="full_content">
      <!-- card side start -->
      <div class="card_and_profile_div">
        <div class="profile">
          <img class="photo" id="photo" alt="shop profile photo" />
          <div class="right_side">
            <p class="text">Scissor Masters</p>
            <br />
            <p class="text">Official shops</p>
          </div>
        </div>

        <div class="card_text_div">
          <p class="Your_card">Your card</p>
        </div>
        <!-- card for shop -->

        <div class="container">
          <div class="profile-card">
            <img
              id="card_profile"
              alt="shop image"
              class="img-responsive"
              src="https://images.unsplash.com/photo-1454678904372-2ca94103eca4?crop=entropy&fit=crop&fm=jpg&h=975&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=1925"
            />
            <div class="name_div">
              <h2 id="card_b_name" class="hvr-underline-from-center">
                Prakash
              </h2>
            </div>

            <div class="sample_text_div">
              <h2 class="hvr-underline-from-center">Sample haircuts</h2>
            </div>
            <div class="profile-info">
              <img
                id="card_sample_1"
                alt="haircutname"
                class="profile-pic"
                src="https://pbs.twimg.com/profile_images/910579937089859584/rbsL-1ze_400x400.jpg"
              />

              <img
                id="card_sample_2"
                alt="haircutname"
                class="profile-pic"
                src="https://pbs.twimg.com/profile_images/910579937089859584/rbsL-1ze_400x400.jpg"
              />

              <img
                id="card_sample_3"
                alt="haircutname"
                class="profile-pic"
                src="https://pbs.twimg.com/profile_images/910579937089859584/rbsL-1ze_400x400.jpg"
              />
            </div>

            <div class="two_btn_div">
              <a class="select_btn">Details</a>
              <a class="select_btn">Select</a>
            </div>
          </div>
        </div>

        <!-- card end -->

        <div class="three_buttons">
          <a href="./shop_card_create.html" class="create_card">Create card</a>
          <a href="./shop_card_edit.html" class="create_card">Edit card</a>
          <button class="edit_card" id="delete_shop_card">delete card</button>
        </div>
      </div>
      <!-- card side end -->

      <!-- about shop start -->
      <div class="about_shop">
        <div class="information">
          <div class="input_div">
            <label class="label">Shop Name: </label>
            <br />
            <input class="input" type="text" id="shop_name" disabled />
          </div>

          <div class="input_div">
            <label class="label">Shop experience: </label>
            <br />
            <input class="input" type="text" id="shop_experience" disabled />
          </div>
          <div class="input_div">
            <label class="label"> Shop slogan: </label>
            <br />
            <input class="input" type="text" id="shop_slogan" disabled />
          </div>
          <div class="input_div">
            <label class="label"> Haircut price detail: </label>
            <br />
            <input class="input" type="text" id="shop_haircut_price" disabled />
          </div>
          <div class="input_div">
            <label class="label"> Shop phone number: </label>
            <br />
            <input class="input" type="text" id="shop_phone_number" disabled />
          </div>
          <div class="big_input_div">
            <label class="label"> Shop address: </label>
            <br />
            <input class="big_input" type="text" id="shop_address" disabled />
          </div>
          <div class="about_div">
            <label class="label">About shop: </label>
            <br />
            <input class="big_input" type="text" id="shop_about_id" disabled />
          </div>
        </div>

        <div class="three_buttons">
          <a class="create_card" href="./shop_profile_edit.html"
            >Edit profile</a
          >
          <button id="delete_shop" class="edit_card">Delete profile</button>
        </div>
      </div>
      <!-- about side end -->
    </div>

    <!-- add more haircut designs -->

    <div class="all_haircut_designs">
      <div class="form_div">
        <p>Add more haircuts</p>
        <form id="add_form_1" class="add_style_form">
          <div class="small_form_div">
            <label class="label">Haircut name</label>

            <br />
            <input
              value="oil facial"
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
              <option>Hair straightening</option>
              <option>Facials</option>
              <option>Shaves</option>
              <option>Beard trim</option>
            </select>
          </div>

          <div class="small_form_div">
            <label class="label">Description</label>

            <br />
            <input
              value="In this service we use oil to wash your face and we give oil facial. after this facial your face look very soft."
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

    <!-- Java Script -->

    <script>
      // get data from both storage of login & register
      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      const shopInfo = JSON.parse(localStorage.getItem("shopinfo"));
      // get object from local storage by email
      let oneShop = shopInfo.find(function (event) {
        let oneShopEmail = event["shop_email"];
        if (thisBarber == oneShopEmail) {
          return true;
        }
      });

      console.log(oneShop);

      const shopPhoto = document
        .getElementById("photo")
        .setAttribute("src", oneShop["shop_photo"]);
      const shopName = (document.getElementById("shop_name").value =
        oneShop["shop_name"]);
      const shopExperience = (document.getElementById("shop_experience").value =
        oneShop["shop_experience"]);
      const shopSlogan = (document.getElementById("shop_slogan").value =
        oneShop["shop_slogan"]);
      const shopPhone = (document.getElementById("shop_phone_number").value =
        oneShop["shop_phone"]);
      const shopAddress = (document.getElementById("shop_address").value =
        oneShop["shop_address"]);
      const shopprice = (document.getElementById("shop_haircut_price").value =
        oneShop["shop_price"]);
      const shopAbout = (document.getElementById("shop_about_id").value =
        oneShop["shop_about"]);

      // delete  profile function
      let deleteOneShop = document.getElementById("delete_shop");
      deleteOneShop.addEventListener("click", function (event) {
        event.preventDefault();
        // let index = shopInfo.indexOf(oneShop);
        // console.log(index);

        // give a confirm alert
        let msg = confirm("Are you sure! you want to delete this account");
        if (msg !== true) {
          return;
        } else {
          shopInfo.splice(oneShop, 1);
          localStorage.setItem("shopinfo", JSON.stringify(shopInfo));
          window.location.href = "./barber_home.html";
        }
      });

      // card java script (or) function
      const shopCard = JSON.parse(localStorage.getItem("shop_card"));
      // store a email for verify!
      let shop_Email = oneShop["shop_email"];
      let shop_Card = shopCard.find(function (event) {
        let one_shop_card = event["shop_card_email"];
        if (shop_Email == one_shop_card) {
          return true;
        }
      });

      //  set the value of that card for barber profile
      let cardshopProfile = document
        .getElementById("card_profile")
        .setAttribute("src", shop_Card["shop_card_photo"]);
      let cardshopName = (document.getElementById("card_b_name").innerHTML =
        shop_Card["shop_card_name"]);
      let cardshopSample_1 = document
        .getElementById("card_sample_1")
        .setAttribute("src", shop_Card["shop_sample"]);
      let cardshopSample_2 = document
        .getElementById("card_sample_2")
        .setAttribute("src", shop_Card["shop_sample_1"]);
      let cardshopSample_3 = document
        .getElementById("card_sample_3")
        .setAttribute("src", shop_Card["shop_sample_2"]);

      //  delete card function
      let deleteOneCard = document.getElementById("delete_shop_card");
      deleteOneCard.addEventListener("click", function (event) {
        event.preventDefault();
        let index = shopCard.indexOf(shop_Card);
        // give a confirm alert
        let msg = confirm("Are you sure! you want to delete this account");
        if (msg !== true) {
          return;
        } else {
          shopCard.splice(index, 1);
          localStorage.setItem("shop_card", JSON.stringify(shopCard));
          window.location.href = "./shop_profile.html";
        }
      });

      // function for add new hairstyle.

      let checker = false;
      const addDesign = document.getElementById("add_form_1");
      addDesign.addEventListener("submit", function (event) {
        event.preventDefault();

        let new_hair = [];
        if (localStorage.getItem("shop_newhaircuts") != null) {
          new_hair = JSON.parse(localStorage.getItem("shop_newhaircuts"));
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
          shop_haircut_id: haircutId,
          shop_haircutname: hairName,
          shop_hair_type: hairType,
          // this email is profile email
          shop_haircut_email: thisBarber,
          shop_haircut_para: hairDescription,
          shop_haircutImage: hairCutPhoto,
        };

        new_hair.push(hair_cut_data);

        const new_Array = JSON.stringify(new_hair);
        localStorage.setItem("shop_newhaircuts", new_Array);
        alert("Successfully new hair type added");
        window.location.href = "./shop_profile.html";
      });

      // add haircuts Java script

      const oneBarberHaircuts = JSON.parse(
        localStorage.getItem("shop_newhaircuts")
      );

      let one_email_haircuts_array = oneBarberHaircuts.filter(
        F => F.shop_haircut_email == thisBarber
      );

      console.log(one_email_haircuts_array);

      for (let i = 0; i < one_email_haircuts_array.length; i++) {
        let big_div = document.createElement("div");
        big_div.setAttribute("class", "haircut_card");
        document.querySelector(".haircuts").append(big_div);

        let image = document.createElement("img");
        image.setAttribute("class", "haircut_card_img");
        image.setAttribute(
          "src",
          one_email_haircuts_array[i]["shop_haircutImage"]
        );
        image.setAttribute(
          "alt",
          one_email_haircuts_array[i]["shop_haircutname"]
        );
        image.setAttribute("alt", "image");
        big_div.append(image);

        let content_div = document.createElement("div");
        content_div.setAttribute("class", "haircut_card-content");
        big_div.append(content_div);

        let name = document.createElement("h2");
        name.setAttribute("class", "haircut_card-title");
        name.innerText = one_email_haircuts_array[i]["shop_haircutname"];
        content_div.append(name);

        let text = document.createElement("p");
        text.setAttribute("class", "haircut_card-text");
        text.innerText = one_email_haircuts_array[i]["shop_haircut_para"];
        content_div.append(text);

        let delete_haircut = document.createElement("button");
        delete_haircut.setAttribute("class", "haircut_delete");
        delete_haircut.innerText = "Delete";
        delete_haircut.setAttribute(
          "onclick",
          "deleteCard(" + one_email_haircuts_array[i]["shop_haircut_id"] + ")"
        );
        content_div.append(delete_haircut);
      }
      // delete haircut function
      function deleteCard(id) {
        let arr = oneBarberHaircuts;
        let card = arr.find(e => {
          if (id == e["shop_haircut_id"]) {
            return true;
          }
        });
        let con = confirm("Are you sure want to delete");
        if (con == true) {
          let index = arr.indexOf(card);
          arr.splice(index, 1);
          localStorage.setItem("shop_newhaircuts", JSON.stringify(arr));
          alert("Successfully hair type card deleted");
        }
      }
    </script>
  </body>
</html>