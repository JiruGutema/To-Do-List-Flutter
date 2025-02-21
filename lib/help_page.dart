import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Instructions'),
        titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24,
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle('Getting Started'),
              _buildSection(
                icon: Icons.info_outline,
                title: 'App Overview',
                content:
                    'Tooran allows you to manage tasks within categories. Create categories, add tasks, and manage them efficiently with features like task completion and deletion. \n\n'
                    'Tooran offers an easy-to-use interface and intuitive functionality to enhance your productivity. The biggest update yet to come',
              ),
              _buildSection(
                icon: Icons.star_border,
                title: 'Unique Features',
                content:
                    '• No Ads 😮‍💨\n'
                    '• Simple, intuitive design.\n'
                    '• Organize tasks into categories for better management.\n'
                    '• Automatic real-time updates.\n',
              ),
              _buildTitle('How to Use the App'),
              _buildSection(
                icon: Icons.category_outlined,
                title: 'Adding a Category',
                content:
                    '1. Tap the (+) button at the bottom of the app to create a new category.\n'
                    '2. Enter the category name in the input field at the top and press (✔) to save.'
              ),
              _buildSection(
                icon: Icons.task_alt,
                title: 'Adding a Task',
                content:
                    '1. Tap on an existing category to expand it.\n'
                    '2. Tap the (+) button inside the category to add a new task.\n'
                    '3. Enter the task name and press (✔) to save.',
              ),
              _buildSection(
                icon: Icons.check_circle_outline,
                title: 'Marking a Task as Completed',
                content:
                    '• Tap the checkbox next to a task to mark it as completed.\n'
                    '• Completed tasks will appear with a faded grey color effect.\n'
                    '• You can delete the task afterwards or change its name to other tasks.'
              ),
              _buildSection(
                icon: Icons.delete_outline,
                title: 'Deleting a Task or Category',
                content:
                    '• Long-press a category name to delete it.\n'
                    '• Use the trash button on the task to remove it from a category\n'
                    '• You can also long-press a task to remove it from a category.',
              ),
              _buildSection(
                icon: Icons.tips_and_updates,
                title: 'Tips',
                content:
                    '• Do not open mulitple text fields at same time.\n'
                    '• If you open, try to close the one which is opened first.\n'

              ),
              _buildSection(
                icon: Icons.system_update,
                title: 'To be Updated',
                content:
                    '•  The following are the features I\'m working on it right now\n\n'
                    '-> Add Widgets\n'
                    '-> Add Notification\n'
                    '-> Add Time based catagory\n'

              ),
                _buildSection(
                icon: Icons.help_outline,
                title: 'Need Assistance?',
                content:
                  'For help, inquiries, or suggestions, please feel free to reach out.\n\n\n'
                  '📧 Contact: \n\n'
                  'jethior1@gmail.com or \n'
                  'jirudagutema@gmail.com',
                ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: const Text(
                    'Back to Home',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
      ),
    );
  }

  Widget _buildSection({
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 26, color: Colors.teal),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
