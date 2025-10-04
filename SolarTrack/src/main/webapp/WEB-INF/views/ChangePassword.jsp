<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>Installer - Change Password</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

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
      padding: 40px 0;
    }

    .form-container {
      background-color: #001f3f;
      border-radius: 16px;
      padding: 40px;
      max-width: 500px;
      margin: auto;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.5);
      animation: fadeIn 0.6s ease-in-out;
    }

    h2 {
      text-align: center;
      color: #ffd60a;
      margin-bottom: 30px;
      font-weight: bold;
    }

    label {
      font-weight: 600;
      color: #ffd60a;
    }

    .form-control {
      background-color: #002b5b;
      border: none;
      color: #fff;
    }

    .form-control:focus {
      box-shadow: 0 0 5px #ffd60a;
      background-color: #002b5b;
    }

    .btn-submit {
      background-color: #198754;
      color: #fff;
      font-weight: 600;
      width: 100%;
    }

    .btn-submit:hover {
      background-color: #157347;
    }

    .msg {
      text-align: center;
      font-weight: bold;
      margin-top: 15px;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(10px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>

<body>
  <div class="form-container">
    <h2><i class="fas fa-key"></i> Installer - Change Password</h2>
    <form action="changeinstallerpassword" method="post">
      <div class="mb-3">
        <label for="contact">Contact</label>
        <input type="text" class="form-control" id="contact" name="contact" required>
      </div>

      <div class="mb-3">
        <label for="oldPassword">Old Password</label>
        <input type="password" class="form-control" id="oldPassword" name="oldPassword" required>
      </div>

      <div class="mb-3">
        <label for="newPassword">New Password</label>
        <input type="password" class="form-control" id="newPassword" name="newPassword" required>
      </div>

      <button type="submit" class="btn btn-submit">
        <i class="fas fa-lock-open"></i> Change Password
      </button>
    </form>

    <!-- Success or Error Message -->
    <%
        String msg = request.getParameter("msg");
        if (msg != null) {
    %>
      <p class="msg text-success"><%= msg %></p>
    <%
        }
        String error = request.getParameter("error");
        if (error != null) {
    %>
      <p class="msg text-danger"><%= error %></p>
    <%
        }
    %>
  </div>
</body>
</html>
