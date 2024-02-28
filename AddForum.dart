import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'UserProfile.dart';
import 'Forums.dart';

class AddForum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffad32fe),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Row(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 28,
              ),
              SizedBox(width: 28),
              Text(
                "Study Hive",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: "Forums",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
        onTap: (int index) {
          // Handle bottom navigation item taps
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Forums()),
            );
          } else if (index == 1) {
            // Handle Messages navigation
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserProfile()),
            );
          }
        },
        backgroundColor: Color(0xffae32ff),
        elevation: 8,
        iconSize: 22,
        selectedItemColor: Color(0xffffffff),
        unselectedItemColor: Color(0xffffffff),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Type here',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Subject',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement functionality for each subject button
                  },
                  child: Text('Computing'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Implement functionality for each subject button
                  },
                  child: Text('Big Data'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Implement functionality for each subject button
                  },
                  child: Text('Cyber security'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Implement functionality for each subject button
                  },
                  child: Text('Maths'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Text Here',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: TextField(
                maxLines: null, // Allow multiple lines
                decoration: InputDecoration(
                  hintText: 'Type here',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Implement submit button functionality
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
