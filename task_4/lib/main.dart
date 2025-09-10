import 'package:flutter/material.dart';

void main() {
  runApp(const PersonalProfileApp());
}

class PersonalProfileApp extends StatelessWidget {
  const PersonalProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Profile Card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfileCardPage(),
    );
  }
}

class ProfileCardPage extends StatelessWidget {
  const ProfileCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Personal Profile"), centerTitle: true),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60",
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Maria Johnson",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Divider(height: 30, thickness: 1),
                const ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text("maria.johnson@apexifytech.com"),
                ),
                const ListTile(
                  leading: Icon(Icons.phone, color: Colors.green),
                  title: Text("+1 234 567 890"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
