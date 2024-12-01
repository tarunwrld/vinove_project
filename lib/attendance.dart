import 'package:flutter/material.dart';
import 'location.dart';
import 'livelocationdata.dart';

void main() {
  runApp(MaterialApp(
    home: AttendanceScreen(),
  ));
}

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('ATTENDANCE'),
        backgroundColor: Colors.purple,
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.people, color: Colors.white),
            label: const Text('All Members', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/image1.jpeg'),
              ),
              title: const Text('Wade Warren (WSL0003)'),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_upward, color: Colors.green, size: 16),
                      SizedBox(width: 4),
                      Text('Login: 09:30 am'),
                      SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_downward, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Text('Logout: '),
                    ],
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.location_on, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LiveLocationScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/image2.png'),
              ),
              title: const Text('Esther Howard (WSL0034)'),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_upward, color: Colors.green, size: 16),
                      SizedBox(width: 4),
                      Text('Login: 09:30 am'),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_downward, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Text('Logout: 06:40 pm'),
                    ],
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.location_on, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LiveLocationScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          //new
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/image1.jpeg'),
              ),
              title: const Text('Cameron WilliamSon'),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_upward, color: Colors.green, size: 16),
                      SizedBox(width: 4),
                      Text('Login: 10:30 am'),
                      SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_downward, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Text('Logout: Not Logged out yet'),
                    ],
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.location_on, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LiveLocationScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/image2.png'),
              ),
              title: const Text('Brooklyn Simson'),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_upward, color: Colors.green, size: 16),
                      SizedBox(width: 4),
                      Text('Login: 08:45 am'),
                      SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_downward, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Text('Logout: 04:07 pm'),
                    ],
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.location_on, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LiveLocationScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/image1.jpeg'),
              ),
              title: const Text('Cristiano Jr.'),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_upward, color: Colors.green, size: 16),
                      SizedBox(width: 4),
                      Text('Login: 09:02 am'),
                      SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_downward, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Text('Logout: 05:00 pm'),
                    ],
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.location_on, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LiveLocationScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Show Map view', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
