<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>SolarConnect - Complete Installation</title>
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
      max-width: 600px;
      margin: auto;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.5);
      animation: fadeIn 0.6s ease-in-out;
    }

    h1 {
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

    .btn-complete {
      background-color: #198754;
      color: #fff;
      font-weight: 600;
      width: 100%;
    }

    .btn-complete:hover {
      background-color: #157347;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(10px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>

<body>
  <div class="form-container">
    <h1><i class="fas fa-check-double"></i> Complete Installation</h1>
    <form action="Completeinstallations" method="post">
    
     <div class="mb-3">
        <label for="Id" class="form-label">Request Id</label>
        <input type="text" class="form-control" id="Id" name="Id" required>
      </div>
    
      <div class="mb-3">
      	<input type="hidden" name="InstallerContact" value="<%=request.getParameter("InstallerContact") %>"/>
        <label for="InstallDate" class="form-label">Install Date</label>
        <input type="text" class="form-control" id="InstallDate" name="InstallDate" required>
      </div>

      <div class="mb-3">
        <label for="SystemCost" class="form-label">System Cost</label>
        <input type="text" class="form-control" id="SystemCost" name="SystemCost" required>
      </div>
	  
	  
	  
      <div class="mb-3">
        <label for="subsidyApproved" class="form-label">Subsidy Approved</label>
        <input type="text" class="form-control" id="subsidyApproved" name="subsidyApproved" required>
      </div>

      <div class="mb-3">
        <label for="Remark" class="form-label">Remark</label>
        <input type="text" class="form-control" id="Remark" name="Remark">
      </div>

      <button type="submit" class="btn btn-complete">
        <i class="fas fa-check-circle"></i> Complete
      </button>
    </form>
  </div>
</body>
</html>
