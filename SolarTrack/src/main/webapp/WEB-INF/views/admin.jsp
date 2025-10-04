<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SolarConnect - Admin Login</title>

  <!-- Bootstrap & Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <!-- Font -->
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">

  <style>
    body {
      margin: 0;
      font-family: 'Space Grotesk', sans-serif;
      background: linear-gradient(to right, #000814, #001d3d);
      color: #f1f1f1;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .login-card {
      background: #001f3f;
      border-radius: 16px;
      padding: 40px 30px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
      width: 100%;
      max-width: 400px;
      animation: popIn 0.6s ease-out;
      transition: transform 0.3s ease;
    }

    .login-card:hover {
      transform: scale(1.015);
    }

    .login-card h2 {
      font-weight: 700;
      margin-bottom: 30px;
      color: #ffd60a;
      text-align: center;
    }

    .form-control {
      background-color: #003566;
      border: 1px solid #ccc;
      color: #fff;
      transition: transform 0.2s ease, background-color 0.3s ease;
    }

    .form-control:focus {
      border-color: #ffd60a;
      background-color: #002a52;
      transform: scale(1.02);
      box-shadow: none;
    }

    .btn-login {
      background-color: #ffd60a;
      color: #001d3d;
      font-weight: 600;
      width: 100%;
      border: none;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .btn-login:hover {
      background-color: #ffc300;
      transform: scale(1.03);
    }

    @keyframes popIn {
      0% { transform: scale(0.85); opacity: 0; }
      100% { transform: scale(1); opacity: 1; }
    }

    @media (max-width: 576px) {
      .login-card {
        margin: 0 20px;
        padding: 30px 20px;
      }
    }
  </style>
</head>

<body>

  <form class="login-card" action="AdminLogin" method="POST">
    <h2><i class="fas fa-user-shield"></i> Admin Login</h2>

    <div class="mb-3">
      <label for="email" class="form-label">Email:</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="admin@example.com" required>
    </div>

    <div class="mb-4">
      <label for="password" class="form-label">Password:</label>
      <input type="password" class="form-control" id="password" name="password" placeholder="" required>
    </div>

    <button type="submit" class="btn btn-login">Login</button>
  </form>

</body>
</html>