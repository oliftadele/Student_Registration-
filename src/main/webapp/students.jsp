<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registered Students</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #f4f6f5, #e8f0ec);
            min-height: 100vh;
            padding: 40px 20px;
            color: #333;
        }

        /* ===== CONTAINER ===== */
        .container {
            max-width: 1000px;
            margin: auto;
            background: #ffffff;
            padding: 35px;
            border-radius: 16px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.12);
            animation: fadeIn 0.6s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(15px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* ===== HEADER ===== */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .header h2 {
            margin: 0;
            color: #1b5e20;
            font-weight: 700;
        }

        .header span {
            font-size: 14px;
            color: #666;
        }

        /* ===== TABLE ===== */
        .table-wrapper {
            overflow-x: auto;
            border-radius: 12px;
            border: 1px solid #e0e0e0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        thead {
            background: #1b5e20;
            color: #ffffff;
            position: sticky;
            top: 0;
            z-index: 10;
        }

        th, td {
            padding: 14px 16px;
            text-align: left;
            font-size: 14px;
        }

        th {
            text-transform: uppercase;
            letter-spacing: 0.8px;
            font-size: 12px;
            font-weight: 600;
        }

        tbody tr {
            transition: background 0.25s ease;
        }

        tbody tr:nth-child(even) {
            background: #f7fbf9;
        }

        tbody tr:hover {
            background: #e8f5e9;
        }

        td {
            color: #333;
        }

        .empty {
            text-align: center;
            padding: 30px;
            color: #777;
            font-size: 14px;
        }

        /* ===== FOOTER ACTIONS ===== */
        .actions {
            margin-top: 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 15px;
        }

        .actions a {
            text-decoration: none;
            padding: 12px 20px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .btn-primary {
            background: linear-gradient(135deg, #2e7d32, #1b5e20);
            color: #ffffff;
        }

        .btn-secondary {
            background: #f4f6f5;
            color: #1b5e20;
            border: 1px solid #c8e6c9;
        }

        .actions a:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 768px) {
            .header {
                flex-direction: column;
                align-items: flex-start;
                gap: 8px;
            }
        }
    </style>
</head>

<body>

<div class="container">

    <!-- HEADER -->
    <div class="header">
        <h2>Registered Students</h2>
        <span>Student Management Overview</span>
    </div>

    <!-- TABLE -->
    <div class="table-wrapper">
        <table>
            <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Year</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<String[]> students = (List<String[]>) request.getAttribute("students");
                if (students != null && !students.isEmpty()) {
                    for (String[] s : students) {
            %>
            <tr>
                <td><%= s[0] %></td>
                <td><%= s[1] %></td>
                <td><%= s[2] %></td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="3" class="empty">No students registered yet</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>

    <!-- ACTION BUTTONS -->
    <div class="actions">
        <a class="btn-secondary" href="<%= request.getContextPath() %>/index.jsp">⬅ Back to Home</a>
        <a class="btn-primary" href="<%= request.getContextPath() %>/register.jsp">➕ Register Student</a>
    </div>

</div>

</body>
</html>
