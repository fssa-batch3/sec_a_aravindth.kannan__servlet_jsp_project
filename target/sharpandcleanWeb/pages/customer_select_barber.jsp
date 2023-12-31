<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>select-barber</title>
    <link rel="stylesheet" href="../Assets/CSS/customer_select_barber.css" />

    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
  </head>
  <body>
    <jsp:include page="customer_header.jsp" />

     <!-- search bar  start-->
     <div class="search_bar_div">
      <input placeholder="Search here.." type="text" class="search_bar" id="search_bar_id"/>
    </div>
     <!-- search bar end-->
    <p class="big-font">Select Your Barber</p>

  
    <div class="all-content">
        <!-- barber card -->
      
    </div>
    <!-- footer start -->

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
   
   

    <!-- java script -->

    <script>
        // Java Script
      const select_barber_list = [];
      const barberCard = JSON.parse(localStorage.getItem("barber_card"));

      for (let i = 0; i < barberCard.length; i++) {
        select_barber_list.push(barberCard[i]);
      }

      for (i = 0; i < select_barber_list.length; i++) {
       

        let content = document.createElement("div");
        content.setAttribute("class", "card");
        document.querySelector(".all-content").append(content);

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
        profile.setAttribute("alt", select_barber_list[i]["barbername"]);
        profile.setAttribute("src", select_barber_list[i]["barber_photo"]);
        card_img_div.append(profile);

        let samples_div = document.createElement("div");
        samples_div.setAttribute("class", "projects");
        card_content.append(samples_div);

        let one_sample_div = document.createElement("div");
        one_sample_div.setAttribute("class", "project");
        samples_div.append(one_sample_div);

        let sample_1 = document.createElement("img");
        sample_1.setAttribute("alt", select_barber_list[i]["barbername"]);
        sample_1.setAttribute("src", select_barber_list[i]["barber_sample"]);
        one_sample_div.append(sample_1);

        let two_sample_div = document.createElement("div");
        two_sample_div.setAttribute("class", "project");
        samples_div.append(two_sample_div);

        let sample_2 = document.createElement("img");
        sample_2.setAttribute("alt", select_barber_list[i]["barbername"]);
        sample_2.setAttribute("src", select_barber_list[i]["barber_sample_1"]);
        two_sample_div.append(sample_2);

        let three_sample_div = document.createElement("div");
        three_sample_div.setAttribute("class", "project");
        samples_div.append(three_sample_div);

        let sample_3 = document.createElement("img");
        sample_3.setAttribute("alt", select_barber_list[i]["barbername"]);
        sample_3.setAttribute("src", select_barber_list[i]["barber_sample_2"]);
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
        barber_name.innerText = select_barber_list[i]["barbername"];
        name_div.append(barber_name);

        let buttons_div = document.createElement("div");
        buttons_div.setAttribute("class", "select");
        card_footer.append(buttons_div);

        let detail_btn = document.createElement("a");
        detail_btn.setAttribute("class", "select-button");
        detail_btn.setAttribute("href","./barber_detail_page.html?id=" + select_barber_list[i]["barberid"]);
        detail_btn.innerText = "Details";
        buttons_div.append(detail_btn);

        let select_btn = document.createElement("a");
        select_btn.setAttribute("class", "select-button");
        select_btn.setAttribute("href","./customer_booking_barber.html?id=" + select_barber_list[i]["barberid"]);
        select_btn.innerText = "Select";
        buttons_div.append(select_btn);

      }
  
    </script>
    <script src="../Assets/JS/search_br.js"></script>
  </body>
</html>
