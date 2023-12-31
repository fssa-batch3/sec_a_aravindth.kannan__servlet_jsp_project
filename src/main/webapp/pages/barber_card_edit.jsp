<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/barber_card_form.css" />
    <title>barber booking list</title>
  </head>
  <body>
  

    <!-- section is started -->
    <div class="head">
      <p class="head_text">Create Your Barber Card</p>
    </div>
    <form class="card_form" id="create_b_card">
      <div class="name">
        <label>Name</label>

        <div class="name-box">
          <input
          value="prakash"
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
        <button class="submit-1">Save</button>
      </div>
    </form>

    <!-- section is ended -->

    <!-- java script -->

    <script>
      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      const barberProfile = JSON.parse(localStorage.getItem("barber_profile"));
      // get object from local storage by email

      let oneBarber = barberProfile.find(function (event) {
        let oneBarberEmail = event["barber_email"];
        if (thisBarber == oneBarberEmail) {
          return true;
        }
      });

      // card java script (or) function
      const barberCardInfo = JSON.parse(localStorage.getItem("barber_card"));
      // store a email for verify!
      let barber_email = oneBarber["barber_email"];
      let barber_card = barberCardInfo.find(function (event) {
        let one_barber_card = event["barber_card_email"];
        if (barber_email == one_barber_card) {
          return true;
        }
      });

      //  set the value of that card for barber profile
      const cardbarberProfile = (document.getElementById("photo").value =
        barber_card["barber_photo"]);
      const cardbarberName = (document.getElementById("b_name").value =
        barber_card["barbername"]);
     
     
      const cardbarberSample_1 = (document.getElementById("sample").value =
        barber_card["barber_sample"]);
      const cardbarberSample_2 = (document.getElementById("sample_1").value =
        barber_card["barber_sample_1"]);
      const cardbarberSample_3 = (document.getElementById("sample_2").value =
        barber_card["barber_sample_2"]);

      //  get data from this form
      let checker = false;

      const barberCard = document.getElementById("create_b_card");

      barberCard.addEventListener("submit", function (event) {
        event.preventDefault();
       
       

        let barbername = document.getElementById("b_name").value;
        let barber_card_email = thisBarber;
          
        let barber_photo = document.getElementById("photo").value;
        
        let barber_sample = document.getElementById("sample").value;
        let barber_sample_1 = document.getElementById("sample_1").value;
        let barber_sample_2 = document.getElementById("sample_2").value;
        // create object for edit data
        let one_barber_card = {
          barbername,
          barber_card_email,
          barber_photo,
         
          barber_sample,
          barber_sample_1,
          barber_sample_2,
        };
        //  assign data in the correct object!
        let newData = JSON.parse(localStorage.getItem("barber_card"));

        let oldData = newData.find(i => i.barber_card_email == barber_card_email);
        if (oldData == undefined) {
          alert("Email id not match");
        } else {
          let updated = Object.assign(oldData, one_barber_card);
          let index = newData.indexOf(oldData.barber_card_email);
          newData[index] = updated;
          localStorage.setItem("barber_card", JSON.stringify(newData));
          alert("Successfully Barber card Edited");
          window.location.href = "./barber_profile.html";
        }
      });
    </script>
  </body>
</html>
