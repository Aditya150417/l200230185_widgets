import 'package:flutter/material.dart';

class OrientationScreen extends StatelessWidget {
  const OrientationScreen({super.key});

  static const List<Map<String, dynamic>> _items = [
    {'icon': Icons.flutter_dash, 'label': 'Flutter', 'color': 0xFF42A5F5},
    {'icon': Icons.phone_android, 'label': 'Android', 'color': 0xFF66BB6A},
    {'icon': Icons.phone_iphone, 'label': 'iOS', 'color': 0xFFAB47BC},
    {'icon': Icons.web, 'label': 'Web', 'color': 0xFFFF7043},
    {'icon': Icons.desktop_mac, 'label': 'Desktop', 'color': 0xFF26C6DA},
    {'icon': Icons.layers, 'label': 'Widgets', 'color': 0xFFFFCA28},
    {'icon': Icons.animation, 'label': 'Animation', 'color': 0xFFEC407A},
    {'icon': Icons.storage, 'label': 'Database', 'color': 0xFF8D6E63},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
        title: const Text(
          'Tugas No. 6 - Orientasi',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color(0xFFF8FAFC),
      body: OrientationBuilder(
        builder: (context, orientation) {
          final isPortrait = orientation == Orientation.portrait;
          final crossAxisCount = isPortrait ? 2 : 4;

          return Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: isPortrait
                        ? [const Color(0xFF1E293B), const Color(0xFF334155)]
                        : [const Color(0xFF00897B), const Color(0xFF00ACC1)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: (isPortrait ? const Color(0xFF0F172A) : Colors.teal)
                          .withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      isPortrait
                          ? Icons.stay_current_portrait
                          : Icons.stay_current_landscape,
                      color: Colors.white,
                      size: 28,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isPortrait ? 'Mode Portrait' : 'Mode Landscape',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Grid: $crossAxisCount kolom',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: isPortrait ? 1.0 : 1.1,
                  ),
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    final item = _items[index];
                    final color = Color(item['color'] as int);
                    return _GridCard(
                      icon: item['icon'] as IconData,
                      label: item['label'] as String,
                      color: color,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _GridCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _GridCard({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: color.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 32),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: color.withOpacity(0.85),
            ),
          ),
        ],
      ),
    );
  }
}
