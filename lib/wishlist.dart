import 'package:flutter/material.dart';
import 'homepage.dart';
import 'productpage.dart';
import 'shoppingcart.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});
  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  int selectedTab = 0;
  bool kaos_visible = true;
  bool hoodie_visible = true;
  bool macbook_visible = true;
  bool nike_visible = true;
  bool tas_visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Wishlist', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Produk yang kamu simpan', style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
        toolbarHeight: 70,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                kaos_visible = false;
                hoodie_visible = false;
                macbook_visible = false;
                nike_visible = false;
                tas_visible = false;
              });
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.delete_outline, color: Colors.black, size: 28),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = 0;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: selectedTab == 0 ? Colors.blue : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Semua (5)', style: TextStyle(color: selectedTab == 0 ? Colors.white : Colors.black87)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = 1;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: selectedTab == 1 ? Colors.blue : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Fashion (2)', style: TextStyle(color: selectedTab == 1 ? Colors.white : Colors.black87)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = 2;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: selectedTab == 2 ? Colors.blue : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Elektronik (2)', style: TextStyle(color: selectedTab == 2 ? Colors.white : Colors.black87)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = 3;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: selectedTab == 3 ? Colors.blue : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Aksesoris (1)', style: TextStyle(color: selectedTab == 3 ? Colors.white : Colors.black87)),
                  ),
                ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (kaos_visible)
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.network('GANTI_URL_GAMBAR_KAOS', fit: BoxFit.contain, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 50),),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(child: Text("Kaos Polos Real Heavy Goods", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          kaos_visible = false;
                                        });
                                      },
                                      child: const Icon(Icons.delete_outline, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const Text("Fashion", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                const SizedBox(height: 4),
                                const Text("Rp 89.000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                                const Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    SizedBox(width: 4),
                                    Text("4.8  (120)", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.blue),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: FittedBox(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(Icons.shopping_cart_outlined, size: 14, color: Colors.blue),
                                                  SizedBox(width: 4),
                                                  Text('Pindah Keranjang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 9),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: Text('Beli Sekarang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (hoodie_visible)
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtkEK0ODQPr7QWH9P9MWl71SxkXHBzs9PWzTIDaCGW_8-bJ7S3-yNGAq0&s=10', fit: BoxFit.contain, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 50),),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(child: Text("Hoodie Casual", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          hoodie_visible = false;
                                        });
                                      },
                                      child: const Icon(Icons.delete_outline, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const Text("Fashion", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                const SizedBox(height: 4),
                                const Text("Rp 199.000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                                const Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    SizedBox(width: 4),
                                    Text("4.8  (86)", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.blue),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: FittedBox(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(Icons.shopping_cart_outlined, size: 14, color: Colors.blue),
                                                  SizedBox(width: 4),
                                                  Text('Pindah Keranjang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 9),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: Text('Beli Sekarang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (macbook_visible)
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.network('GANTI_URL_GAMBAR_MACBOOK', fit: BoxFit.contain, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 50),),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(child: Text("Macbook Air M1 2020 13.3 Inch", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          macbook_visible = false;
                                        });
                                      },
                                      child: const Icon(Icons.delete_outline, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const Text("Elektronik", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                const SizedBox(height: 4),
                                const Text("Rp 8.999.000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                                const Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    SizedBox(width: 4),
                                    Text("4.9  (210)", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.blue),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: FittedBox(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(Icons.shopping_cart_outlined, size: 14, color: Colors.blue),
                                                  SizedBox(width: 4),
                                                  Text('Pindah Keranjang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 9),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: Text('Beli Sekarang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (nike_visible)
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.network('GANTI_URL_GAMBAR_NIKE', fit: BoxFit.contain, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 50),),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(child: Text("Nike Air Force 1 '07", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          nike_visible = false;
                                        });
                                      },
                                      child: const Icon(Icons.delete_outline, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const Text("Sepatu", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                const SizedBox(height: 4),
                                const Text("Rp 1.599.000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                                const Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    SizedBox(width: 4),
                                    Text("4.8  (95)", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.blue),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: FittedBox(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(Icons.shopping_cart_outlined, size: 14, color: Colors.blue),
                                                  SizedBox(width: 4),
                                                  Text('Pindah Keranjang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 9),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: Text('Beli Sekarang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (tas_visible)
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.network('GANTI_URL_GAMBAR_TAS', fit: BoxFit.contain, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 50),),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(child: Text("Tas Ransel", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          tas_visible = false;
                                        });
                                      },
                                      child: const Icon(Icons.delete_outline, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const Text("Aksesoris", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                const SizedBox(height: 4),
                                const Text("Rp 299.000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                                const Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    SizedBox(width: 4),
                                    Text("4.7  (64)", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.blue),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: FittedBox(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(Icons.shopping_cart_outlined, size: 14, color: Colors.blue),
                                                  SizedBox(width: 4),
                                                  Text('Pindah Keranjang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 9),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Center(
                                            child: Text('Beli Sekarang', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        currentIndex: 2,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue.shade100,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Kategori'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Keranjang'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profil'),
        ],
      ),
    );
  }
}