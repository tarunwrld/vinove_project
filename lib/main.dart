import 'package:flutter/material.dart';
import 'attendance.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workstatus',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workstatus'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF7B1FA2),
                    Color(0xFF512DA8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              accountName: const Text(
                'Cameron Williamson',
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: const Text('cameronwilliamson@gmail.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'assets/image1.jpeg'),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.timer, color: Colors.deepPurple),
              title: const Text('Timer'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.event_available, color: Colors.deepPurple),
              title: const Text('Attendance'),
              onTap: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      AttendanceScreen()),
                );
              }
            ),
            ListTile(
              leading: const Icon(Icons.timeline, color: Colors.deepPurple),
              title: const Text('Activity'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.access_time, color: Colors.deepPurple),
              title: const Text('Timesheet'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.report, color: Colors.deepPurple),
              title: const Text('Report'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.location_on, color: Colors.deepPurple),
              title: const Text('Jobsite'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.group, color: Colors.deepPurple),
              title: const Text('Team'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.beach_access, color: Colors.deepPurple),
              title: const Text('Time off'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.schedule, color: Colors.deepPurple),
              title: const Text('Schedules'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.group_add, color: Colors.deepPurple),
              title: const Text('Request to Join Organization'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.lock, color: Colors.deepPurple),
              title: const Text('Change Password'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.deepPurple),
              title: const Text('Logout'),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.help, color: Colors.grey),
              title: const Text('FAQ & Help'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip, color: Colors.grey),
              title: const Text('Privacy Policy'),
              onTap: () {},
            ),
            const ListTile(
              title: Text(
                'Version: 2.10(1)',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Workstatus Home Page',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
