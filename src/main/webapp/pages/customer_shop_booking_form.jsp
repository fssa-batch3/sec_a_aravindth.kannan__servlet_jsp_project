<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.fssa.sharpandclean.service.exception.ServiceException"%>
<%@ page import="com.fssa.sharpandclean.service.SalonService"%>
<%@ page import="com.fssa.sharpandclean.model.Salon"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>booking-salon</title>
    <link
      rel="stylesheet"
      href="../Assets/CSS/customer_shop_booking_form.css"
    />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
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
    <jsp:include page="customer_header.jsp" />
    <!-- header finished -->
    <form action="SalonBookingServlet" method="post" id="booking" class="content-1">
    
    
    <input type="hidden" name="saloonId" value="<%=salon.getSalonId() %>"/>
      <div class="left-side">
        <div class="booking-shop">
          <p class="font">Booking Your Salon</p>
        </div>
        <% 
			String errorMessage = request.getParameter("error");
			if(errorMessage != null){
				%>
				<div class="styledbutton" id="styledbuttonlogin">
		    	   <%=errorMessage %><!-- this will change based on invalid field entered -->
		    	</div>
		    	<%
			}
		%>
         
        <div class="name">
          <p class="name-1">Your Name</p>
          <input
            name="bookUsername"
           
            id="shop_name"
            class="name-input"
            type="text"
            pattern="[A-Za-z0-9]+"
            title="Make sure that name should not contain space"
            required
          />
        </div>
        <div class="name">
        <p  class="name-1">Phone Number</p>
        

        <input required 
        name="bookUserPhone"
        
        pattern="[7-9]{1}[0-9]{9}" 
       title="Phone number with 7-9 and remaing 9 digit with 0-9"
        class="name-input" type="tel" id="phone_number"  />
      </div>
        
        <div class="select_div">
          <label class="name-1"> Select Service</label>
          <br />
          <select
            name="bookingservice"
            id="haircutid"
            class="all_service_drop_btn"
            required
          >
            <option>Haircut</option>
            <option>Hair Coloring</option>
            <option>Hair Straightning</option>
            <option>Beard Trim</option>
          </select>
        </div>
        <div class="phone">
          <p class="phone-1">Appointment Date</p>
          <input
          name="bookdate"
          onchange="checkDate()"
            id="customer_shop_date"
            class="phone-input"
            type="date"
            required
          />
        </div>

        <div class="phone">
          <p class="phone-1">Time Schedule</p>
          <select name="bookTime" id="shop_time" class="time_div">
            <option>08:00AM - 09:00AM</option>

            <option>10:00AM - 11:00AM</option>

            <option>12:00PM - 01:00PM</option>

            <option>02:00PM - 03:00PM</option>

            <option>04:00PM - 05:00PM</option>

            <option>06:00PM - 07:00PM</option>
          </select>
          <br />
          <button type="submit" id="next_btn" class="book" >Book Appointment</button>
        </div>
      </div>
      <div class="right-side">
      <div class="card">
          <div class="profile-card">
            <img
              id="card_profile"
              alt="shop image"
              class="img-responsive"
              src="<%= salon.getSalonURL() %>"
            />
            <div class="name_div">
              <h2 id="card_b_name" class="hvr-underline-from-center">
               <%= salon.getSalonName() %>
              </h2>
            </div>

            <div class="sample_text_div">
              <h2 class="hvr-underline-from-center">Sample haircuts</h2>
            </div>
            <div class="profile-info">
              <img
                id="card_sample_1"
                alt="haircutname"
                class="profile-pic"
                src="<%= salon.getSalonSample1() %>"
              />

              <img
                id="card_sample_2"
                alt="haircutname"
                class="profile-pic"
                src="<%= salon.getSalonSample2() %>"
              />

              <img
                id="card_sample_3"
                alt="haircutname"
                class="profile-pic"
                src="<%= salon.getSalonSample3() %>"  />
            </div>
		
          </div>
        </div>
      <!-- salon card here -->
      </div>
    </form>
   


  </body>
</html>
