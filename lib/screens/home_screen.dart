import 'package:flutter/material.dart';
import 'box_decoration_screen.dart';
import 'form_screen.dart';
import 'orientation_screen.dart';
import 'popup_menu_screen.dart';
import 'rich_text_screen.dart';

class TaskItem {
  final String number;
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget? targetScreen;

  TaskItem({
    required this.number,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.targetScreen,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TaskItem> tasks = [
    TaskItem(
      number: '2',
      title: 'AppBar Lengkap',
      subtitle: 'Leading, Title, 2 Actions',
      icon: Icons.web,
      targetScreen: null,
    ),
    TaskItem(
      number: '3',
      title: 'BoxDecoration',
      subtitle: 'BorderRadius + Shadow',
      icon: Icons.layers_outlined,
      targetScreen: const BoxDecorationScreen(),
    ),
    TaskItem(
      number: '4',
      title: 'RichText',
      subtitle: 'Minimal 3 style berbeda dalam 1 baris',
      icon: Icons.text_fields,
      targetScreen: const RichTextScreen(),
    ),
    TaskItem(
      number: '5',
      title: 'Form & Validasi',
      subtitle: '3 TextFormField + validasi masing-masing',
      icon: Icons.assignment_outlined,
      targetScreen: const FormScreen(),
    ),
    TaskItem(
      number: '6',
      title: 'Deteksi Orientasi',
      subtitle: 'Portrait: 2 kolom | Landscape: 4 kolom',
      icon: Icons.screen_rotation_outlined,
      targetScreen: const OrientationScreen(),
    ),
    TaskItem(
      number: '7',
      title: 'Popup Menu (Bonus)',
      subtitle: 'PopupMenuButton dengan minimal 4 item',
      icon: Icons.more_vert,
      targetScreen: const PopupMenuScreen(),
    ),
  ];

  void _showNotificationPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.notifications_active, color: Color(0xFF0F172A), size: 48),
              SizedBox(height: 16),
              Text(
                'Notifikasi Dihidupkan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF0F172A),
              ),
              accountName: const Text(
                'NIM: L200230185',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              accountEmail: const Text('Mahasiswa Informatika'),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Color(0xFF0F172A)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'DAFTAR TUGAS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  return ListTile(
                    leading: Icon(task.icon, color: const Color(0xFF334155)),
                    title: Text(task.title),
                    onTap: () {
                      Navigator.pop(context);
                      if (task.targetScreen != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => task.targetScreen!),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
        title: const Text(
          'L200230185 Widgets',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Cari Tugas',
            onPressed: () {
              showSearch(
                context: context,
                delegate: _TaskSearchDelegate(tasks),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifikasi',
            onPressed: () {
              _showNotificationPopup(context);
            },
          ),
        ],
      ),
      
      backgroundColor: const Color(0xFFF8FAFC),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: tasks.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tugas Mandiri - Pertemuan 7',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  Text(
                    'NIM: L200230185',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            );
          }
          
          final task = tasks[index - 1];
          return _TaskCard(
            number: task.number,
            title: task.title,
            subtitle: task.subtitle,
            icon: task.icon,
            isDone: true,
            onTap: task.targetScreen != null
                ? () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => task.targetScreen!),
                    )
                : null,
          );
        },
      ),
    );
  }
}

class _TaskSearchDelegate extends SearchDelegate<String> {
  final List<TaskItem> tasks;

  _TaskSearchDelegate(this.tasks);

  @override
  String get searchFieldLabel => 'Cari tugas...';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = '',
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchResults();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildSearchResults();
  }

  Widget _buildSearchResults() {
    final suggestions = tasks.where((task) {
      final titleLower = task.title.toLowerCase();
      final subtitleLower = task.subtitle.toLowerCase();
      final searchLower = query.toLowerCase();
      return titleLower.contains(searchLower) || subtitleLower.contains(searchLower);
    }).toList();

    if (suggestions.isEmpty) {
      return const Center(
        child: Text('Tugas tidak ditemukan'),
      );
    }

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final task = suggestions[index];
        return ListTile(
          leading: Icon(task.icon, color: Colors.indigo),
          title: Text(task.title),
          subtitle: Text(task.subtitle),
          onTap: () {
            close(context, task.title);
            if (task.targetScreen != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => task.targetScreen!),
              );
            }
          },
        );
      },
    );
  }
}

class _TaskCard extends StatelessWidget {
  final String number;
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isDone;
  final VoidCallback? onTap;

  const _TaskCard({
    required this.number,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isDone,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F172A).withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Icon(
          icon,
          color: const Color(0xFF0F172A),
          size: 28,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isDone)
              const Icon(Icons.check_circle, color: Colors.green, size: 20),
            if (onTap != null)
              const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
