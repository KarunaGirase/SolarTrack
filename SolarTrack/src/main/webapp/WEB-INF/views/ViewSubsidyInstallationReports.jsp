<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.solarTrack.model.Reports" %>
<%@ page import="java.util.*, com.solarTrack.model.Installations" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Reports & Installations</title>

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
      max-width: 1000px;
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
      margin-bottom: 30px;
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

    .table tbody tr:hover {
      background-color: #002244;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-10px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .section-title {
      margin-top: 30px;
      margin-bottom: 15px;
      color: #ffd60a;
      font-size: 1.4rem;
      border-bottom: 2px solid #ffd60a;
      padding-bottom: 5px;
    }
  </style>
</head>
<body>

  <div class="container">
    <h2><i class="fas fa-chart-line"></i> System Reports & Installation Info</h2>

    <div class="section-title"><i class="fas fa-file-alt"></i> Reports</div>
    <table class="table table-bordered table-hover text-center align-middle">
      <thead>
        <tr>
          <th>ID</th>
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
          <td colspan="4">No reports found.</td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>

    <div class="section-title"><i class="fas fa-solar-panel"></i> Installations</div>
    <table class="table table-bordered table-hover text-center align-middle">
      <thead>
        <tr>
          <th>Install Date</th>
          <th>System Cost</th>
          <th>Subsidy Approved</th>
          <th>Remark</th>
        </tr>
      </thead>
      <tbody>
        <%
          List<Installations> allInstallations = (List<Installations>) request.getAttribute("allInstallations");
          if (allInstallations != null && !allInstallations.isEmpty()) {
              for (Installations installations : allInstallations) {
        %>
        <tr>
          <td><%= installations.getInstallDate() %></td>
          <td><%= installations.getSystemCost() %></td>
          <td><%= installations.getSubsidyApproved() %></td>
          <td><%= installations.getRemark() %></td>
        </tr>
        <%
              }
          } else {
        %>
        <tr>
          <td colspan="4">No installation records found.</td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>

  </div>

</body>
</html>
