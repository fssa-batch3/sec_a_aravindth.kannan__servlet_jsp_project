<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page
	import="com.fssa.sharpandclean.service.exception.ServiceException"%>
<%@ page import="com.fssa.sharpandclean.service.BarberService"%>
<%@ page import="com.fssa.sharpandclean.model.Barber"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/barber_profile.css" />
    <title>barber profile</title>
  </head>
  <body>
  
  <%
	String loggedInEmail = (String)session.getAttribute("loggedInEmail");
	
	if(loggedInEmail == null) {
		response.sendRedirect("barber_login.jsp");
	}
	
	BarberService barberService = new BarberService();
	Barber barber = null;

	try {
		barber = barberService.getBarberByEmail(loggedInEmail);
	} catch (ServiceException e) {
		// Handle the exception appropriately, e.g., display an error message to the user or log it
		out.println("Error: " + e.getMessage());
	}
%>
    <!-- header is started -->
    <jsp:include page="barber_header.jsp" />
    <!-- header is ended -->

	
    <!-- section is started -->
    <div class="full_content">
      <div class="photo_div">
        <div class="site_name_div">
          <p class="site_name">Sharp & Clean</p>

          <p class="barber_text">Official barber</p>
        </div>
        <div class="profile">
          <img src="<%= barber.getBarberProfile() %>" class="photo" id="b_photo" alt="barber profile photo" />
        </div>

        <div class="primary_information_div">
          <fieldset class="field_div">
            <legend class="label">Barber Name </legend>
            <input value="<%= barber.getBarberName() %>" class="input_two" type="text" id="barber_name" disabled />
          </fieldset>
          <fieldset class="field_div">
            <legend class="label">Phone Number  </legend>
            <input value="<%= barber.getBarberPhone() %>" class="input_two" type="text" id="phone_number" disabled />
          </fieldset>
        </div>

        <div class="two_buttons">
          <a class="p_edit" href="./barber_profile_edit.html">Edit Profile</a>
          <a href="BarberLogoutServlet" id="delete_barber" class="p_edit">Logout</a>
        </div>
      </div>
      <!-- left side end -->

      <div class="information">
        <div class="right_head">
          <p>Barber Information</p>
        </div>

        <fieldset class="input_div">
          <legend class="label_full_details">Barber Experience </legend>
          <input value="<%= barber.getBarberExperience() %>" class="input" type="text" id="experience" disabled />
        </fieldset>
        <fieldset class="input_div">
          <legend class="label_full_details">Barber Email </legend>
          <input value="<%= barber.getBarberEmail() %>" class="input" type="text" id="slogan" disabled />
        </fieldset>

        <fieldset class="input_div_add">
          <legend class="label_full_details">Barber Address </legend>
          <input value="<%= barber.getBarberAddress() %>" class="input" type="text" id="address" disabled />
        </fieldset>
        <fieldset class="input_div_add">
          <legend class="label_full_details">About Barber </legend>
          <input value="<%= barber.getBarberAbout() %>" class="input" type="text" id="barber_about_id" disabled />
        </fieldset>

        <!-- your card -->

        <div class="card_text_div">
          <p class="Your_card">Your Barber Card</p>
        </div>

        <!-- full card details -->

        <div class="card">
          <div class="card-header">
            <h3>Sample Haircuts</h3>
          </div>

          <div class="card-content">
            <div class="card-img">
              <img
                alt="Barber profile"
                id="card_profile"
                src="<%= barber.getBarberProfile() %>"
              />
            </div>
            <div class="projects">
              <div class="project">
                <img
                  alt="sample haircut"
                  id="card_sample_1"
                  src="<%= barber.getSample_1() %>"
                />
              </div>

              <div class="project">
                <img
                  alt="sample haircut"
                  id="card_sample_2"
                  src="<%= barber.getSample_2() %>"
                />
              </div>

              <div class="project">
                <img
                  alt="sample haircut"
                  id="card_sample_3"
                  src="<%= barber.getSample_3() %>"
                />
              </div>
            </div>
          </div>

          <div class="card-footer">
            <div class="profile-group">
              <div class="name">Name</div>
              <div id="card_b_name" class="job"><%= barber.getBarberName() %></div>
            </div>
            <div class="select">
              <button id="card_details" class="detail">Details</button>
              <a href="./booking-barber.html" class="select-button">Select</a>
            </div>
          </div>
        </div>

        <!-- card end -->
        <div class="three_buttons">
          <a href="./barber_card_edit.html" class="create_card">Edit card</a>
          <button class="edit_card" id="delete_card">delete card</button>
        </div>
      </div>
    </div>

    <!-- add more haircut designs -->

    <div class="all_haircut_designs">
      <div class="form_div">
        <p>Add more haircuts</p>
        <form id="add_form" method="post" action="CreateStyleServlet" class="add_style_form">
          <div class="small_form_div">
            <label class="label">Haircut name</label>

            <br />
            <input
            name="haircutName"
            value="fire coloring"
              required
              pattern="[A-Z a-z]{1,32}"
              title="Make sure that name should space"
              id="style_name"
              class="name-box-1"
              type="text"
              autocomplete="name"
            />
          </div>
          <div class="small_form_div">
            <label class="label"> Select service</label>
            <br />
            <select name="haircutType" id="type_id" class="name-box-1" required>
              <option>Haircut</option>
              <option>Hair coloring</option>
              <option>Hair straitning</option>
              <option>Facials</option>
              <option>Shaves</option>
              <option>Beard trim</option>
            </select>
          </div>

          <div class="small_form_div">
            <label class="label">Description</label>

            <br />
            <input
            name="haircutAbout"
            value="This type coloring is going trending now. In this service we use fire to coloring your hair."
              required
              id="style_para"
              class="name-box-1"
              type="text"
              autocomplete="name"
            />
          </div>

          <div class="small_form_div">
            <label class="label">Haircut photo</label>
            <br />
            <input required name="haircutURL" class="name-box-1" type="url" id="design_photo" />
          </div>
          <div class="three_buttons">
            <button class="submit_1">Submit</button>
          </div>
        </form>
      </div>

      <div class="haircuts"></div>
    </div>
    
    

    <!-- section is ended -->

    <!-- footer is started -->
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
        <br />
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
    <!-- footer is ended -->

    <!-- Java Script -->

    
  </body>
</html>
