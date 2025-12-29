<!DOCTYPE html>
<html>
<head>
    <title>Student Registration System</title>

    <style>
        :root {
            --primary: #1b5e20;
            --primary-light: #2e7d32;
            --accent: #81c784;
            --bg: #f3f6f4;
            --text-dark: #263238;
            --text-muted: #607d8b;
            --card-bg: rgba(255,255,255,0.85);
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: "Segoe UI", Roboto, Arial, sans-serif;
            background: linear-gradient(180deg, #eef3f1, #f7f9f8);
            color: var(--text-dark);
        }

        /* ===== NAVBAR ===== */
        .navbar {
            position: sticky;
            top: 0;
            z-index: 100;
            background: linear-gradient(90deg, var(--primary), var(--primary-light));
            padding: 14px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 6px 18px rgba(0,0,0,0.18);
        }

        .logo {
            color: white;
            font-size: 22px;
            font-weight: 700;
            letter-spacing: 1px;
        }

        .nav-links a {
            position: relative;
            color: white;
            text-decoration: none;
            margin-left: 25px;
            font-size: 15px;
            font-weight: 500;
            padding-bottom: 4px;
        }

        .nav-links a::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            width: 0;
            height: 2px;
            background: var(--accent);
            transition: width 0.3s ease;
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        /* ===== HERO ===== */
        .hero {
            max-width: 1100px;
            margin: 70px auto 40px;
            padding: 0 25px;
            text-align: center;
        }

        .hero h1 {
            font-size: 36px;
            margin-bottom: 10px;
            color: var(--primary);
        }

        .hero p {
            font-size: 16px;
            color: var(--text-muted);
            max-width: 650px;
            margin: auto;
        }

        /* ===== CARDS ===== */
        .main {
            max-width: 1100px;
            margin: 40px auto 60px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 35px;
            padding: 0 25px;
        }

        .card {
            background: var(--card-bg);
            backdrop-filter: blur(8px);
            border-radius: 14px;
            padding: 40px 35px;
            box-shadow: 0 18px 40px rgba(0,0,0,0.12);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 28px 55px rgba(0,0,0,0.18);
        }

        .card h2 {
            margin-top: 0;
            color: var(--primary);
            font-size: 22px;
        }

        .card p {
            font-size: 15px;
            color: var(--text-muted);
            margin: 15px 0 30px;
            line-height: 1.6;
        }

        .badge {
            display: inline-block;
            background: #e8f5e9;
            color: var(--primary);
            padding: 4px 12px;
            border-radius: 50px;
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 15px;
        }

        .btn {
            display: inline-block;
            padding: 12px 26px;
            background: linear-gradient(135deg, var(--primary), var(--primary-light));
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 15px;
            font-weight: 600;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(0,0,0,0.25);
        }

        /* ===== FOOTER ===== */
        footer {
            background: #e9eeec;
            text-align: center;
            padding: 25px 15px;
            font-size: 13px;
            color: #607d8b;
        }

        footer span {
            color: var(--primary);
            font-weight: 600;
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">StudentApp</div>
    <div class="nav-links">
        <a href="<%= request.getContextPath() %>/index.jsp">Home</a>
        <a href="<%= request.getContextPath() %>/register.jsp">Register</a>
        <a href="<%= request.getContextPath() %>/show_all">Students</a>
    </div>
</div>

<!-- HERO -->
<div class="hero">
    <h1>Student Registration System</h1>
    <p>
        A modern platform to register, manage, and review student records
        efficiently using secure backend architecture.
    </p>
</div>

<!-- MAIN CARDS -->
<div class="main">

    <div class="card">
        <div class="badge">Primary Action</div>
        <h2>Register Students</h2>
        <p>
            Add new students with validated input and structured storage,
            ensuring accuracy and consistency.
        </p>
        <a class="btn" href="<%= request.getContextPath() %>/register.jsp">
            Register Student
        </a>
    </div>

    <div class="card">
        <div class="badge">Records</div>
        <h2>View Student Data</h2>
        <p>
            Access all registered students in a structured table view designed
            for clarity and usability.
        </p>
        <a class="btn" href="<%= request.getContextPath() %>/show_all">
            View Students
        </a>
    </div>

</div>

<!-- FOOTER -->
<footer>
    © 2025 <span>Student Registration System</span> · Java Servlets & JSP
</footer>

</body>
</html>
