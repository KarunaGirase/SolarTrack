<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.solarTrack.model.Reports" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>SolarConnect - Reports</title>
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
    <h2><i class="fas fa-chart-line"></i> Reports</h2>

    <table class="table table-bordered table-hover text-center align-middle">
      <thead>
        <tr>
          <th>Id</th>
          <th>Maintenance Notes</th>
          <th>Power Generated</th>
          <th>Report Date</th>
        </tr>
      </thead>
      <tbody>
        <%
          List<Reports> allReports = (List<Reports>) request.getAttribute("allReports");
          if (allReports != null && !allReports.isEmpty()) {
            for (Reports reports : allReports) {
        %>
        <tr>
          <td><%= reports.getId() %></td>
          <td><%= reports.getMaintenanceNotes() %></td>
          <td><%= reports.getPowerGenerated() %></td>
          <td><%= reports.getReportDate() %></td>
        </tr>
        <%
            }
          } else {
        %>
        <tr>
          <td colspan="4" class="no-data">No reports found.</td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>
</body>
</html>
