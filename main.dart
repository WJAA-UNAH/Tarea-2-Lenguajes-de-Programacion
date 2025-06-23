import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
  ));
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to\nReminders',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            SizedBox(height: 32),

            
            FeatureItem(
              icon: Icons.flash_on, 
              title: 'Quick Creation',
              description:
                  'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
            ),
            SizedBox(height: 20),

            FeatureItem(
              icon: Icons.shopping_cart, 
              title: 'Grocery Shopping',
              description:
                  'Create a Grocery List that automatically sorts items you add by category.',
            ),
            SizedBox(height: 20),

            FeatureItem(
              icon: Icons.share, 
              title: 'Easy Sharing',
              description:
                  'Collaborate on a list, and even assign individual tasks.',
            ),
            SizedBox(height: 20),

            FeatureItem(
              icon: Icons.folder_open, 
              title: 'Powerful Organization',
              description:
                  'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
            ),

            Spacer(),

            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );        
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 32,
          color: Colors.blueAccent,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.3),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
