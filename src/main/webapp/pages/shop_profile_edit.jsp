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
            <a class="nav" href="../pages/barber_card.html">Apply barber</a>
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
      <p class="head_text">Create your shop card</p>
    </div>
    <form class="card_form" id="shop_E_form">
      <div class="name">
        <label>Shop name</label>
        <div class="name-box">
          <input
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
          
          class="name-box-1" type="text" id="s_slogan" />
        </div>
      </div>
      <div class="email">
        <label> Shop phone</label>
        <div class="address-box">
          <input 
          required
          pattern="[7-9]{1}[0-9]{9}" 
          title="Phone number with 7-9 and remaing 9 digit with 0-9"
          class="name-box-1" type="number" id="s_phone" />
        </div>
      </div>
      <div class="experience">
        <label> Shop experience</label>
        <div class="address-box">
          <input 
          required
         
          class="name-box-1" type="text" id="s_experience" />
        </div>
      </div>  
      <div class="experience">
        <label>  haircut Price detail</label>
        <div class="address-box">
          <input 
          required
          
          class="name-box-1" type="text" id="s_price" />
        </div>
      </div>  
          <div class="all_inputs">
            <label class="all_label"> Shop address</label>
            <br />
            <br />
            <textarea 
            required
           
            id="s_address" class="name-box-1" name="address" rows="5" cols="50"></textarea>
          </div>

          <div class="all_inputs">
            <label class="all_label">about Shop</label>
            <br />
            <br />
            <textarea 
            required
            id="s_about" class="name-box-1" name="address" rows="5" cols="50"></textarea>
          </div>
      <div class="submit">
        <button class="submit-1">Save</button>
      </div>
    </form>
    <!-- section is ended -->

    <!-- java script -->
    <script>
      // JSON
      
      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      const shopInfo = JSON.parse(localStorage.getItem("shopinfo"));

      let oneShop = shopInfo.find(function(event){
        let oneShopEmail = event["shop_email"]
        if(thisBarber == oneShopEmail){
            return true;
        }
      });

    //   show data from local storage!
     

      const shopName = document.getElementById("s_name").value = oneShop["shop_name"];
      const shopPhoto = document.getElementById("s_photo").value = oneShop["shop_photo"] 
      const shopSlogan = document.getElementById("s_slogan").value = oneShop["shop_slogan"]
      const shopPhone = document.getElementById("s_phone").value = oneShop["shop_phone"]
      const shopExperience = document.getElementById("s_experience").value = oneShop["shop_experience"] 
      const shopPrice = document.getElementById("s_price").value = oneShop["shop_price"]
      const shopAddress = document.getElementById("s_address").value = oneShop["shop_address"]
      const shopAbout = document.getElementById("s_about").value = oneShop["shop_about"]
      
      let save = document.getElementById("shop_E_form");
      save.addEventListener("submit", function (event){
        event.preventDefault();

        let shop_name = document.getElementById("s_name").value;
        let shop_email = thisBarber;
        let shop_photo = document.getElementById("s_photo").value;
        let shop_slogan = document.getElementById("s_slogan").value;
        let shop_phone = document.getElementById("s_phone").value;
        let shop_experience = document.getElementById("s_experience").value;
        let shop_price = document.getElementById("s_price").value;
        let shop_address = document.getElementById("s_address").value;
        let shop_about = document.getElementById("s_about").value;

        var regex = /^[6789]{1}[0-9]{9,15}$/;
    if (regex.test(shop_phone)) {
      console.log("Valid phone number!");
    } else {
      alert("Phone number is invalid kindly change your number");
      return;
    }
      


      let editShopData = {
        
        shop_name,
        shop_email,
        shop_photo,
        shop_slogan,
        shop_phone,
        shop_experience,
        shop_price,
        shop_address,
        shop_about,
      }


      let newData = JSON.parse(localStorage.getItem("shopinfo"));

      let oldData = newData.find(i => i.shop_email == shop_email);

      if(oldData == undefined){
        alert("Email Id not match")
      }
      else{
        let updated = Object.assign(oldData, editShopData);
        let index = newData.indexOf(oldData.shop_email);
        newData[index] = updated;
        localStorage.setItem("shopinfo", JSON.stringify(newData));
        alert("Successfully shop profile edited");
        window.location.href ="./shop_profile.html";
      }
    })

    
    
    </script>
    
  </body>
</html>
