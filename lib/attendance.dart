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
        title: Text('ATTENDANCE'),
        backgroundColor: Colors.purple,
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.people, color: Colors.white),
            label: Text('All Members', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('image1.jpeg'),
              ),
              title: Text('Wade Warren (WSL0003)'),
              subtitle: Column(
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
                    icon: Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on, color: Colors.purple),
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
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('image2.png'),
              ),
              title: Text('Esther Howard (WSL0034)'),
              subtitle: Column(
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
                    icon: Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on, color: Colors.purple),
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
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('image1.jpeg'),
              ),
              title: Text('Cameron WilliamSon'),
              subtitle: Column(
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
                    icon: Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on, color: Colors.purple),
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
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('image1.jpeg'),
              ),
              title: Text('Brooklyn Simson'),
              subtitle: Column(
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
                    icon: Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on, color: Colors.purple),
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
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('image1.jpeg'),
              ),
              title: Text('Cristiano Jr.'),
              subtitle: Column(
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
                    icon: Icon(Icons.calendar_today, color: Colors.purple),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on, color: Colors.purple),
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
            child: Text('Show Map view', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
