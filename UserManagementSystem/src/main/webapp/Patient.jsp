<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form with Multi-Color Loader</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-140%, -50%);
      display: flex;
      align-items: center;
      height: 100vh;
    }

    #login-container {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    #loader {
      display: none;
      text-align: center;
      margin-top: 20px;
    }

    #loader .segment {
      border-radius: 50%;
      width: 20px;
      height: 20px;
      margin: 4px;
      display: inline-block;
      animation: colorCycle 1.5s ease-in-out infinite;
    }

    @keyframes colorCycle {
      0%, 20% {
        background-color: #3498db;
      }
      40% {
        background-color: #e74c3c;
      }
      60% {
        background-color: #2ecc71;
      }
      80%, 100% {
        background-color: #f39c12;
      }
    }
  </style>
  
</head>
 <body style="background: url(img/index.jpg); background-size: cover; background-attachment: fixed;">


<div id="login-container">
  <h2>Patient Form !!</h2>
  <form id="loginForm" action="PatientServlet" method="post">
    <h3><label for="age">Age &emsp;&emsp;&emsp;&emsp;&emsp;:</label>
    <input type="number" id="age" name="age" required>
    <br><br>
    <label for="username">Name &emsp;&emsp;&emsp;&emsp;:</label>
    <input type="text" id="name" name="name" required>
	<br><br>
    <label for="email">Email &emsp;&emsp;&emsp;&emsp;:</label>
    <input type="email" id="email" name="email" required>
    <br><br>
    <label for="password">Gender &emsp;&emsp;&emsp;:</label>
    <input type="text" id="gender" name="gender" required>
    <br><br>
    <label for="password">Disease &emsp;&emsp;&emsp;:</label>
    <input type="text" id="disease" name="disease" required>
    <br><br>
    <label for="password">Address &emsp;&emsp;&emsp;:</label>
    <input type="text" id="address" name="address" required>
    <br><br>
    <label for="password">Phone no. &emsp;&emsp;:</label>
    <input type="text" id="phoneno" name="phoneno" required>
	<br><br>
	<label for="doctor">Doctor name &emsp;&emsp;&emsp;:&emsp; </label>
            <select  name="doctorname">
                <option value="Dr. Deshpande">Dr. Deshpande</option>
                <option value="Dr. Siddiqui">Dr. Siddiqui</option>
            </select>
	<br><br>
	<label for="appointmentdate">Appointment Date&emsp;&emsp;:</label>
	<input type="date" id="appointmentdate" name="appointmentdate" required>
	<br><br>
	
	
    <button type="Submit" onclick="submitForm()">Submit</button></h3>
    
    <a href="index.jsp">Logout</a>
        
  </form>

  <div id="loader">
    <div class="segment"></div>
    <div class="segment"></div>
    <div class="segment"></div>
    <div class="segment"></div>
    <div class="segment"></div>
    <div class="segment"></div>
    <div class="segment"></div>
  </div>
</div>

<script>
  function submitForm() {
    // Display loader
    document.getElementById('loader').style.display = 'block';

    // Simulate an asynchronous action (e.g., API call) with setTimeout
    setTimeout(function() {
      // Hide loader after the action is complete
      document.getElementById('loader').style.display = 'none';

      // You can add further actions here, e.g., validating login credentials
      alert('Request successful!');
    }, 4000); // Simulating a 2-second delay
  }
</script>

</body>
</html>
