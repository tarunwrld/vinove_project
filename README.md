<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WorkStatus App - README</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1, h2 {
            color: #333;
        }
        h2 {
            margin-top: 20px;
        }
        ul {
            list-style-type: none;
            padding-left: 0;
        }
        li {
            margin-bottom: 10px;
        }
        pre {
            background-color: #2d2d2d;
            color: #f8f8f8;
            padding: 10px;
            border-radius: 5px;
            font-size: 14px;
            overflow-x: auto;
        }
        code {
            background-color: #f5f5f5;
            padding: 2px 6px;
            border-radius: 4px;
        }
        .container {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>WorkStatus App</h1>
        
        <h2>Overview</h2>
        <p>The <strong>WorkStatus App</strong> is a mobile application developed for the <strong>Vinove</strong> company, designed to help employees track and manage their work statuses efficiently. The app allows users to log in, update their work status, and view the status of their colleagues. It aims to streamline communication within the company and keep everyone informed about the team's current tasks and availability.</p>
        
        <h2>Features</h2>
        <ul>
            <li><strong>User Authentication</strong>: Sign in to the app using your credentials.</li>
            <li><strong>Work Status Updates</strong>: Easily update your current work status (e.g., available, in a meeting, on break, etc.).</li>
            <li><strong>Team Overview</strong>: View the work statuses of other team members in real-time.</li>
            <li><strong>Profile Management</strong>: Edit and update your profile information, including the display picture and work status.</li>
        </ul>
        
        <h2>Tech Stack</h2>
        <ul>
            <li><strong>Framework</strong>: Flutter</li>
            <li><strong>Programming Language</strong>: Dart</li>
            <li><strong>Backend</strong>: (Optional - Specify your backend service here, if applicable)</li>
            <li><strong>Database</strong>: (Optional - Specify your database, if applicable)</li>
            <li><strong>State Management</strong>: Provider (or any other state management solution used)</li>
        </ul>

        <h2>Known Issues</h2>
        <p>While the WorkStatus app provides useful functionality, there are some known issues that may affect the user experience:</p>
        <ul>
            <li><strong>Profile Image Not Loading</strong>: The profile photo feature may sometimes fail to load images. This issue can be observed particularly when uploading or displaying the user’s profile picture.</li>
            <li><strong>App Slowdowns</strong>: The app may experience some slowdowns or lag, especially during certain transitions or when the app is heavily loaded with data.</li>
            <li><strong>Screen Pixel Glitch (Device Specific)</strong>: There is a screen pixel glitch observed on specific devices. This issue is related to the rendering on certain screens and might cause minor visual inconsistencies.</li>
        </ul>

        <h2>Installation</h2>
        <p>To run the app locally:</p>
        <ol>
            <li>Ensure you have <strong>Flutter</strong> and <strong>Dart</strong> installed on your system. If not, follow the <a href="https://flutter.dev/docs/get-started/install" target="_blank">Flutter installation guide</a> to set up your development environment.</li>
            <li>Clone the repository to your local machine:</li>
            <pre><code>git clone https://github.com/your-repository-link.git</code></pre>
            <li>Navigate to the project folder:</li>
            <pre><code>cd workstatus-app</code></pre>
            <li>Install the dependencies:</li>
            <pre><code>flutter pub get</code></pre>
            <li>Run the app:</li>
            <pre><code>flutter run</code></pre>
        </ol>

        <h2>Contribution</h2>
        <p>If you'd like to contribute to the development of the WorkStatus app, feel free to fork the repository, create a branch for your changes, and submit a pull request with your improvements or bug fixes.</p>

        <h2>License</h2>
        <p>This project is licensed under the MIT License - see the <a href="LICENSE" target="_blank">LICENSE</a> file for details.</p>
    </div>

</body>
</html>
