<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SolarConnect Resident Dashboard</title>

  <!-- Bootstrap & Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">

  <style>
    body {
      margin: 0;
      font-family: 'Space Grotesk', sans-serif;
      background: linear-gradient(to right, #000814, #001d3d);
      color: #f1f1f1;
    }

    .sidebar {
      height: 100vh;
      background-color: #001d3d;
      padding-top: 60px;
      position: fixed;
      width: 260px;
      box-shadow: 3px 0 10px rgba(0,0,0,0.5);
    }

    .sidebar a {
      display: block;
      padding: 15px 25px;
      font-size: 1.05rem;
      color: #f1f1f1;
      text-decoration: none;
      transition: all 0.3s ease;
      border-left: 4px solid transparent;
    }

    .sidebar a:hover {
      background: #003566;
      color: #ffd60a;
      border-left: 4px solid #ffd60a;
    }

    .sidebar i {
      margin-right: 10px;
    }

    .main-content {
      margin-left: 260px;
      padding: 40px 30px;
      min-height: 100vh;
      animation: fadeSlideIn 0.8s ease;
    }

    .main-content h1 {
      font-size: 2.5rem;
      font-weight: bold;
      color: #ffd60a;
      margin-bottom: 30px;
    }

    .panel-box {
      background: rgba(255,255,255,0.05);
      border-radius: 16px;
      padding: 25px 30px;
      margin-bottom: 25px;
      box-shadow: 0 8px 24px rgba(0,0,0,0.4);
      transition: all 0.3s ease;
    }

    .panel-box:hover {
      transform: translateY(-5px);
      background: rgba(255,255,255,0.08);
    }

    .panel-box a {
      color: #ffd60a;
      text-decoration: none;
      font-weight: bold;
    }

    footer {
      text-align: center;
      font-size: 0.85rem;
      color: #ccc;
      margin-top: 50px;
    }

    @keyframes fadeSlideIn {
      from { opacity: 0; transform: translateY(20px); }
      to   { opacity: 1; transform: translateY(0); }
    }

    @media (max-width: 768px) {
      .sidebar {
        width: 100%;
        height: auto;
        position: relative;
        display: flex;
        flex-direction: row;
        overflow-x: auto;
        white-space: nowrap;
      }

      .sidebar a {
        flex: 1;
        text-align: center;
        padding: 12px;
        font-size: 0.9rem;
      }

      .main-content {
        margin-left: 0;
        padding: 20px;
      }
    }
  </style>
</head>

<body>

  <!-- Sidebar Navigation -->
  <div class="sidebar">
    <a href="loginresident"><i class="fas fa-user-plus"></i>Login</a>
    <a href="applyinstallation"><i class="fas fa-solar-panel"></i> Apply Installation</a>
    <a href="viewresidentstatus"><i class="fas fa-info-circle"></i> View Status</a>
    <a href="ViewSubsidyInstallationReports"><i class="fas fa-chart-line"></i> Installation & Subsidy Report</a>
  </div>

  <!-- Main Content -->
  <div class="main-content">
    <h1>Welcome, Resident</h1>

    <div class="row">
      <div class="col-md-6">
        <div class="panel-box">
          <h4>Start Your Solar Journey</h4>
          <p>Register your details to begin. <a href="registerresident">Click here to Register</a></p>
        </div>
      </div>

      <div class="col-md-6">
        <div class="panel-box">
          <h4>Apply for Installation</h4>
          <p>Ready to install solar? <a href="applyinstallation">Submit an Application</a></p>
        </div>
      </div>

      <div class="col-md-6">
        <div class="panel-box">
          <h4>Check Your Status</h4>
          <p>Track the progress of your solar installation. <a href="viewresidentstatus">View Status</a></p>
        </div>
      </div>

      <div class="col-md-6">
        <div class="panel-box">
          <h4>Review Subsidy Report</h4>
          <p>See your subsidy eligibility and history. <a href="ViewSubsidyInstallationReports">View Report</a></p>
        </div>
      </div>
    </div>

    <footer>&copy; 2025 SolarConnect - Powering Homes, Empowering Lives</footer>
  </div>

</body>
</html>
