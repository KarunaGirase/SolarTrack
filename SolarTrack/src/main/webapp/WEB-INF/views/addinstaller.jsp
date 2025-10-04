<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SolarConnect - Add Installer</title>

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

    .form-card {
      background: #001f3f;
      border-radius: 16px;
      padding: 40px 30px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
      width: 100%;
      max-width: 500px;
      animation: popIn 0.6s ease-out;
      transition: transform 0.3s ease;
    }

    .form-card:hover {
      transform: scale(1.015);
    }

    .form-card h2 {
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

    .btn-submit {
      background-color: #ffd60a;
      color: #001d3d;
      font-weight: 600;
      width: 100%;
      border: none;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .btn-submit:hover {
      background-color: #ffc300;
      transform: scale(1.03);
    }

    @keyframes popIn {
      0% { transform: scale(0.85); opacity: 0; }
      100% { transform: scale(1); opacity: 1; }
    }

    @media (max-width: 576px) {
      .form-card {
        margin: 0 20px;
        padding: 30px 20px;
      }
    }
  </style>
</head>

<body>

  <form class="form-card" action="Addinstaller" method="POST">
    <h2><i class="fas fa-user-plus"></i> Add Installer</h2>

    <div class="mb-3">
      <label for="contact" class="form-label">Contact:</label>
      <input type="text" class="form-control" id="contact" name="InstallerContact" placeholder="Enter contact number" required>
    </div>

    <div class="mb-3">
      <label for="email" class="form-label">Email:</label>
      <input type="email" class="form-control" id="email" name="InstallerEmail" placeholder="installer@example.com" required>
    </div>

    <div class="mb-3">
      <label for="license" class="form-label">License No:</label>
      <input type="text" class="form-control" id="license" name="InstallerLicenseNo" placeholder="Enter license number" required>
    </div>

    <div class="mb-3">
      <label for="name" class="form-label">Name:</label>
      <input type="text" class="form-control" id="name" name="InstallerName" placeholder="Enter full name" required>
    </div>

    <div class="mb-4">
      <label for="password" class="form-label">Password:</label>
      <input type="password" class="form-control" id="password" name="InstallerPassword" placeholder="Create password" required>
    </div>

    <button type="submit" class="btn btn-submit">Add Installer</button>
  </form>

</body>
</html>
