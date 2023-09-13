<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/barber_card_form.css">
    <title> shop apply</title>
  </head>
  <body>

    <!-- section is started -->
    <div class="head">
      <p class="head_text">Register your barber shop</p>
    </div>
    <form class="card_form" id="shop_profile_form">
      <div class="name">
        <label>Shop name</label>
        <div class="name-box">
          <input
          value="mahaan"
          required
          pattern="[A-Za-z0-9]+"
          title="Make sure that name should not contain space"
            id="s_name"
            class="name-box-1"
            type="text"
            autocomplete="name"
          />
        </div>
      </div>
    
      <div class="name">
        <label>Shop photo</label>
        <div class="name-box">
          <input 
          required
          class="name-box-1" type="url" id="s_photo" />
        </div>
      </div>
      <div class="email">
        <label> Shop slogan</label>
        <div class="address-box">
          <input 
          required
          value="The Best Shears in Town."
          class="name-box-1" type="text" id="s_slogan" />
        </div>
      </div>
      <div class="email">
        <label> Shop phone</label>
        <div class="address-box">
          <input 
          value="9887768798"
          pattern="[7-9]{1}[0-9]{9}" 
       title="Phone number with 7-9 and remaing 9 digit with 0-9"
          required
          class="name-box-1" type="number" id="s_phone" />
        </div>
      </div>
      <div class="experience">
        <label> Shop experience</label>
        <div class="address-box">
          <input 
          required
          value="15 - years"
          class="name-box-1" type="text" id="s_experience" />
        </div>
      </div>  
      <div class="experience">
        <label>  haircut Price detail</label>
        <div class="address-box">
          <input 
          required
          value="120RS - 2000RS"
          class="name-box-1" type="text" id="s_price" />
        </div>
      </div>  
          <div class="all_inputs">
            <label class="all_label"> Shop address</label>
            <br />
            <br />
            <input 
            required
           value="12 th street, Anna nagar, velachery, Chennai-07."
            id="s_address" class="name-box-1"/>
          </div>

          <div class="all_inputs">
            <label class="all_label">about Shop</label>
            <br />
            <br />
            <input 
            required
            value="We have a best discount for all haircut and coloring. We have 15 years experience in barber career. We give full satisfy to the customer."
            id="s_about" class="name-box-1"/>
          </div>
      <div class="submit">
        <button class="submit-1">Submit</button>
      </div>
    </form>
    <!-- section is ended -->

    <!-- java script -->
    <script>
      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      let checker = false;
      const shopCard = document.getElementById("shop_profile_form");
      shopCard.addEventListener("submit",function (event){
        event.preventDefault();
        // create empty array
         let emptyArray = [];
         if(localStorage.getItem("shopinfo") != null){
          emptyArray = JSON.parse(localStorage.getItem("shopinfo"));
         } 
     

      const shopName = document.getElementById("s_name").value.trim();
      const shopPhoto = document.getElementById("s_photo").value.trim();
      const shopSlogan = document.getElementById("s_slogan").value.trim();
      const shopPhone = document.getElementById("s_phone").value.trim();
      const shopExperience = document.getElementById("s_experience").value.trim();
      const shopPrice = document.getElementById("s_price").value.trim();
      const shopAddress = document.getElementById("s_address").value.trim();
      const shopAbout = document.getElementById("s_about").value.trim();
      const shopId = Date.now();

      let shopData = {
        shop_id: shopId,
        shop_name: shopName,
        shop_email: thisBarber,
        shop_photo: shopPhoto,
        shop_slogan: shopSlogan,
        shop_phone: shopPhone,
        shop_experience: shopExperience,
        shop_price: shopPrice,
        shop_address: shopAddress,
        shop_about: shopAbout,
      }

  // push to localstorage 
        emptyArray.push(shopData);
        const pushArray = JSON.stringify(emptyArray);
        localStorage.setItem("shopinfo", pushArray);
        alert("Successfully shop profile created");
        window.location.href = "./shop_profile.html";
    })
    </script>
  </body>
</html>
