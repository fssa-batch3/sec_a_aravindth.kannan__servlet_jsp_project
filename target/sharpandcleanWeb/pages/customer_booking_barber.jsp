<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>booking barber</title>
    <link rel="stylesheet" href="../Assets/CSS/customer_booking_barber.css" />
  </head>
  <body>
    <div class="content-1">
      <div class="left-side"></div>
      <div class="right-side">
        <div class="img-div">
          <label class="phone"> Your name</label>
          <br />
          <input
            value="aravindth"
            pattern="[A-Za-z0-9]+"
            title="Make sure that name should not contain space"
            id="cus_name"
            class="name-input"
            type="text"
            required
          />
          <br />
          <br />
          <label class="phone"> Phone number</label>
          <br />
          <input
            value="9887654387"
            pattern="[7-9]{1}[0-9]{9}"
            title="Phone number with 7-9 and remaing 9 digit with 0-9"
            id="cus_number"
            class="name-input"
            type="number"
            required
          />
          <br />
          <br />
          <label class="phone">Fill your address</label>
          <br />
          <input
            value="3/24, East street, A.kumara puram, kurukkusalai, thoothukudi-05"
            id="cus_address"
            class="name-input"
            type="text"
            required
          />
          <br />
          <br />
          <label class="phone">Date</label>
          <br />
          <input
            onchange="checkDate()"
            id="cus_date"
            class="name-input"
            type="date"
            required
          />
          <br />
          <br />
          <label class="phone">Select service</label>
          <br />
          <select name="service" id="serviceid" class="name-input" required>
            <option>Haircut</option>
            <option>Hair coloring</option>
            <option>Hair straightning</option>
            <option>Facials</option>
            <option>Shaves</option>
            <option>Beard trim</option>
          </select>
          <br />
          <br />
          <label class="phone">Time Schedule</label>
          <br />
          <select id="select_time" class="name-input">
            <option class="time_anker">08:00Am - 09:00Am</option>

            <option class="time_anker">10:00Am - 11:00Am</option>

            <option class="time_anker">12:00Pm - 01:00Pm</option>

            <option class="time_anker">02:00Pm - 03:00Pm</option>

            <option class="time_anker">04:00Pm - 05:00Pm</option>

            <option class="time_anker">06:00Pm - 07:00Pm</option>
          </select>
          <br />
          <br />

          <div class="book-1">
            <button id="next_btn" class="book">Next</button>
          </div>
        </div>
      </div>
    </div>
    <script>
      // date valitation  function.
      function checkDate() {
        let selectedText = document.getElementById("cus_date").value;
        let selectedDate = new Date(selectedText);
        let now = new Date();
        if (selectedDate < now) {
          alert("Date must be in the future");
        }
      }
    </script>

    <script>
      // java script
      let url = location.search;
      let prams = new URLSearchParams(url);
      let id = prams.get("id");

      // gte data from localstorage

      const oneBarberCard = JSON.parse(
        localStorage.getItem("barber_card")
      ).find(e => e.barberid == id);

      let content = document.createElement("div");
      content.setAttribute("class", "card");
      document.querySelector(".left-side").append(content);

      let card_head_div = document.createElement("div");
      card_head_div.setAttribute("class", "card-header");
      content.append(card_head_div);

      let card_head = document.createElement("h3");
      card_head.innerText = "Sample haircuts";
      card_head_div.append(card_head);

      let card_content = document.createElement("div");
      card_content.setAttribute("class", "card-content");
      content.append(card_content);

      let card_img_div = document.createElement("div");
      card_img_div.setAttribute("class", "card-img");
      card_content.append(card_img_div);

      let profile = document.createElement("img");
      profile.setAttribute("alt", oneBarberCard["barbername"]);
      profile.setAttribute("src", oneBarberCard["barber_photo"]);
      card_img_div.append(profile);

      let samples_div = document.createElement("div");
      samples_div.setAttribute("class", "projects");
      card_content.append(samples_div);

      let one_sample_div = document.createElement("div");
      one_sample_div.setAttribute("class", "project");
      samples_div.append(one_sample_div);

      let sample_1 = document.createElement("img");
      sample_1.setAttribute("alt", oneBarberCard["barbername"]);
      sample_1.setAttribute("src", oneBarberCard["barber_sample"]);
      one_sample_div.append(sample_1);

      let two_sample_div = document.createElement("div");
      two_sample_div.setAttribute("class", "project");
      samples_div.append(two_sample_div);

      let sample_2 = document.createElement("img");
      sample_2.setAttribute("alt", oneBarberCard["barbername"]);
      sample_2.setAttribute("src", oneBarberCard["barber_sample_1"]);
      two_sample_div.append(sample_2);

      let three_sample_div = document.createElement("div");
      three_sample_div.setAttribute("class", "project");
      samples_div.append(three_sample_div);

      let sample_3 = document.createElement("img");
      sample_3.setAttribute("alt", oneBarberCard["barbername"]);
      sample_3.setAttribute("src", oneBarberCard["barber_sample_2"]);
      three_sample_div.append(sample_3);

      let card_footer = document.createElement("div");
      card_footer.setAttribute("class", "card-footer");
      content.append(card_footer);

      let name_div = document.createElement("div");
      name_div.setAttribute("class", "profile-group");
      card_footer.append(name_div);

      let name_text = document.createElement("div");
      name_text.setAttribute("class", "name");
      name_text.innerText = "Name";
      name_div.append(name_text);

      let barber_name = document.createElement("div");
      barber_name.setAttribute("class", "job");
      barber_name.innerText = oneBarberCard["barbername"];
      name_div.append(barber_name);

      let buttons_div = document.createElement("div");
      buttons_div.setAttribute("class", "select");
      card_footer.append(buttons_div);

      let detail_btn = document.createElement("a");
      detail_btn.setAttribute("class", "select-button");
      detail_btn.innerText = "Details";
      buttons_div.append(detail_btn);

      let select_btn = document.createElement("a");
      select_btn.setAttribute("class", "select-button");
      select_btn.innerText = "Select";
      buttons_div.append(select_btn);

      // get data from booking form.
      let checker = false;
      const book = document.getElementById("next_btn");
      book.addEventListener("click", function (e) {
        e.preventDefault();

        let bookNew = [];
        if (localStorage.getItem("barberBookInfo") != null) {
          bookNew = JSON.parse(localStorage.getItem("barberBookInfo"));
        }
        const cusAddress = document.getElementById("cus_address").value.trim();
        const selectHaircut = document.getElementById("serviceid").value.trim();
        const barberDate = document.getElementById("cus_date").value.trim();
        const cusPhone = document.getElementById("cus_number").value.trim();
        const barberTime = document.getElementById("select_time").value.trim();
        const barberName = oneBarberCard["barbername"];
        const customerName = document.getElementById("cus_name").value.trim();
        const barberBookId = Date.now();

        let barber_book_date = {
          book_cus_address: cusAddress,
          book_cus_phone: cusPhone,
          barber_book_name: barberName,
          barber_book_card_id: oneBarberCard["barberid"],
          barber_book_customer_name: customerName,
          select_barber_Haircut: selectHaircut,
          barber_book_date: barberDate,
          barber_book_time: barberTime,
          barber_book_id: barberBookId,
        };

        for (let i = 0; i < bookNew.length; i++) {
          if (
            barberTime == bookNew[i].barber_book_time &&
            barberDate == bookNew[i].barber_book_date &&
            barberName == bookNew[i].barber_book_name
          ) {
            checker = true;
            alert("This date and time is already booked");
            break;
          } else {
            checker = false;
          }
        }
        if (checker === false) {
          bookNew.push(barber_book_date);
          const stringArray = JSON.stringify(bookNew);
          localStorage.setItem("barberBookInfo", stringArray);
          window.location.href =
            "./customer_barber_booking_payment.html?id=" + barberBookId;
        }
      });
    </script>
  </body>
</html>
