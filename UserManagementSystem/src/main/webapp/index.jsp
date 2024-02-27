<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form with Beautiful Loader</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f7f7f7;
        }

        #signup-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
            position: relative;
        }

        input {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
            outline: none;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            outline: none;
        }

        #loader-container {
            display: none;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            z-index: 1;
        }

        #loader {
            border: 8px solid #3498db;
            border-top: 8px solid #f3f3f3;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
 <body style="background: url(img/index.jpg); background-size: cover; background-attachment: fixed;">

    <div id="signup-form">
        <h2>Signup Form</h2>
        <form id="form" action="ProfileServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" name="name" required>

            <label for="email">Email:</label>
            <input type="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" name="password" required>
            
            <label for="doctor">Character : </label>
            <select  name="type">
                <option value="Patient">Patient</option>
                <option value="Receptionist">Receptionist</option>
                <option value="Doctor">Doctor</option>
            </select>
			<br><br>
            <button type="submit" onclick="submitForm()">Login in</button>

            <div id="loader-container">
                <div id="loader"></div>
                <p>Loading...</p>
            </div>
        </form>
    </div>

    <script>
        function submitForm() {
            // Simulate form submission with a delay for demonstration purposes
            showLoader();
            setTimeout(() => {
                hideLoader();
                alert('Signup successful!');
            }, 2000);
        }

        function showLoader() {
            document.getElementById('loader-container').style.display = 'flex';
        }

        function hideLoader() {
            document.getElementById('loader-container').style.display = 'none';
        }
    </script>

</body>
</html>
