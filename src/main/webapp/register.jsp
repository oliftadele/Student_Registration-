<!DOCTYPE html>
<html>
<head>
    <title>Register Student</title>

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
            display: flex;
            justify-content: center;
            align-items: center;
            color: #333;
        }

        /* ===== CARD ===== */
        .card {
            background: #ffffff;
            width: 420px;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.12);
            animation: fadeIn 0.6s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .card h2 {
            text-align: center;
            margin-bottom: 10px;
            color: #1b5e20;
            font-weight: 700;
        }

        .subtitle {
            text-align: center;
            font-size: 14px;
            color: #666;
            margin-bottom: 30px;
        }

        /* ===== FORM ===== */
        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-size: 14px;
            font-weight: 600;
            color: #444;
        }

        input {
            width: 100%;
            padding: 12px 14px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input:focus {
            outline: none;
            border-color: #2e7d32;
            box-shadow: 0 0 0 3px rgba(46,125,50,0.15);
        }

        /* ===== BUTTON ===== */
        button {
            width: 100%;
            margin-top: 10px;
            padding: 13px;
            background: linear-gradient(135deg, #2e7d32, #1b5e20);
            border: none;
            color: #ffffff;
            font-size: 15px;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }

        /* ===== ERROR ===== */
        .error {
            margin-top: 15px;
            text-align: center;
            font-size: 13px;
            color: #c62828;
            font-weight: 500;
        }

        /* ===== FOOTER LINKS ===== */
        .links {
            margin-top: 25px;
            text-align: center;
            font-size: 14px;
        }

        .links a {
            text-decoration: none;
            color: #2e7d32;
            font-weight: 600;
            margin: 0 8px;
        }

        .links a:hover {
            text-decoration: underline;
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 480px) {
            .card {
                width: 90%;
                padding: 30px;
            }
        }
    </style>
</head>

<body>

<div class="card">
    <h2>Student Registration</h2>
    <p class="subtitle">Add a new student to the system</p>

    <form action="register" method="post">
        <div class="form-group">
            <label>Full Name</label>
            <input type="text" name="name" placeholder="Enter student name" required>
        </div>

        <div class="form-group">
            <label>Email Address</label>
            <input type="email" name="email" placeholder="student@email.com" required>
        </div>

        <div class="form-group">
            <label>Year</label>
            <input type="number" name="year" placeholder="e.g. 2" required>
        </div>

        <button type="submit">Register Student</button>
    </form>

    <div class="error">
        <%= request.getParameter("error") != null ? request.getParameter("error") : "" %>
    </div>

    <div class="links">
        <a href="<%= request.getContextPath() %>/index.jsp">Home</a> |
        <a href="<%= request.getContextPath() %>/show_all">View Students</a>
    </div>
</div>

</body>
</html>
