import 'package:flutter/material.dart';

class KopiTukuCard extends StatelessWidget {
  const KopiTukuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/GrabAI_Logo.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('1/8', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      const Icon(Icons.star, color: Colors.green, size: 16),
                    const Icon(Icons.star_half, color: Colors.green, size: 16),
                    const SizedBox(width: 4),
                    const Text('4.9/5 (2090 reviews)', style: TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Kopi Tuku',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Jl. Kemanggisan Raya No. 11, Kemanggisan,\nJakarta Barat',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Trip fair: Rp12.000 - Rp35.0000',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Bring me there!'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

