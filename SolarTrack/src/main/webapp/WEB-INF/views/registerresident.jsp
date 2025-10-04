<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Register Resident</title>

  <!-- Bootstrap 5 & Font Awesome -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(to right, #000814, #001d3d);
      font-family: 'Space Grotesk', sans-serif;
      color: #fff;
      padding-top: 50px;
    }

    .form-container {
      max-width: 550px;
      margin: auto;
      background-color: #001f3f;
      padding: 40px 30px;
      border-radius: 18px;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.6);
      animation: fadeIn 0.6s ease-in-out;
    }

    h2 {
      text-align: center;
      color: #ffd60a;
      margin-bottom: 30px;
      font-weight: bold;
    }

    label {
      font-weight: bold;
      color: #fff;
    }

    input[type="text"] {
      background-color: #003566;
      border: none;
      color: #fff;
    }

    input[type="text"]:focus {
      background-color: #002855;
      color: #fff;
    }

    .btn-submit {
      background-color: #ffd60a;
      color: #000;
      font-weight: bold;
      width: 100%;
      margin-top: 20px;
    }

    .btn-submit:hover {
      background-color: #ffc300;
      color: #000;
    }

    .login-link {
      display: block;
      margin-top: 20px;
      text-align: center;
      color: #ccc;
    }

    .login-link:hover {
      text-decoration: underline;
      color: #ffd60a;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-10px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>

  <div class="form-container">
    <h2><i class="fas fa-user-plus"></i> Register Resident</h2>
    <form action="registerresident" method="post">
      <div class="mb-3">
        <label for="contact">Contact</label>
        <input type="text" class="form-control" id="contact" name="ResidentContact" required>
      </div>

      <div class="mb-3">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" name="ResidentName" required>
      </div>

      <div class="mb-3">
        <label for="address">Address</label>
        <input type="text" class="form-control" id="address" name="ResidentAddress" required>
      </div>

      <div class="mb-3">
        <label for="email">Email</label>
        <input type="text" class="form-control" id="email" name="ResidentEmail" required>
      </div>

      <div class="mb-3">
        <label for="aadhar">Aadhar</label>
        <input type="text" class="form-control" id="aadhar" name="ResidentAadhar" required>
      </div>

      <div class="mb-3">
        <label for="password">Password</label>
        <input type="text" class="form-control" id="password" name="ResidentPassword" required>
      </div>

      <button type="submit" class="btn btn-submit">Register</button>
    </form>

    <a href="loginresident" class="login-link">Already registered? Login here</a>
  </div>

</body>
</html>
