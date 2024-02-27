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
        <a href="Receptionist.jsp">Home</a>
        <a href="Patients.jsp">Patients</a>
        <a href="Approvals.jsp">Approvals</a>
        <a href="reports.jsp">Reports</a>
        <a href="index.jsp">Logout</a>
    </nav>

    <section>
        <form action="ReceptionistServlet" method="post">
            <label for="patient-name">Patient Name:</label>
            <input type="text" id="pname" name="pname" required>
            <label for="disease">Disease:</label>
            <input type="text" id="disease" name="disease" required>

            <label for="appointment-date">Appointment Date:</label>
            <input type="date" id="appointmentdate" name="appointmentdate" required>

            <label for="doctor">Doctor:</label>
            <select id="doctorname" name="doctorname">
                <option value="Dr. Deshpande">Dr. Deshpande</option>
                <option value="Dr. Siddiqui">Dr. Siddiqui</option>
            </select>

            <button type="submit">Schedule Appointment</button>
        </form>

        
    </section>

</body>
</html>
