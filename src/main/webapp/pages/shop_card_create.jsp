<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/barber_card_form.css" />
    <title>shop card create</title>
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
            <a class="nav" href="../pages/barber_card.html">Apply Barber</a>
            <a class="nav" href="../pages/barber_shop_card.html">Register shop</a>
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
    <div class="head">
      <p class="head_text">Create Your Shop Card</p>
    </div>
    <form class="card_form" id="create_b_card">
      <div class="name">
        <label>Name</label>

        <div class="name-box">
          <input
          value="mahaan"
          required
          pattern="[A-Za-z0-9]+"
          title="Make sure that name should not contain space"
            id="b_name"
            class="name-box-1"
            type="text"
            autocomplete="name"
          />
        </div>
      </div>
    
      <div class="name">
        <label>Profile-URL</label>
        <div class="name-box">
          <input 
          required
          class="name-box-1" type="url" id="photo" />
        </div>
      </div>


      <div class="sample-haircut">
        <input
        required
          class="name-box-1"
          type="url"
          id="sample"
          placeholder="sample haircut -1"
        />
      </div>
      <div class="sample-haircut">
        <input
        required
          class="name-box-1"
          type="url"
          id="sample_1"
          placeholder="sample haircut -2"
        />
      </div>
      <div class="sample-haircut">
        <input
        required
          class="name-box-1"
          type="url"
          id="sample_2"
          placeholder="sample haircut -3"
        />
      </div>

      <div class="submit">
        <button class="submit-1">Submit</button>
      </div>
    </form>

    <!-- section is ended -->

  

    <!-- java script -->

    <script>
      // get data from this form
      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      let checker = false;

      const shopCard = document.getElementById("create_b_card");

      shopCard.addEventListener("submit", function (event) {
        event.preventDefault();
        // create empty array
        let newArray = [];

        if (localStorage.getItem("shop_card") != null) {
          newArray = JSON.parse(localStorage.getItem("shop_card"));
        }

        const shopName = document.getElementById("b_name").value;
        const shopCardEmail = thisBarber;
        const shopPhoto = document.getElementById("photo").value;
        const shopSample = document.getElementById("sample").value;
        const shopSample_1 = document.getElementById("sample_1").value;
        const shopSample_2 = document.getElementById("sample_2").value;

        const shopCardId = Date.now();

        let one_shop_card = {
          shop_card_id: shopCardId,
          shop_card_name: shopName,
          shop_card_email: shopCardEmail,
          shop_card_photo: shopPhoto,
          shop_sample: shopSample,
          shop_sample_1: shopSample_1,
          shop_sample_2: shopSample_2,
        };

       
          newArray.push(one_shop_card);
          const pushArray = JSON.stringify(newArray);
          localStorage.setItem("shop_card", pushArray);
          alert("Successfully shop card created");
          window.location.href = "./shop_profile.html";
       
      });
    </script>
  </body>
</html>
