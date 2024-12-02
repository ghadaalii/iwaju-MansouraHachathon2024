import 'package:deaf/UI/Screens/SignIn.dart';
import 'package:deaf/UI/Screens/infoScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _signOut(BuildContext context) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', false);

      // الانتقال لصفحة تسجيل الدخول
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Signin()),
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 40,
                )),
            const SizedBox(
              width: .5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return InfoScreen();
                  }));
                },
                icon: const Icon(
                  Icons.list,
                  color: Colors.black,
                  size: 40,
                )),
          ],
          bottom: const TabBar(
            //labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(),
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Courses'),
              Tab(text: 'Instructors'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAllTab(),
            _buildCoursesTab(),
            _buildInstructorsTab(),
          ],
        ),
      ),
    );
  }

  // Tab 1: All
  Widget _buildAllTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Find Courses',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildCourseCard(),
        _buildCourseCard(),
        const SizedBox(height: 24),
        const Text(
          'Find Instructors',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildInstructorCard(),
        _buildInstructorCard(),
      ],
    );
  }

  // Tab 2: Courses
  Widget _buildCoursesTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Find Courses',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildCourseCard(),
        _buildCourseCard(),
        _buildCourseCard(),
      ],
    );
  }

  // Tab 3: Instructors
  Widget _buildInstructorsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Find Instructors',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildInstructorCard(),
        _buildInstructorCard(),
        _buildInstructorCard(),
      ],
    );
  }

  // Course Card Widget
  Widget _buildCourseCard() {
    return Container(
      width: 200,
      height: 370,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/course.png.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              const Text(
                'Intro to Programming',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Text('By Ali Ahmed - 1,855 subscribers'),
              const SizedBox(height: 8),
              const Text(
                'Welcome to ITWOC, we aim to provide new learners an easy way to learn the art of code.',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Subscribe'),
                  ),
                  const Text('Publish: Every Fri, Sat'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Instructor Card Widget
  Widget _buildInstructorCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/Mr.jpg'),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mr. Ahmed Sameh',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('436 Treatments - 2600 Followers'),
                      Text(
                        'A professional sign language interpreter skilled in bridging communication between deaf and hearing communities.',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Message'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Follow'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
