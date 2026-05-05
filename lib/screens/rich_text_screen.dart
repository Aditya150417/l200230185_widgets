import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
        title: const Text(
          'Tugas No. 4 - RichText',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color(0xFFF8FAFC),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SectionCard(
              label: '1. Bold + Normal + Italic',
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                  children: [
                    TextSpan(
                      text: 'Halo ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A),
                      ),
                    ),
                    TextSpan(
                      text: 'Dunia ',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(
                      text: 'Flutter!',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            _SectionCard(
              label: '2. Ukuran Font Berbeda',
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Kecil ',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Sedang ',
                      style: TextStyle(fontSize: 18, color: Color(0xFF0F172A)),
                    ),
                    TextSpan(
                      text: 'BESAR',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            _SectionCard(
              label: '3. Warna + Underline + Background',
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18),
                  children: [
                    const TextSpan(
                      text: 'Merah ',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Underline ',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 2,
                      ),
                    ),
                    TextSpan(
                      text: 'Highlight',
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.yellow.shade300,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            _SectionCard(
              label: '4. Kalimat Nyata - Kombinasi Lengkap',
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                  children: [
                    const TextSpan(text: 'NIM: '),
                    const TextSpan(
                      text: 'L200230185',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A),
                        fontSize: 18,
                      ),
                    ),
                    const TextSpan(text: ' — '),
                    const TextSpan(
                      text: 'Informatika',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.teal,
                      ),
                    ),
                    TextSpan(
                      text: ' ✓ Aktif',
                      style: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.green.shade50,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            _SectionCard(
              label: '5. Strikethrough + LetterSpacing + Shadow',
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18),
                  children: [
                    const TextSpan(
                      text: 'Coret ',
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.red,
                        decorationThickness: 2,
                      ),
                    ),
                    const TextSpan(
                      text: 'SPASI ',
                      style: TextStyle(
                        color: Colors.purple,
                        letterSpacing: 6,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Shadow',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.orange.withOpacity(0.5),
                            blurRadius: 6,
                            offset: const Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String label;
  final Widget child;

  const _SectionCard({required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F172A).withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
              letterSpacing: 0.4,
            ),
          ),
          const Divider(height: 16),
          child,
        ],
      ),
    );
  }
}
