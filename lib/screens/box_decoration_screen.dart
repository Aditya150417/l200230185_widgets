import 'package:flutter/material.dart';

class BoxDecorationScreen extends StatelessWidget {
  const BoxDecorationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
        title: const Text(
          'Tugas No. 3 - BoxDecoration',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color(0xFFF8FAFC),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SectionLabel(label: '1. BorderRadius + Shadow'),
            const SizedBox(height: 10),
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: _buildCardContent(isDarkBackground: false),
            ),

            const SizedBox(height: 24),
            const SectionLabel(label: '2. Gradient + BorderRadius + Shadow'),
            const SizedBox(height: 10),
            Container(
              height: 120,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1E293B), Color(0xFF334155)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF0F172A).withOpacity(0.4),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: _buildCardContent(isDarkBackground: true),
            ),

            const SizedBox(height: 24),
            const SectionLabel(label: '3. Border + Radius Per Sudut + Multi Shadow'),
            const SizedBox(height: 10),
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFF0F172A), width: 2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF0F172A),
                    blurRadius: 0,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: _buildCardContent(isDarkBackground: false),
            ),

            const SizedBox(height: 24),
            const SectionLabel(label: '4. Card Style (Kombinasi)'),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF0F172A).withOpacity(0.15),
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: _buildCardContent(isDarkBackground: false),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardContent({required bool isDarkBackground}) {
    final titleColor = isDarkBackground ? Colors.white : Colors.black87;
    final subtitleColor = isDarkBackground ? Colors.white70 : Colors.grey;
    final iconBgColor = isDarkBackground ? Colors.white24 : const Color(0xFF0F172A);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.person, color: Colors.white, size: 32),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'L200230185',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                ),
              ),
              Text(
                'Mahasiswa Informatika',
                style: TextStyle(color: subtitleColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SectionLabel extends StatelessWidget {
  final String label;
  const SectionLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0F172A),
        letterSpacing: 0.5,
      ),
    );
  }
}
