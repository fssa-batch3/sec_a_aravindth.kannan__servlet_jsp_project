<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/barber_card_form.css" />
    <title>barber profile edit</title>
  </head>
  <body>
    <form class="card_form" id="E_form">
      <div class="name">
        <label>Name</label>
        <div class="name-box">
          <input
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
          class="name-box-1" type="url" id="b_photo" />
        </div>
      </div>
      <div class="email">
        <label>Slogan</label>
        <div class="address-box">
          <input 
          required
          pattern="[A-Za-z0-9]+"
          title="Make sure that name should not contain space"
          class="name-box-1" type="text" id="b_slogan" />
        </div>
      </div>
      <div class="email">
        <label>Phone</label>
        <div class="address-box">
          <input 
          required
          class="name-box-1" type="number" id="b_phone_number" />
        </div>
      </div>
      <div class="experience">
        <label>Experience</label>
        <div class="address-box">
          <input 
          required
          pattern="[A-Za-z0-9]+"
          title="Make sure that name should not contain space"
          class="name-box-1" type="text" id="b_experience" />
        </div>
      </div>  
          <div class="all_inputs">
            <label class="all_label">Address</label>
            <br />
            <br />
            <textarea 
            required
            pattern="[A-Za-z0-9]+"
            title="Make sure that name should not contain space"
            id="b_address" class="name-box-1" name="address" rows="5" cols="50"></textarea>
          </div>

          <div class="all_inputs">
            <label class="all_label">About</label>
            <br />
            <br />
            <textarea 
            required
            pattern="[A-Za-z0-9]+"
            title="Make sure that name should not contain space"
            id="about" class="name-box-1" name="address" rows="5" cols="50"></textarea>
          </div>
      <div class="submit">
        <button class="submit-1">Save</button>
      </div>
    </form>


    <!-- javav-script -->

    <script>
      // Java Script
      const thisBarber = JSON.parse(localStorage.getItem("single_barber"));
      const barberProfileArray = JSON.parse(localStorage.getItem("barber_profile"));
         // get object from local storage by email

      let oneBarber = barberProfileArray.find(function (event) {
        let oneBarberEmail = event["barber_email"];
        if (thisBarber == oneBarberEmail) {
          return true;
        }
      });

     
         // show data from local storage!
        const barberName = document.getElementById("b_name").value = oneBarber["barbername"]
        const phoneNumber = document.getElementById("b_phone_number").value = oneBarber["barber_phone"]
        const barberProfile = document.getElementById("b_photo").value = oneBarber["barber_photo"]
        const barberSlogan = document.getElementById("b_slogan").value = oneBarber["barber_slogan"]
        const barberExperience = document.getElementById("b_experience").value = oneBarber["barber_experience"]
        const barberAddress = document.getElementById("b_address").value = oneBarber["barber_address"]
        const barberAbout = document.getElementById("about").value = oneBarber["barber_about"]
        

         // edit page function!

        let save = document.getElementById("E_form");

        save.addEventListener("submit",function(event){
            event.preventDefault();

         // get data from edit form!

            let barbername = document.getElementById("b_name").value;
            let barber_phone = document.getElementById("b_phone_number").value;
            let barber_photo = document.getElementById("b_photo").value;
            let barber_slogan = document.getElementById("b_slogan").value;
            let barber_experience = document.getElementById("b_experience").value;
            let barber_address = document.getElementById("b_address").value;
            let barber_about = document.getElementById("about").value;
            let barber_email = thisBarber;
            
            var regex = /^[6789]{1}[0-9]{9,15}$/;
    if (regex.test(barber_phone)) {
      console.log("Valid phone number!");
    } else {
      alert("Phone number is invalid kindly change your number");
      return;
    }
        //  some errors in this step
            let editBarberData = {
                barbername,
                barber_email,
                barber_phone,
                barber_photo,
                barber_slogan,
                barber_experience,
                barber_address,
                barber_about,
            };

         // email validation!

                let newData = JSON.parse(localStorage.getItem("barber_profile"));

          
                let oldData = newData.find(i => i.barber_email == barber_email);

                if(oldData == undefined) {
                    alert("Email Id not match");
                }

         // assign the value in object!
                else {
                    let updated = Object.assign(oldData, editBarberData);
                    let index = newData.indexOf(oldData.barber_email);
                    newData[index] = updated;
                    localStorage.setItem("barber_profile", JSON.stringify(newData));
                    alert("Successfully barber profile edited");
                    window.location.href = "./barber_profile.html";
                }
           
       
        });

       
    </script>
  
   
  </body>
</html>
