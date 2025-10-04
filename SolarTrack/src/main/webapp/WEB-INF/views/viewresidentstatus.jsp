<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.solarTrack.model.InstallationRequests" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Installation Requests</title>

  <!-- Bootstrap 5 & FontAwesome -->
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

    .container {
      max-width: 900px;
      margin: auto;
      background-color: #002855;
      padding: 30px;
      border-radius: 18px;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.6);
      animation: fadeIn 0.5s ease-in-out;
    }

    h2 {
      text-align: center;
      color: #ffd60a;
      margin-bottom: 25px;
      font-weight: bold;
    }

    .table {
      color: #fff;
      background-color: #001d3d;
    }

    .table thead {
      background-color: #003566;
    }

    .table th {
      color: #ffd60a;
      font-weight: bold;
    }

    .table td {
      vertical-align: middle;
    }

    .table tbody tr:hover {
      background-color: #002244;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-10px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>

  <div class="container">
    <h2><i class="fas fa-list-check"></i> Your Installation Requests</h2>

    <table class="table table-bordered table-hover text-center align-middle">
      <thead>
        <tr>
          <th>Installation Request ID</th>
          <th>Request Date</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        <%
          List<InstallationRequests> allInstallationRequests = (List<InstallationRequests>) request.getAttribute("allInstallationRequests");
          if (allInstallationRequests != null && !allInstallationRequests.isEmpty()) {
              for (InstallationRequests installationRequests : allInstallationRequests) {
        %>
        <tr>
          <td><%= installationRequests.getId() %></td>
          <td><%= installationRequests.getRequestDate() %></td>
          <td><%= installationRequests.getStatus() %></td>
        </tr>
        <%
              }
          } else {
        %>
        <tr>
          <td colspan="3">No requests found.</td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>

</body>
</html>
