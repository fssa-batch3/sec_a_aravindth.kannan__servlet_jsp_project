<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Assets/CSS/universe.css" />
    <link rel="stylesheet" href="../Assets/CSS/home_design.css" />
    <link rel="stylesheet" href="../Assets/CSS/about_us.css">
    <link rel="stylesheet" href="../Assets/CSS/contact_us.css">
    <title>customer home</title>
  </head>
  <body>
    <!-- header is started -->
    <jsp:include page="customer_header.jsp" />
    <!-- header is ended -->
    
    <!-- Logged in email -->
    <%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");
	
	if(loggedInEmail == null) {
		response.sendRedirect("customer_login.jsp");
	}
%>

   <!-- main hero is started -->
   
   <section class="hero_page">
    
    <div class="website-name">
      <p class="website-name-1">SHARP & CLEAN</p>
    </div>
    <div class="welcome-div">
      <p class="welcome-1">WELCOME</p>
    </div>
    <div class="service-font">
      <div class="service">
        <p class="service-font-1">We will provide the best haircut Service</p>
      </div>
    </div>
  </section>

    <section>
      <div class="about_us">
        <div class="about_info">
          <div>
            <h2>About us</h2>
          </div>
          <div>
            <p>
              Welcome to Sharp & Clean, where exceptional grooming meets unparalleled style. We are a dedicated team of skilled barbers committed to providing you with the finest grooming experience in Thoothukudi -08. Step into our barbershop, and allow us to take care of all your grooming needs with precision, passion, and a touch of old-fashioned charm.
    
          At Sharp & Clean, we believe that a great haircut is more than just a trim; it's an art form. Our team of experienced barbers brings years of expertise and a deep understanding of men's hairstyles and grooming trends. With their attention to detail and mastery of classic and contemporary cutting techniques, they will help you discover a look that perfectly complements your individual style and personality.
            </p>
          </div>
        </div>
        <div class="heroimgdiv">
          <img
            class="heroimg"
            src="../Assets/Images/about hero.jpg"
            alt="haircut"
          />
        </div>
      </div>
    </section>
    <section>
      <div class="online_booking">
        <div>
          <img
            src="../Assets/Images/book section.png"
            class="bookimg"
            alt="haircut"
          />
        </div>
        <div class="book">
          <h2>Welcome to the Sharp & Clean</h2>
          <p>
            Welcome to our sharp & clean, where grooming meets style and sophistication! We are delighted to have you here, and we can't wait to provide you with an exceptional grooming experience that will leave you looking and feeling your absolute best.
          </p>
          <a href="customer_book_now.jsp" class="bookbtn">Book now</a>
        </div>
      </div>
    </section>
    <section class="shop_sec">
      <div class="shop">
        <h2>Sharp & Clean Services</h2>
      </div>
   
    
      <div class="features">
        <div class="service_div">
          <img class="service_img"
            src="../Assets/Images/service 1.jpg"
            alt="haricut"
          />
        </div>
        <div class="all">
          <div class="service">
            <img
              src="../Assets/Images/service 2.png"
              alt="service"
              width="100px"
              height="100px"
            />
            <p>Hair Cut</p>
          </div>
          <div class="service">
            <img
              src="../Assets/Images/service 3.png"
              alt="service"
              width="100px"
              height="100px"
            />
            <p>Shaving</p>
          </div>
          <div class="service">
            <img
              src="../Assets/Images/service 4.png"
              alt="service"
              width="100px"
              height="100px"
            />
            <p>Beard Trim</p>
          </div>
          <div class="service">
            <img
              src="../Assets/Images/service 5.png"
              alt="service"
              width="100px"
              height="100px"
            />
            <p>Kid haircut</p>
          </div>
        </div>
      </div>
    </section>
    
    
    <div class="Our-works">
      <div class="works">
        <h2>Experience the Best Haircut & Shave Services</h2>
        <div>
          <img src="../Assets/Images/img 1.jpg" alt="Haircut image" class="free_img" />
          <img src="../Assets/Images/img 2.jpg" alt="Haircut image" class="free_img" />
          <img src="../Assets/Images/img 3.jpg" alt="Haircut image" class="free_img" />
          <img src="../Assets/Images/img 4.jpg" alt="Haircut image" class="free_img" />
          <img src="../Assets/Images/img 5.jpg" alt="Haircut image" class="free_img" />
          <img src="../Assets/Images/img 6.jpg" alt="Haircut image" class="free_img" />
        </div>
      </div>
    </div>
    </section>
    
    <section>
    <div class="review">
      <h2>Testimonials</h2>
      <p>We value our customers' feedback and strive to provide exceptional services that leave a lasting impression.<br> Visit our barber shop and experience the same level of satisfaction that our customers rave about.</p>
    </div> 
    <div class="fullcard" >
      <div class="reviewcard">
          <div class="flex">
            <img src="../Assets/Images/test.png" alt="designimg" height="60px" width="60px">
            <div class="flexin">
              <h3>
                John D.
              </h3>
              <img src="../Assets/Images/test 2.jpg" alt="tester" class="tester">
            </div>
        </div>
        <p>"I can't recommend this barber shop enough! The barbers are true professionals who take their time to understand exactly what you want."</p>
        <p> John D.</p>
      </div>
      <div class="reviewcard">
        <div class="flex">
          <img src="../Assets/Images/test.png" alt="designimg" height="60px" width="60px">
          <div class="flexin">
            <h3>
              Michael R.
            </h3>
            <img src="../Assets/Images/test 1.jpg" alt="tester" class="tester">
          </div>
        </div>
        <p>"I've been searching for a barber who can handle my unruly beard, and I finally found the perfect place. " </p>
        <p> Michael R.</p>
    </div>
    <div class="reviewcard">
      <div class="flex">
        <img src="../Assets/Images/test.png" alt="designimg" height="60px" width="60px">
        <div class="flexin">
          <h3>
            Sarah L.
          </h3>
          <img src="../Assets/Images/test 3.jpg" alt="tester" class="tester">
        </div>
    </div>
    <p>"Walking into this barber shop is like stepping back in time. The vintage decor and old-school charm create a fantastic ambiance.</p>
    <p>Sarah L.</p>
    </div>
    
    </div>
    </section>


    <!-- main hero is ended -->
    
    <div class="contact_us_sec">
      <h1 class="Contact_us_font">Contact us</h1>
      <div class="maincontent">
      <div class="con_img_div">
        <img class="big_img"
          src="../Assets/Images/contact.jpg"
          alt="haircut image"
        
        />
      </div>

      <div class="cont_container">
        <div class="cont_contact" id="cont_contact">
          <div class="cont_contact__title">Contact</div>
          <div class="cont_contact__content"  id="emailForm">
            <div class="cont_name_cnt">
              <input type="text" class="cont_name" id="cont_name" required />
              <label for="name">Full Name</label>
            </div>
            <div class="cont_email_cnt">
              <input type="email" class="cont_email" id="cont_email" required />
              <label for="email">Email Address</label>
            </div>
            <div class="cont_subject_cnt">
              <input
                type="text"
                class="cont_subject"
                id="cont_subject"
                required
              />
              <label for="subject">Subject</label>
            </div>
            <div class="cont_msg_ctn">
              <textarea
                name="msg"
                cols="30"
                rows="4"
                id="cont_msg"
                class="cont_msg"
                required
              ></textarea>
              <label for="msg" class="cont_msg_lbl">Message</label>
            </div>
            <button id="send_id" onclick="sende()" class="cont_btn">Send Message</button>
          </div>
        </div>
      </div>
    </div>
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

    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script src="../Assets/JS/contact_us.js">
      </script>


   
  </body>
</html>
