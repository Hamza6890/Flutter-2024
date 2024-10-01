import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Section
            Text(
              'Welcome, User!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Here’s a quick overview of your activities and progress.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),

            // Quick Access Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildQuickAccessCard(
                  icon: Icons.assessment,
                  title: 'Assessments',
                  onTap: () => Get.toNamed('/assessments'),
                ),
                _buildQuickAccessCard(
                  icon: Icons.track_changes,
                  title: 'Progress',
                  onTap: () => Get.toNamed('/progress-tracking'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildQuickAccessCard(
                  icon: Icons.content_paste,
                  title: 'Content',
                  onTap: () => Get.toNamed('/content-delivery'),
                ),
                _buildQuickAccessCard(
                  icon: Icons.school,
                  title: 'Learning Path',
                  onTap: () => Get.toNamed('/learning-path'),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Updates Section
            Text(
              'Recent Updates',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildUpdateTile(
                    title: 'New Assessment Available',
                    subtitle: 'You have a new assessment due soon.',
                  ),
                  _buildUpdateTile(
                    title: 'Content Update',
                    subtitle: 'New content has been added to your learning path.',
                  ),
                  _buildUpdateTile(
                    title: 'Upcoming Webinar',
                    subtitle: 'Join our upcoming webinar on Flutter.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.indigo),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Manage your personal information',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/profile'),
            ),
            ListTile(
              leading: Icon(Icons.assessment, color: Colors.indigo),
              title: Text(
                'Assessments',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'View and take assessments',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/assessments'),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.indigo),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Configure your preferences',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/settings'),
            ),
            ListTile(
              leading: Icon(Icons.track_changes, color: Colors.indigo),
              title: Text(
                'Learning Path',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Explore your learning journey',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/learning-path'),
            ),
            ListTile(
              leading: Icon(Icons.school, color: Colors.indigo),
              title: Text(
                'Interactive Learning',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Engage with interactive content',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/interactive-learning'),
            ),
            ListTile(
              leading: Icon(Icons.chat, color: Colors.indigo),
              title: Text(
                'Communication',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Communicate with peers and instructors',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/communication'),
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.indigo),
              title: Text(
                'Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Manage your notifications',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/notifications'),
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.indigo),
              title: Text(
                'Progress Tracking',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Monitor your learning progress',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/progress-tracking'),
            ),
            ListTile(
              leading: Icon(Icons.content_paste, color: Colors.indigo),
              title: Text(
                'Content Delivery',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Access and manage content',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/content-delivery'),
            ),
            ListTile(
              leading: Icon(Icons.support_agent, color: Colors.indigo),
              title: Text(
                'Support',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Get help and support',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/support'),
            ),
            ListTile(
              leading: Icon(Icons.library_books, color: Colors.indigo),
              title: Text(
                'Resources',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text(
                'Access educational resources',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              dense: true,
              onTap: () => Get.toNamed('/resources'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAccessCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: Card(
        elevation: 4.0,
        child: ListTile(
          leading: Icon(icon, color: Colors.indigo),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          contentPadding: EdgeInsets.all(16.0),
          onTap: onTap,
        ),
      ),
    );
  }

  // Helper method to build update list tiles
  Widget _buildUpdateTile({
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Icon(Icons.notifications, color: Colors.indigo),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
      dense: true,
      onTap: () {
        // Handle update tile tap
      },
    );
  }
}

