<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.solarTrack.model.Installer" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>SolarConnect - Installer List</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap 5 & Font Awesome -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(to right, #000814, #001d3d);
      font-family: 'Space Grotesk', sans-serif;
      color: #fff;
      padding: 40px 0;
    }

    .container {
      background-color: #001f3f;
      border-radius: 16px;
      padding: 30px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.5);
    }

    h2 {
      text-align: center;
      color: #ffd60a;
      margin-bottom: 30px;
      font-weight: bold;
    }

    table {
      color: #fff;
      background-color: #002b5b;
      border-radius: 12px;
      overflow: hidden;
      animation: fadeIn 0.6s ease-in-out;
    }

    thead {
      background-color: #003566;
    }

    thead th {
      color: #ffd60a;
      font-weight: bold;
    }

    tbody td {
      vertical-align: middle;
    }

    a.delete-link {
      color: #ff6b6b;
      font-weight: 600;
      text-decoration: none;
      transition: color 0.3s ease;
    }

    a.delete-link:hover {
      color: #ff3c3c;
    }

    .no-data {
      text-align: center;
      color: #ccc;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(10px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>

<body>
  <div class="container">
    <h2><i class="fas fa-users-gear"></i> Installer List</h2>

    <table class="table table-bordered table-hover text-center align-middle">
      <thead>
        <tr>
          <th>Contact</th>
          <th>Name</th>
          <th>License No</th>
          <th>Email</th>
          <th>Password</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <%
          List<Installer> allInstaller = (List<Installer>) request.getAttribute("allInstaller");
          if (allInstaller != null && !allInstaller.isEmpty()) {
            for (Installer installer : allInstaller) {
        %>
        <tr>
          <td><%= installer.getInstallerContact() %></td>
          <td><%= installer.getInstallerName() %></td>
          <td><%= installer.getInstallerLicenseNo() %></td>
          <td><%= installer.getInstallerEmail() %></td>
          <td><%= installer.getInstallerPassword() %></td>
          <td>
            <a class="delete-link" href="delete?InstallerContact=<%= installer.getInstallerContact() %>">
              <i class="fas fa-trash-alt"></i> Delete
            </a>
          </td>
        </tr>
        <%
            }
          } else {
        %>
        <tr>
          <td colspan="6" class="no-data">No installer data available.</td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>
</body>
</html>
