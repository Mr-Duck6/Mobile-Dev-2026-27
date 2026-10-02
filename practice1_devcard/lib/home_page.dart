import 'package:flutter/material.dart';
import 'contact_tile.dart';

class HomePage extends StatelessWidget
 {
  final VoidCallback onThemeChanged;

  const HomePage({super.key, required this.onThemeChanged});

  @override
  Widget build(BuildContext context)
   {
    final textColor = Theme.of(context).colorScheme.onSurface;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Візитка розробника'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://st.depositphotos.com/3538103/5151/i/450/depositphotos_51514147-stock-photo-business-man-icon.jpg',
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Develop Name',
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 16,
                color: textColor.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 30),

            const ContactTile(
              icon: Icons.email, 
              text: 't.pivovar@istu.edu.ua',
            ),
            const SizedBox(height: 12),
            const ContactTile(
              icon: Icons.phone, 
              text: '066 257 3667',
            ),
            const SizedBox(height: 12),
            const ContactTile(
              icon: Icons.code, 
              text: 'github.com/developer',
            ),

            const Spacer(),

            ElevatedButton.icon(
              onPressed: onThemeChanged,
              icon: const Icon(Icons.brightness_6),
              label: const Text('Змінити тему'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}