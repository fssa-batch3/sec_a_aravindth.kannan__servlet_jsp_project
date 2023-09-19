<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page
	import="com.fssa.sharpandclean.service.exception.ServiceException"%>
<%@ page import="com.fssa.sharpandclean.service.SalonService"%>
<%@ page import="com.fssa.sharpandclean.model.Salon"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>shop detail page</title>
    <link rel="stylesheet" href="../Assets/CSS/shop_detail.css" />
  </head>
  <body>
  
  <%
		int salon_id = Integer.parseInt(request.getParameter("salonId"));

		SalonService salonService = new SalonService();
		Salon salon = null;

		try {
			salon = salonService.getSalonBySalonId(salon_id);
		} catch (ServiceException e) {
			// Handle the exception appropriately, e.g., display an error message to the user or log it
			out.println("Error: " + e.getMessage());
		}
		%>
    <div class="full_content">
      <!-- card side start -->
      <div class="card_and_profile_div">
        <div class="profile">
          <img class="photo" src="<%= salon.getSalonURL() %>" id="photo" alt="shop card profile"/>
          <div class="right_side">
            <p class="text">Scissor Masters</p>
            <br />
            <p class="text">Official shops</p>
          </div>
        </div>

        <div class="information">
          <div class="input_div">
            <label class="label">Shop Name </label>
            <br />
            <input value="<%= salon.getSalonName() %>" class="input" type="text" id="shop_name" disabled />
          </div>

          <div class="input_div">
            <label class="label">Shop experience </label>
            <br />
            <input value="<%= salon.getSalonExperience() %>" class="input" type="text" id="shop_experience" disabled />
          </div>
          <div class="input_div">
            <label class="label"> Shop Area </label>
            <br />
            <input value="<%= salon.getSalonArea() %>" class="input" type="text" id="shop_slogan" disabled />
          </div>
          <div class="input_div">
            <label class="label"> Shop phone </label>
            <br />
            <input value="<%= salon.getSalonPhone() %>" class="input" type="text" id="shop_haircut_price" disabled />
          </div>

          <div class="big_input_div">
            <label class="label"> Shop address </label>
            <br />
            <input value="<%= salon.getSalonAddress() %>" class="big_input" type="text" id="shop_address" disabled />
          </div>
          <div class="big_input_div">
            <label class="label">About shop </label>
            <br />
            <input value="<%=salon.getSalonAbout() %>" class="big_input" type="text" id="shop_about_id" disabled />
          </div>

          <div class="three_buttons">
            <a class="create_card" href="./customer_select_shop.html">back</a>
            <!-- <a href="./customer_shop_booking_form.html" id="delete_shop" class="create_card">Select</a> -->
          </div>
        </div>
      </div>

      <!-- samples of that shop -->
      <div class="all_haircuts">
        <p class="samples">Shop's sample haircuts</p>
        <div class="about_shop">
        
        </div>
      </div>
      
      <!-- samples of that shop -->
    </div>

    <!-- java script start -->
    <script>
      let url = location.search;
      let prams = new URLSearchParams(url);
      let id = prams.get("id");

      //   get data from localstorage
      const oneShopCard = JSON.parse(localStorage.getItem("shop_card")).find(
        e => e.shop_card_id == id
      );
      //   get data from localstorage
      const oneShop = JSON.parse(localStorage.getItem("shopinfo")).find(
        event => event.shop_email == oneShopCard["shop_card_email"]
      );

      const shopPhoto = document
        .getElementById("photo")
        .setAttribute("src", oneShop["shop_photo"]);
      const shopName = (document.getElementById("shop_name").value =
        oneShop["shop_name"]);

      const shopExperience = (document.getElementById("shop_experience").value =
        oneShop["shop_experience"]);
      const shopSlogan = (document.getElementById("shop_slogan").value =
        oneShop["shop_slogan"]);

      const shopAddress = (document.getElementById("shop_address").value =
        oneShop["shop_address"]);
      const shopprice = (document.getElementById("shop_haircut_price").value =
        oneShop["shop_price"]);
      const shopAbout = (document.getElementById("shop_about_id").value =
        oneShop["shop_about"]);

      //  that shop's all haircuts

      const oneShopHaircuts = JSON.parse(
        localStorage.getItem("shop_newhaircuts")
      );

      let one_email_haircuts_array = oneShopHaircuts.filter(
        F => F.shop_haircut_email == oneShopCard["shop_card_email"]
      );

      console.log(one_email_haircuts_array);

      for (let i = 0; i < one_email_haircuts_array.length; i++) {
        let big_div = document.createElement("div");
        big_div.setAttribute("class", "haircut_card");
        document.querySelector(".about_shop").append(big_div);

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
      }
    </script>
  </body>
</html>
