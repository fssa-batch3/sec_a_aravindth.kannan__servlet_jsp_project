<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="../Assets/CSS/customer_shop_booking_payment.css"
    />
    <title>customer shop booking payment page</title>
  </head>
  <body>
    <div class="full_content">
      <div class="content">
        <div class="right_and_left">
          <div class="left">
            <h2>Schedule Details</h2>
            <ul>
              <li class="date_font" id="cus_name"></li>
              <li class="date_font" id="date"></li>
              <li class="date_font" id="time"></li>
              <li class="date_font" id="haircut_name"></li>
            </ul>
          </div>
          <img alt="shop Image" id="booked_shop_img" class="bottum">
           
        </div>
        <div class="right">
          <h2>Shop Details</h2>

          <p class="shop_text" id="shop_name"></p>
          <p class="shop_text" id="shop_ex"></p>
          <p class="shop_text" id="shop_slogan"></p>
          <p class="shop_text" id="shop_phone"></p>
          <p class="shop_text" id="shop_address"></p>
          <p class="shop_text" id="shop_about"></p>
        </div>
      </div>
      <div class="payment_div" onclick="myFunction()">
        <button class="payment_btn" id="book_btn">Book now</button>
      </div>

      <div class="payment_success_div" id="success_message">
        <img src="../Assets/Images/right_tick.gif" alt="success" />
        <p class="payment_success_div_text">Successfully booked</p>
      </div>
    </div>

    <script>
      // get user data from localstorage used login info

      const oneUser = JSON.parse(localStorage.getItem("this_user"));
      const singleUserInfo = JSON.parse(localStorage.getItem("userinfo")).find(
        e => e.email == oneUser
      );

      // get data form booking page used URL params
      let url = location.search;
      let prams = new URLSearchParams(url);
      let id = prams.get("id");

      const oneShopBooking = JSON.parse(
        localStorage.getItem("shopBookInfo")
      ).find(e => e.shop_book_id == id);

      // set values of booking details

    
      let book_cus_name = (document.getElementById("cus_name").innerHTML =
        "Customer name : " + oneShopBooking["shop_book_customer_name"]);

      let book_date = (document.getElementById("date").innerHTML =
        "Date : " + oneShopBooking["shop_book_date"]);
      let book_time = (document.getElementById("time").innerHTML =
        "Time : " + oneShopBooking["shop_book_time"]);
      let book_haircut = (document.getElementById("haircut_name").innerHTML =
        "Service type : " + oneShopBooking["select_shop_Haircut"]);

      // select the shop card from shop booking page.
      const oneShopCard = JSON.parse(localStorage.getItem("shop_card")).find(
        event => event.shop_card_id == oneShopBooking["shop_book_card_id"]
      );
      console.log(oneShopCard);

      // get the shop full details from that shop card.
      const oneShopDetail = JSON.parse(localStorage.getItem("shopinfo")).find(
        ev => ev.shop_email == oneShopCard["shop_card_email"]
      );
      console.log(oneShopDetail);

      // set values of booking shop details from that shop card.

      let booked_shop_image = document.getElementById("booked_shop_img").setAttribute("src",oneShopDetail["shop_photo"]);

      let book_shop_name = (document.getElementById("shop_name").innerHTML =
        "Shop name :   " + oneShopDetail["shop_name"]);

      let book_experience = (document.getElementById("shop_ex").innerHTML =
        "Shop experience :   " + oneShopDetail["shop_experience"]);

      let book_slogan = (document.getElementById("shop_slogan").innerHTML =
        "Shop slogan :   " + oneShopDetail["shop_slogan"]);

      let book_phone = (document.getElementById("shop_phone").innerHTML =
        "Shop phone :   " + oneShopDetail["shop_phone"]);

      let book_shop_address = (document.getElementById(
        "shop_address"
      ).innerHTML = "Shop address :   " + oneShopDetail["shop_address"]);

      let book_shop_about = (document.getElementById("shop_about").innerHTML =
        "About shop :   " + oneShopDetail["shop_about"]);

// function for successful alert!
      function myFunction() {
        document
          .getElementById("success_message")
          .setAttribute("class", "payment_success_div_onclick");
      }


// function for store date of booked customer data.
      let checker = true;
      const booked = document.getElementById("book_btn");
      booked.addEventListener("click", function (event) {
        event.preventDefault();
        
        // create new array.
        let newArr = [];
        if (localStorage.getItem("shopBookedDetails") != null) {
          newArr = JSON.parse(localStorage.getItem("shopBookedDetails"));
        }
       
        const shopEmail = oneShopDetail["shop_email"];
        const bookedShopname = oneShopDetail["shop_name"]
        const bookedCusName = book_cus_name;
        const bookedShopAddress = book_shop_address;
        const bookedDate = book_date;
        const bookedShopPhone = book_phone;
        const bookedCusEmail = oneUser;
        const bookedTime = book_time;
        const bookedHaircut = book_haircut;
        const bookedCusPhone = "Customer Phone : " + singleUserInfo["phoneNumber"];
        const bookedId = Date.now();

       // function for genarate a random OTP to user and that shop.
      function generateOTP(limit) {
        let digits = "1234567890";
        let OTP = "";
        for (let i = 0; i < limit; i++) {
          OTP += digits[Math.floor(Math.random() * 10)];
        }
        return OTP;
      }

      const cusBookedOTP = generateOTP(4);

       // create new object.
        let booked_data = {
          booked_custom_email:bookedCusEmail,
          booked_custom_otp:"Booked OTP : " + cusBookedOTP,
          booked_shop_address:bookedShopAddress,
          booked_shop_phone:bookedShopPhone,
          booked_shop_name:bookedShopname,
          booked_shop_email: shopEmail,
          booked_custom_name: bookedCusName,
          booked_shop_date: bookedDate,
          booked_shop_time: bookedTime,
          booked_haircut: bookedHaircut,
          booked_custom_phone: bookedCusPhone,
          booked_id: bookedId,
        };
// push the data to local storage.
        newArr.push(booked_data);
        const stringfy = JSON.stringify(newArr);
        localStorage.setItem("shopBookedDetails", stringfy);
      });
    </script>
  </body>
</html>
