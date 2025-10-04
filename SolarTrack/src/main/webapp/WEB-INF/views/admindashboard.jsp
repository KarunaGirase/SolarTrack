<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SolarConnect Admin Panel</title>

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
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    .sidebar {
      height: 100vh;
      background: linear-gradient(to bottom, #001d3d, #003566);
      padding-top: 60px;
      position: fixed;
      width: 260px;
      box-shadow: 3px 0 12px rgba(0, 0, 0, 0.6);
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .sidebar a {
      width: 85%;
      margin: 10px 0;
      display: flex;
      align-items: center;
      padding: 12px 20px;
      font-size: 1rem;
      color: #ffffff;
      text-decoration: none;
      border-radius: 12px;
      background-color: rgba(255, 255, 255, 0.05);
      transition: all 0.3s ease;
      font-weight: 500;
    }

    .sidebar a:hover {
      background-color: #ffd60a;
      color: #001d3d;
      transform: translateX(5px);
      font-weight: 600;
    }

    .sidebar i {
      margin-right: 12px;
      font-size: 1.1rem;
      background-color: rgba(255, 255, 255, 0.1);
      padding: 6px;
      border-radius: 50%;
    }

    .main-content {
      margin-left: 260px;
      padding: 40px 30px;
      flex: 1;
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

    .panel-box h4 {
      color: #ffffff;
    }

    .panel-box p {
      font-size: 1.05rem;
      color: #dddddd;
    }

    .panel-box a {
      color: #ffd60a;
      text-decoration: none;
      font-weight: bold;
    }

    footer {
      text-align: center;
      font-size: 0.85rem;
      color: #f1f1f1;
      background-color: #001d3d;
      padding: 15px;
      margin-top: auto;
      width: 100%;
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
        flex-direction: row;
        justify-content: space-around;
        padding: 10px;
        box-shadow: none;
      }

      .sidebar a {
        width: auto;
        padding: 10px 15px;
        font-size: 0.9rem;
        border-radius: 8px;
        flex: 1;
        text-align: center;
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
    <a href="addinstaller"><i class="fas fa-user-plus"></i> Add Installer</a>
    <a href="viewinstaller"><i class="fas fa-users-cog"></i> View Installers</a>
    <a href="viewresidents"><i class="fas fa-users"></i> View Residents</a>
    <a href="viewInstallationRequests"><i class="fas fa-file-alt"></i> Installation Requests</a>
    <a href="ViewSubsidyReports"><i class="fas fa-chart-bar"></i> Subsidy Reports</a>
   
</a>
    
  </div>

  <!-- Main Content -->
  <div class="main-content">
    <h1>Welcome, Admin</h1>

    <div class="panel-box">
      <h4>Welcome to SolarTrack</h4>
      <p>Welcome to the SolarTrack Admin Panel. Empowering clean energy management with seamless tracking and insights.</p>
    </div>
  </div>

  <!-- Sticky Footer -->
  <footer>&copy; 2025 SolarConnect - Clean energy, clear future</footer>

</body>
</html>
