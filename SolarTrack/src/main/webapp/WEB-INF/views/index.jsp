<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SolarConnect Portal</title>

  <!-- Bootstrap CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  
  <!-- Font & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600&family=Rubik&display=swap" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

  <style>
    body {
      margin: 0;
      font-family: 'Rubik', sans-serif;
      background: radial-gradient(circle at top, #003366 0%, #000d1a 100%);
      color: white;
      overflow-x: hidden;
    }

    .hero {
      min-height: 100vh;
      padding: 40px 20px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background: url('https://www.transparenttextures.com/patterns/stardust.png');
      text-align: center;
      animation: fadeIn 1.5s ease-in-out;
    }

    .hero h1 {
      font-family: 'Orbitron', sans-serif;
      font-size: 2.8rem;
      color: #FFDC00;
      text-shadow: 2px 2px 6px #000;
      margin-bottom: 10px;
    }

    .hero p {
      font-size: 1.1rem;
      color: #ddd;
      max-width: 600px;
      margin-bottom: 40px;
    }

    .cards-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 30px;
      width: 100%;
    }

    .glass-card {
      background: rgba(255, 255, 255, 0.1);
      border-radius: 20px;
      padding: 30px;
      width: 100%;
      max-width: 300px;
      backdrop-filter: blur(12px);
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.4);
      border: 1px solid rgba(255, 255, 255, 0.15);
      transition: transform 0.4s ease, box-shadow 0.4s ease;
      text-align: center;
    }

    .glass-card:hover {
      transform: translateY(-12px) scale(1.05);
      box-shadow: 0 12px 40px rgba(255, 220, 0, 0.5);
    }

    .glass-card i {
      font-size: 2.8rem;
      color: #FFDC00;
      margin-bottom: 15px;
    }

    .glass-card h3 {
      font-weight: bold;
      color: #fff;
      margin-bottom: 10px;
      font-size: 1.3rem;
    }

    .glass-card a {
      text-decoration: none;
      color: #003366;
      background: #FFDC00;
      padding: 10px 25px;
      border-radius: 50px;
      font-weight: bold;
      display: inline-block;
      font-size: 1rem;
      transition: background 0.3s ease;
    }

    .glass-card a:hover {
      background: #ffc107;
    }

    footer {
      text-align: center;
      padding: 15px;
      font-size: 0.9rem;
      color: #ccc;
      background: #000d1a;
    }

    @keyframes fadeIn {
      0% {opacity: 0; transform: translateY(30px);}
      100% {opacity: 1; transform: translateY(0);}
    }

    @media (max-width: 768px) {
      .hero h1 {
        font-size: 2.2rem;
      }

      .hero p {
        font-size: 1rem;
      }

      .glass-card {
        width: 90%;
        max-width: none;
      }

      .glass-card h3 {
        font-size: 1.2rem;
      }

      .glass-card i {
        font-size: 2.4rem;
      }
    }
  </style>
</head>

<body>

  <div class="hero">
    <h1>SolarConnect Portal</h1>
    <p>Manage solar energy efficiently - clean, smart and sustainable for Admins, Residents and Installers.</p>

    <div class="cards-container">
      <div class="glass-card">
        <i class="fas fa-user-shield"></i>
        <h3>Admin Panel</h3>
        <a href="admin">Go to Admin</a>
      </div>

      <div class="glass-card">
        <i class="fas fa-home"></i>
        <h3>Resident Dashboard</h3>
        <a href="residentdashboard">Go to Resident</a>
      </div>

      <div class="glass-card">
        <i class="fas fa-tools"></i>
        <h3>Installer Login</h3>
        <a href="installerlogin">Go to Installer</a>
      </div>
    </div>
  </div>

  <footer>
    &copy; 2025 SolarConnect. Powered by clean energy
  </footer>

</body>
</html>
