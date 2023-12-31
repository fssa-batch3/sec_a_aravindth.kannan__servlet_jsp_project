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

    <!-- section is started -->
    <div class="head">
      <p class="head_text">Edit Your Shop Card</p>
    </div>
    <form class="card_form" id="edit_s_card">
      <div class="name">
        <label>Name</label>

        <div class="name-box">
          <input
          value="scissormaster"
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
      const shopInfo = JSON.parse(localStorage.getItem("shopinfo"));
      // get object from local storage by email

      let oneShop = shopInfo.find(function (event) {
        let oneShopEmail = event["shop_email"];
        if (thisBarber == oneShopEmail) {
          return true;
        }
      });
    //   card java script (or) function
      const shopCard = JSON.parse(localStorage.getItem("shop_card"));
    //   store a email for verify!
      let shop_email = oneShop["shop_email"];

      let edit_shop_card = shopCard.find(function (event){
        let one_shop_email = event["shop_card_email"];
        if(shop_email == one_shop_email){
            return true;
        }
      })
    // set the value of that card for barber profile
        const shopName = document.getElementById("b_name").value = edit_shop_card["shop_card_name"];
        const shopPhoto = document.getElementById("photo").value = edit_shop_card["shop_card_photo"];
        const shopSample = document.getElementById("sample").value = edit_shop_card["shop_sample"];
        const shopSample_1 = document.getElementById("sample_1").value = edit_shop_card["shop_sample_1"];
        const shopSample_2 = document.getElementById("sample_2").value = edit_shop_card["shop_sample_2"];  
    // get data from this form

        let checker = false;

        const editCard = document.getElementById("edit_s_card");

        editCard.addEventListener("submit",function (event){
            event.preventDefault();

        let shop_card_name = document.getElementById("b_name").value;
        let shop_card_email = thisBarber;
        let shop_card_photo = document.getElementById("photo").value;
        let shop_sample = document.getElementById("sample").value;
        let shop_sample_1 = document.getElementById("sample_1").value;
        let shop_sample_2 = document.getElementById("sample_2").value;
    //   create object for edit data
        let one_shop_card = {
          shop_card_name,
          shop_card_email,
          shop_card_photo,
          shop_sample,
          shop_sample_1,
          shop_sample_2,
        };

        //  assign data in the correct object!
        let newData = JSON.parse(localStorage.getItem("shop_card"));

        let oldData = newData.find(i => i.shop_card_email == shop_card_email);
        if (oldData == undefined) {
          alert("Email id not match");
        } else {
          let updated = Object.assign(oldData, one_shop_card);
          let index = newData.indexOf(oldData.shop_card_email);
          newData[index] = updated;
          localStorage.setItem("shop_card", JSON.stringify(newData));
          alert("Successfully shop card edited");
          window.location.href = "./shop_profile.html";
        }
    })

    </script>
  </body>
</html>
