<%@page import= "java.util.List" %> 
<%@page import= "org.hibernate.*" %> 
<%@page import= "com.helper.FactoryProvider" %> 
<%@page import= "com.Entities.*" %>  


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinic Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #4CAF50;
            padding: 15px;
            text-align: center;
            color: white;
        }

        nav {
            background-color: #333;
            padding: 10px;
        }

        nav a {
            text-decoration: none;
            color: white;
            padding: 10px;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: #555;
        }

        section {
            padding: 20px;
        }

        form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }

        input, select, button {
            margin-bottom: 10px;
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .appointment-list {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .appointment {
            margin-bottom: 15px;
        }

        .appointment h3 {
            margin: 0;
        }

        .appointment p {
            margin: 5px 0;
        }
    </style>
    
</head>
<body>

    <header>
        <h1>Clinic Management System</h1>
    </header>

    <nav>
        <a href="Doctor.jsp">Home</a>
        <a href="Appointments.jsp">Appointments</a>
        <a href="approval.jsp">Approval</a>
        <a href="Report.jsp">Report</a>
        <a href="index.jsp">Logout</a>
    </nav>

    <section>
    
    <div class="container">
  <br>
  <h1 class="text-uppercase">All Patients:</h1>
  
  <div class="row">
  <div class="col-12">
	 
  
  </div>
  
  </div>
   
  
</div>
            
             <% 
	  Session s=FactoryProvider.getFactory().openSession();
	  Query q=s.createQuery("from Receptionist");
	  List<Receptionist> list=q.list();
	  for(Receptionist user:list)
	  {
		  %>
		  
				<div class="appointment-list"  >
				  <!-- <img class="card-img-top m-2 mx-auto" style="max-width:80px;"src="img/user.png" alt="Card image cap"> -->
				  <div class="appointment">
				    <h3 class="card-title"><%= user.getPname() %></h3>
				    <p>Doctor:- <%= user.getDisease() %></p>
				    <p>Disease:- <%= user.getAppointmentdate() %></p>
				    <p>Appointment Date :- <%= user.getDoctorname() %></p>
				    

				  </div>
				</div>
		  
		  <% 
	  }
	  
	  s.close();
	  %>
            
            
    </section>

</body>
</html>
