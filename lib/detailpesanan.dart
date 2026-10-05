import 'package:flutter/material.dart';

class DetailPesananPage extends StatelessWidget {
  const DetailPesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text('Detail Pesanan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('#SP20261001', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('1 Okt 2026, 14:30', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text('Selesai', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(width: 14, height: 14, decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
                            Container(width: 2, height: 26, color: Colors.green),
                            Container(
                              width: 14,
                              height: 14,
                              decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                              child: Center(
                                child: Container(width: 6, height: 6, decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle)),
                              ),
                            ),
                            Container(width: 2, height: 26, color: Colors.green),
                            Container(width: 14, height: 14, decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
                            Container(width: 2, height: 26, color: Colors.green),
                            Container(width: 14, height: 14, decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
                          ],
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Pesanan Dibuat', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                  Text('1 Okt 2026, 14:30', style: TextStyle(fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Diproses', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                  Text('1 Okt 2026, 15:00', style: TextStyle(fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Dikirim', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                  Text('2 Okt 2026, 10:00', style: TextStyle(fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Selesai', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                Text('3 Okt 2026, 14:20', style: TextStyle(fontSize: 12, color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Produk (2)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtkEK0ODQPr7QWH9P9MWl71SxkXHBzs9PWzTIDaCGW_8-bJ7S3-yNGAq0&s=10', width: 60, height: 60, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 60),),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hoodie Casual', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                              Text('Abu-abu, M', style: TextStyle(fontSize: 12, color: Colors.grey)),
                              Text('Rp 199.000', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        const Text('x1', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWcEtZIj1iexwUJt-u0U3svK5_6s-i4eFGR6Cv7gVK2llL44cdaQcNAmI&s=10', width: 60, height: 60, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 60),),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sneakers Sport', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                              Text('Putih, 42', style: TextStyle(fontSize: 12, color: Colors.grey)),
                              Text('Rp 349.000', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        const Text('x1', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}