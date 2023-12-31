<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="../Assets/CSS/customer_barber_booking_payment.css"
    />
    <title>customer barber booking payment page</title>
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
              <li class="date_font" id="cus_add"></li>
              <li class="date_font" id="cus_phone"></li>
              <li class="date_font" id="time"></li>
              <li class="date_font" id="haircut_name"></li>
            </ul>
          </div>
          <img class="bottum_image" id="booked_barber_img" alt="Barber Name">
        </div>
        <div class="right">
          <h2>Barber Details</h2>

          <p id="barber_name" class="shop_text"></p>

          <p id="barber_ex" class="shop_text"></p>

          <p id="barber_slogan" class="shop_text"></p>

          <p id="barber_phone" class="shop_text"></p>

          <p id="barber_address" class="shop_text"></p>

          <p id="barber_about" class="shop_text"></p>
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

      // get data from booking page URL params
      let url = location.search;
      let prams = new URLSearchParams(url);
      let id = prams.get("id");

      const oneBarberBooking = JSON.parse(
        localStorage.getItem("barberBookInfo")
      ).find(e => e.barber_book_id == id);

      // set values of booking details
      let cus_address = (document.getElementById("cus_add").innerHTML =
        "Customer address: " + oneBarberBooking["book_cus_address"]);
      let book_cus_name = (document.getElementById("cus_name").innerHTML =
        "Customer name : " + oneBarberBooking["barber_book_customer_name"]);
      let book_cus_phone = (document.getElementById("cus_phone").innerHTML =
        "Customer phone : " + oneBarberBooking["book_cus_phone"]);
      let book_date = (document.getElementById("date").innerHTML =
        "Date : " + oneBarberBooking["barber_book_date"]);
      let book_time = (document.getElementById("time").innerHTML =
        "Time : " + oneBarberBooking["barber_book_time"]);
      let book_haircut = (document.getElementById("haircut_name").innerHTML =
        "Service type : " + oneBarberBooking["select_barber_Haircut"]);

      // select the barber card from barber booking page.
      const oneBarberCard = JSON.parse(
        localStorage.getItem("barber_card")
      ).find(
        event => event.barberid == oneBarberBooking["barber_book_card_id"]
      );
      console.log(oneBarberCard);

      // get the barber full details from that barber card.
      const oneBarberDetail = JSON.parse(
        localStorage.getItem("barber_profile")
      ).find(ev => ev.barber_email == oneBarberCard["barber_card_email"]);
      console.log(oneBarberDetail);

      // set values of booking barber details from that barber card.

      let booked_barber_image = document.getElementById("booked_barber_img").setAttribute("src",oneBarberDetail["barber_photo"]);

      let book_barber_name = (document.getElementById("barber_name").innerHTML =
        "Barber name :   " + oneBarberDetail["barbername"]);

      let book_experience = (document.getElementById("barber_ex").innerHTML =
        "Barber experience :   " + oneBarberDetail["barber_experience"]);

      let book_slogan = (document.getElementById("barber_slogan").innerHTML =
        "Barber slogan :   " + oneBarberDetail["barber_slogan"]);

      let book_phone = (document.getElementById("barber_phone").innerHTML =
        "Barber phone :   " + oneBarberDetail["barber_phone"]);

     

      let book_barber_about = (document.getElementById(
        "barber_about"
      ).innerHTML = "About barber :   " + oneBarberDetail["barber_about"]);

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
        if (localStorage.getItem("barberBookedDetails") != null) {
          newArr = JSON.parse(localStorage.getItem("barberBookedDetails"));
        }
        const cusAddress = cus_address;
        const barberEmail = oneBarberDetail["barber_email"];
        const bookedBarbername = oneBarberDetail["barbername"];
        const bookedBarberPhone = "Barber phone : " + oneBarberDetail["barber_phone"];
        const bookedCusName = book_cus_name;
        const bookedDate = book_date;
        const bookCusPhone = book_cus_phone;
        const bookedTime = book_time;
        const bookedHaircut = book_haircut;
        const bookedCusEmail = oneUser;
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
          booked_barber_otp: "Booked OTP : " + cusBookedOTP,
          booked_barber_phone: bookedBarberPhone,
          booked_cus_email: bookedCusEmail,
          booked_cus_address: cusAddress,
          booked_barber_name: bookedBarbername,
          booked_barber_email: barberEmail,
          booked_custom_name: bookedCusName,
          booked_barber_date: bookedDate,
          booked_barber_time: bookedTime,
          booked_haircut: bookedHaircut,
          booked_custom_phone: bookCusPhone,
          booked_id: bookedId,
        };
        // push the data to local storage.
        newArr.push(booked_data);
        const stringfy = JSON.stringify(newArr);
        localStorage.setItem("barberBookedDetails", stringfy);
      });
    </script>
  </body>
</html>
