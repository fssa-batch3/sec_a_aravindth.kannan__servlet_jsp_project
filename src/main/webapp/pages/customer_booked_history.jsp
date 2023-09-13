<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/customer_booked_history.css" />
    <title>customer booked history</title>
  </head>
  <body>
   <jsp:include page="customer_header.jsp" />
    <!-- header finished -->

    <div class="both_list">
      <!-- shop booked list section is started -->
      <section class="shop_list">
        <h2>Shop booked list</h2>
        <!-- <div class="booked_div">
            <h2>Booked Details</h2>
            <p class="shop_text" id="shop_name">sharp&clean</p>
            <ul>
              <li class="detail" id="customer_name">kavi</li>
              <li class="detail" id="date">22-09-2023</li>
              <li class="detail" id="time">10:00Am - 11:50Am</li>
              <li class="detail" id="hairstyle"> long haircut - 30$</li>
              <li class="detail" id="cus_phone">9345262087</li>
            </ul>
            <button id="done_button" class="done_btn">Clear</button>
          </div> -->
      </section>
      <!--  barber booked list section is started -->
      <section class="barber_list">
        <h2>Barber booked list</h2>
      </section>
    </div>

    <!-- footer started -->
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
          <br>
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

    <script>
      const thisUser = JSON.parse(localStorage.getItem("this_user"));

      const allBarberBookedList = JSON.parse(
        localStorage.getItem("barberBookedDetails")
      );

      const barberBookedList = allBarberBookedList.filter(
        e => e.booked_cus_email == thisUser
      );

      for (let i = 0; i < barberBookedList.length; i++) {
        let big_div = document.createElement("div");
        big_div.setAttribute("class", "booked_div");
        document.querySelector(".barber_list").append(big_div);

        let h2font = document.createElement("h2");
        h2font.innerHTML = "Booked Details";
        big_div.append(h2font);

        let shopname = document.createElement("p");
        shopname.setAttribute("class", "shop_text");
        shopname.innerHTML = barberBookedList[i]["booked_barber_name"];
        big_div.append(shopname);

        let ul = document.createElement("ul");
        big_div.append(ul);

        let text = document.createElement("li");
        text.setAttribute("class", "detail");
        text.innerText = barberBookedList[i]["booked_custom_name"];
        ul.append(text);

        let text_1 = document.createElement("li");
        text_1.setAttribute("class", "detail");
        text_1.innerText = barberBookedList[i]["booked_barber_date"];
        ul.append(text_1);

        let text_2 = document.createElement("li");
        text_2.setAttribute("class", "detail");
        text_2.innerText = barberBookedList[i]["booked_barber_time"];
        ul.append(text_2);

        let text_3 = document.createElement("li");
        text_3.setAttribute("class", "detail");
        text_3.innerText = barberBookedList[i]["booked_haircut"];
        ul.append(text_3);

        let text_4 = document.createElement("li");
        text_4.setAttribute("class", "detail");
        text_4.innerText = barberBookedList[i]["booked_barber_phone"];
        ul.append(text_4);

        let text_5 = document.createElement("li");
        text_5.setAttribute("class", "detail");
        text_5.innerText = barberBookedList[i]["booked_barber_otp"];
        ul.append(text_5);

        let donebtn = document.createElement("button");
        donebtn.setAttribute("class", "done_btn");
        donebtn.innerText = "Done";
        // donebtn.setAttribute(
        //   "onclick",
        //   "deleteCard(" + barberBookedList[i]["shop_haircut_id"] + ")"
        // );
        big_div.append(donebtn);
      }

      // function for all shopbooked history!

      // get all shopbooked data from local storage.
      const allShopBookedList = JSON.parse(
        localStorage.getItem("shopBookedDetails")
      );
      // find this user's shopbooked data by this user email.
      const shopBookedList = allShopBookedList.filter(
        e => e.booked_custom_email == thisUser
      );
      // create loop function for careet a booked card to show user.
      for (let i = 0; i < shopBookedList.length; i++) {
        let big_div = document.createElement("div");
        big_div.setAttribute("class", "booked_div");
        document.querySelector(".shop_list").append(big_div);

        let h2font = document.createElement("h2");
        h2font.innerHTML = "Booked Details";
        big_div.append(h2font);

        let shopname = document.createElement("p");
        shopname.setAttribute("class", "shop_text");
        shopname.innerHTML = shopBookedList[i]["booked_shop_name"];
        big_div.append(shopname);

        let ul = document.createElement("ul");
        big_div.append(ul);

        let text = document.createElement("li");
        text.setAttribute("class", "detail");
        text.innerText = shopBookedList[i]["booked_custom_name"];
        ul.append(text);

        let text_1 = document.createElement("li");
        text_1.setAttribute("class", "detail");
        text_1.innerText = shopBookedList[i]["booked_shop_date"];
        ul.append(text_1);

        let text_2 = document.createElement("li");
        text_2.setAttribute("class", "detail");
        text_2.innerText = shopBookedList[i]["booked_shop_time"];
        ul.append(text_2);

        let text_3 = document.createElement("li");
        text_3.setAttribute("class", "detail");
        text_3.innerText = shopBookedList[i]["booked_haircut"];
        ul.append(text_3);

        let text_4 = document.createElement("li");
        text_4.setAttribute("class", "detail");
        text_4.innerText = shopBookedList[i]["booked_shop_phone"];
        ul.append(text_4);

        let text_5 = document.createElement("li");
        text_5.setAttribute("class", "detail");
        text_5.innerText = shopBookedList[i]["booked_shop_address"];
        ul.append(text_5);

        let text_6 = document.createElement("li");
        text_6.setAttribute("class", "detail");
        text_6.innerText = shopBookedList[i]["booked_custom_otp"];
        ul.append(text_6);

        let donebtn = document.createElement("button");
        donebtn.setAttribute("class", "done_btn");
        donebtn.innerText = "Done";
        // donebtn.setAttribute(
        //   "onclick",
        //   "deleteCard(" + shopBookedList[i]["shop_haircut_id"] + ")"
        // );
        big_div.append(donebtn);
      }
    </script>
  </body>
</html>
