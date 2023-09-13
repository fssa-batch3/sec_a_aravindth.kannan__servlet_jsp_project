<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>booking-shop</title>
    <link
      rel="stylesheet"
      href="../Assets/CSS/customer_shop_booking_form.css"
    />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
  </head>
  <body>
    <jsp:include page="customer_header.jsp" />
    <!-- header finished -->
    <form id="booking" class="content-1">
      <div class="left-side">
        <div class="booking-shop">
          <p class="font">Booking Your Shop</p>
        </div>
        <div class="name">
          <p class="name-1">Your name</p>
          <input
            value="kavi"
            id="shop_name"
            class="name-input"
            type="text"
            pattern="[A-Za-z0-9]+"
            title="Make sure that name should not contain space"
            required
          />
        </div>
        <div class="select_div">
          <label class="name-1"> Select service</label>
          <br />
          <select
            name="service"
            id="haircutid"
            class="all_service_drop_btn"
            required
          >
            <option>Haircut</option>
            <option>Hair coloring</option>
            <option>Hair straightning</option>
            <option>Facials</option>
            <option>Shaves</option>
            <option>Beard trim</option>
          </select>
        </div>
        <div class="phone">
          <p class="phone-1">Date</p>
          <input
          onchange="checkDate()"
            id="customer_shop_date"
            class="phone-input"
            type="date"
            required
          />
        </div>

        <div class="phone">
          <p class="phone-1">Time Schedule</p>
          <select id="shop_time" class="time_div">
            <option>08:00Am - 09:00Am</option>

            <option>10:00Am - 11:00Am</option>

            <option>12:00Pm - 01:00Pm</option>

            <option>02:00Pm - 03:00Pm</option>

            <option>04:00Pm - 05:00Pm</option>

            <option>06:00Pm - 07:00Pm</option>
          </select>
          <br />
          <button id="next_btn" class="book">Next</button>
        </div>
      </div>
      <div class="right-side"></div>
    </form>

    <script>
            // date valitation  function.
            function checkDate() {
      let selectedText = document.getElementById("customer_shop_date").value;
      let selectedDate = new Date(selectedText);
      let now = new Date();
      if (selectedDate < now) {
        alert("Date must be in the future");
      }
    } 
    </script>

    <script>
      let url = location.search;
      let prams = new URLSearchParams(url);
      let id = prams.get("id");

      //   get data from localstorage
      const oneShopCard = JSON.parse(localStorage.getItem("shop_card")).find(
        e => e.shop_card_id == id
      );

      let content = document.createElement("div");
      content.setAttribute("class", "container");

      let profile_card = document.createElement("div");
      profile_card.setAttribute("class", "profile-card");
      content.append(profile_card);

      let shop_image = document.createElement("img");
      shop_image.setAttribute("class", "img-responsive");
      shop_image.setAttribute("alt", oneShopCard["shop_card_name"]);
      shop_image.setAttribute("src", oneShopCard["shop_card_photo"]);
      profile_card.append(shop_image);

      let name_div = document.createElement("div");
      name_div.setAttribute("class", "name_div");
      profile_card.append(name_div);

      let name = document.createElement("h2");
      name.setAttribute("class", "hvr-underline-from-center");
      name.innerText = oneShopCard["shop_card_name"];
      name_div.append(name);

      let sample_div = document.createElement("div");
      sample_div.setAttribute("class", "sample_text_div");
      profile_card.append(sample_div);

      let sample_text = document.createElement("h2");
      sample_text.setAttribute("class", "hvr-underline-from-center");
      sample_text.innerText = "Sample haircuts";
      sample_div.append(sample_text);

      let sample_img_div = document.createElement("div");
      sample_img_div.setAttribute("class", "profile-info");
      profile_card.append(sample_img_div);

      let sample_image = document.createElement("img");
      sample_image.setAttribute("class", "profile-pic");
      sample_image.setAttribute("src", oneShopCard["shop_sample"]);
      sample_image.setAttribute("alt", oneShopCard["shop_card_name"]);
      sample_img_div.append(sample_image);

      let sample_image_1 = document.createElement("img");
      sample_image_1.setAttribute("class", "profile-pic");
      sample_image_1.setAttribute("src", oneShopCard["shop_sample_1"]);
      sample_image_1.setAttribute("alt", oneShopCard["shop_card_name"]);
      sample_img_div.append(sample_image_1);

      let sample_image_2 = document.createElement("img");
      sample_image_2.setAttribute("class", "profile-pic");
      sample_image_2.setAttribute("src", oneShopCard["shop_sample_2"]);
      sample_image_2.setAttribute("alt", oneShopCard["shop_card_name"]);
      sample_img_div.append(sample_image_2);

      let select_div = document.createElement("div");
      select_div.setAttribute("class", "two_btn_div");
      profile_card.append(select_div);

      let detail_btn = document.createElement("a");
      detail_btn.setAttribute("class", "select_btn");
      detail_btn.innerText = "Details";
      select_div.append(detail_btn);

      let select_btn = document.createElement("a");
      select_btn.setAttribute("class", "select_btn");
      select_btn.innerText = "Select";
      select_div.append(select_btn);

      document.querySelector(".right-side").append(content);

      // get data from booking form.
      let checker = false;
      const book = document.getElementById("booking");
      book.addEventListener("submit", function (e) {
        e.preventDefault();

        let bookNew = [];
        if (localStorage.getItem("shopBookInfo") != null) {
          bookNew = JSON.parse(localStorage.getItem("shopBookInfo"));
        }
        const selectHaircut = document.getElementById("haircutid").value.trim();
        const shopDate = document
          .getElementById("customer_shop_date")
          .value.trim();
     
        const shopTime = document.getElementById("shop_time").value.trim();
        const shopName = oneShopCard["shop_card_name"];
        const customerName = document.getElementById("shop_name").value.trim();
        const shopBookId = Date.now();

        let shop_book_data = {
          shop_book_name: shopName,
          shop_book_card_id: oneShopCard["shop_card_id"],
          shop_book_customer_name: customerName,
          select_shop_Haircut: selectHaircut,
          shop_book_date: shopDate,
          shop_book_time: shopTime,
          shop_book_id: shopBookId,
        };

        for (let i = 0; i < bookNew.length; i++) {
          if (
            shopTime == bookNew[i].shop_book_time &&
            shopDate == bookNew[i].shop_book_date &&
            shopName == bookNew[i].shop_book_name
          ) {
            checker = true;
            alert("This date and time is already booked");
            break;
          } else {
            checker = false;
          }
        }
        if (checker === false) {
          bookNew.push(shop_book_data);
          const stringArray = JSON.stringify(bookNew);
          localStorage.setItem("shopBookInfo", stringArray);
          window.location.href =
            "./customer_shop_booking_payment.html?id=" + shopBookId;
        }
      });
    </script>
  </body>
</html>
