import 'package:flutter/material.dart';
import 'shoppingcart.dart';
import 'wishlist.dart';
import 'transaksi.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  bool love = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Produk',
        ),

        actions: [

          IconButton(
            onPressed: () {
              setState(() {
                love = !love;
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WishlistPage()),
              );
            },
            icon: Icon(
              love
                  ? Icons.favorite
                  : Icons.favorite_border,
            ),
            color: love ? Colors.red : Colors.black,
          ),

          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          ),

          const SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Container(
                  width: double.infinity,
                  height: 300,

                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius:
                        BorderRadius.circular(10),
                  ),

                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWsLtKT--j0UFqxLOuXlEuUDdPoDfEnlRf_RKve8kjdg&s=10',
                    fit: BoxFit.fill,

                    errorBuilder: (
                      BuildContext context,
                      Object exception,
                      StackTrace? stackTrace,
                    ) {
                      return const Icon(
                        Icons.image,
                        size: 100,
                        color: Colors.grey,
                      );
                    },
                  ),
                ),

                const SizedBox(height: 15),

                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,

                  children: [

                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.blue,
                    ),

                    SizedBox(width: 5),

                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.grey,
                    ),

                    SizedBox(width: 5),

                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.grey,
                    ),

                    SizedBox(width: 5),

                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.grey,
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    const Expanded(
                      child: Text(
                        'Kaos Polos Real Heavy Goods',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ),

                    const Text(
                      'Stok Tersedia',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [

                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.orange,
                    ),

                    SizedBox(width: 5),

                    Text(
                      '5.0 (120 ulasan)',
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                const Row(
                  children: [

                    Text(
                      'Rp 65.000',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: 10),
                  ],
                ),

                const SizedBox(height: 25),

                const Text(
                  'Pilih Warna',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [

                    colorItem(
                      Colors.white,
                    ),

                    colorItem(
                      Colors.black,
                    ),

                    colorItem(
                      Colors.blueGrey,
                    ),

                    colorItem(
                      Colors.brown,
                    ),

                    colorItem(
                      Colors.blue,
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                const Text(
                  'Pilih Ukuran',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [

                    sizeItem('S'),

                    sizeItem('M'),

                    sizeItem('L'),

                    sizeItem('XL'),
                  ],
                ),

                const SizedBox(height: 25),

                const Text(
                  'Deskripsi Produk',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Kaos Polos Real Heavy Goods dengan bahan premium '
                  'yang tebal, nyaman, dan cocok untuk digunakan sehari-hari. '
                  'Desain polosnya simpel dan mudah '
                  'dipadukan dengan berbagai outfit.',
                  style: TextStyle(
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  children: [

                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          love = !love;
                        });
                      },

                      child: Container(
                        width: 55,
                        height: 50,

                        decoration:
                            BoxDecoration(
                          border:
                              Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius:
                              BorderRadius.circular(
                            8,
                          ),
                        ),

                        child: Icon(
                          love
                              ? Icons.favorite
                              : Icons.favorite_border,

                          color: love
                              ? Colors.red
                              : Colors.black,
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartPage(),
                            ),
                          );
                        },
                        
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.blue,
                          padding:
                              const EdgeInsets.symmetric(
                            vertical: 25,
                          ),
                        ),

                        child: const Text(
                          'Masukkan Keranjang',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget colorItem(Color color) {
    return Container(
      width: 40,
      height: 40,

      margin:
          const EdgeInsets.only(right: 10),

      decoration: BoxDecoration(
        color: color,
        border:
            Border.all(
          color: Colors.grey,
        ),
        borderRadius:
            BorderRadius.circular(8),
      ),
    );
  }

  Widget sizeItem(String size) {
    return Container(
      width: 50,
      height: 40,

      margin:
          const EdgeInsets.only(right: 10),

      decoration: BoxDecoration(
        border:
            Border.all(
          color: Colors.grey,
        ),
        borderRadius:
            BorderRadius.circular(8),
      ),

      child: Center(
        child: Text(
          size,
        ),
      ),
    );
  }
}

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ringkasan Pesanan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('Hoodie Casual  x1                 Rp 199.000'),
            const SizedBox(height: 8),
            const Text('Sneakers Sport  x1               Rp 349.000'),
            const SizedBox(height: 8),
            const Text('Tas Ransel  x1                    Rp 299.000'),
            const Divider(height: 32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Pembayaran'),
                Text(
                  'Rp 847.000',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TransaksiPage(),
                    ),
                  );
                },
                child: const Text('Buat Pesanan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}