import 'package:flutter/material.dart';

class PopupMenuScreen extends StatelessWidget {
  const PopupMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
        title: const Text(
          'Tugas No. 7 - Popup Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton<String>(
            tooltip: 'Menu Tambahan',
            onSelected: (value) {
              if (value == 'Profil') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DummyProfileScreen()),
                );
              } else if (value == 'Pengaturan') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DummySettingsScreen()),
                );
              } else if (value == 'Bagikan') {
                _showShareBottomSheet(context);
              } else if (value == 'Keluar') {
                _showLogoutDialog(context);
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Profil',
                child: Row(
                  children: [
                    Icon(Icons.person, color: Color(0xFF0F172A)),
                    SizedBox(width: 12),
                    Text('Profil Pengguna'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'Pengaturan',
                child: Row(
                  children: [
                    Icon(Icons.settings, color: Colors.grey),
                    SizedBox(width: 12),
                    Text('Pengaturan'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'Bagikan',
                child: Row(
                  children: [
                    Icon(Icons.share, color: Colors.blue),
                    SizedBox(width: 12),
                    Text('Bagikan Informasi'),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<String>(
                value: 'Keluar',
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.red),
                    SizedBox(width: 12),
                    Text('Keluar', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF8FAFC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF0F172A).withOpacity(0.1),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: const Icon(
                Icons.touch_app,
                size: 64,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Tap ikon 3 titik di pojok kanan atas\nuntuk melihat Popup Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showShareBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bagikan ke:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildShareOption(Icons.message, 'WhatsApp', Colors.green),
                  _buildShareOption(Icons.camera_alt, 'Instagram', Colors.purple),
                  _buildShareOption(Icons.email, 'Email', Colors.red),
                  _buildShareOption(Icons.link, 'Salin Link', Colors.grey),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

  Widget _buildShareOption(IconData icon, String label, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color, size: 28),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Konfirmasi Keluar'),
          content: const Text('Apakah Anda yakin ingin keluar dari aplikasi?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Anda telah keluar')),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Keluar', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }
}

class DummyProfileScreen extends StatelessWidget {
  const DummyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Halaman Profil\n(Dalam Pengembangan)',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}

class DummySettingsScreen extends StatelessWidget {
  const DummySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Halaman Pengaturan\n(Dalam Pengembangan)',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}

