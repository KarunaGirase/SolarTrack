<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Apply for Installation</title>

  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(to right, #000814, #001d3d);
      font-family: 'Space Grotesk', sans-serif;
      color: #fff;
      padding-top: 60px;
    }

    .form-container {
      max-width: 500px;
      margin: auto;
      background-color: #002855;
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

    input[type="text"], input[type="date"] {
      background-color: #003566;
      border: none;
      color: #fff;
    }

    input[type="text"]:focus, input[type="date"]:focus {
      background-color: #002244;
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
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-10px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>

  <div class="form-container">
    <h2><i class="fas fa-solar-panel"></i> Apply for Installation</h2>
    <form action="submitInstallationRequest" method="post">
      <div class="mb-3">
        <label for="systemType">System Type</label>
        <input type="text" class="form-control" id="systemType" name="systemType" placeholder="e.g., Rooftop, Standalone" required>
      </div>

      <div class="mb-3">
        <label for="capacityKW">Capacity (KW)</label>
        <input type="text" class="form-control" id="capacityKW" name="capacityKW" placeholder="e.g., 5" required>
      </div>

      <div class="mb-3">
        <label for="requestDate">Request Date</label>
        <input type="date" class="form-control" id="requestDate" name="requestDate" required>
      </div>

      <button type="submit" class="btn btn-submit">Submit Request</button>
    </form>
  </div>

</body>
</html>
