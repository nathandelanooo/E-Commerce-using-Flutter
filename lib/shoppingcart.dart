import 'package:flutter/material.dart';
import 'checkout.dart';
import 'homepage.dart';
import 'productpage.dart';
import 'wishlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CartPage(),
    );
  }
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool hoodie_selected = true;
  bool sneakers_selected = true;
  bool tas_selected = true;
  bool hoodie_visible = true;
  bool sneakers_visible = true;
  bool tas_visible = true;
  int hoodie_quantity = 1;
  int sneakers_quantity = 1;
  int tas_quantity = 1;
  int hoodie_price = 199000;
  int sneakers_price = 349000;
  int tas_price = 299000;
  bool showNotif = false;
  String notifProductName = '';

  String rupiah(int n) => 'Rp ${n.toString().replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (m) => '.')}';

  total_quantity() {
    return (hoodie_selected ? hoodie_quantity : 0) + (sneakers_selected ? sneakers_quantity : 0) + (tas_selected ? tas_quantity : 0);
  }
  total_price() {
    return (hoodie_selected ? hoodie_quantity * hoodie_price : 0) + (sneakers_selected ? sneakers_quantity * sneakers_price : 0) + (tas_selected ? tas_quantity * tas_price : 0);
  }

  void showProductSelectedNotif(String productName) {
    setState(() {
      showNotif = true;
      notifProductName = productName;
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          showNotif = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text('Keranjang Saya', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                hoodie_visible = false;
                sneakers_visible = false;
                tas_visible = false;
                hoodie_selected = false;
                sneakers_selected = false;
                tas_selected = false;
              });
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Center(child: Text('Hapus Semua', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (hoodie_visible)
                    GestureDetector(
                      onLongPress: () {
                        showProductSelectedNotif('Hoodie Casual');
                      },
                      child: Container(
                      height: 120,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            value: hoodie_selected,
                            onChanged: (value) {
                              setState(() {
                                hoodie_selected = value!;
                              });
                            },
                          ),
                          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtkEK0ODQPr7QWH9P9MWl71SxkXHBzs9PWzTIDaCGW_8-bJ7S3-yNGAq0&s=10', width: 60, height: 60, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 60),),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Hoodie Casual", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                const Text("Abu-abu, M", style: TextStyle(fontSize: 14),),
                                Text(rupiah(hoodie_price), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (hoodie_quantity > 1) {
                                                hoodie_quantity--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(255, 179, 201, 219),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: const Icon(Icons.remove, color: Color.fromARGB(255, 3, 36, 78), size: 16),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text('$hoodie_quantity', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                        const SizedBox(width: 8),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              hoodie_quantity++;
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: const Icon(Icons.add, color: Colors.white, size: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          hoodie_visible = false;
                                          hoodie_selected = false;
                                        });
                                      },
                                      child: const Icon(Icons.delete_outline, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                  if (sneakers_visible)
                    GestureDetector(
                      onLongPress: () {
                        showProductSelectedNotif('Sneakers Sport');
                      },
                      child: Container(
                      height: 120,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            value: sneakers_selected,
                            onChanged: (value) {
                              setState(() {
                                sneakers_selected = value!;
                              });
                            },
                          ),
                          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWcEtZIj1iexwUJt-u0U3svK5_6s-i4eFGR6Cv7gVK2llL44cdaQcNAmI&s=10', width: 60, height: 60, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 60),),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Sneakers Sport", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                const Text("Putih, 42", style: TextStyle(fontSize: 14),),
                                Text(rupiah(sneakers_price), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (sneakers_quantity > 1) {
                                                sneakers_quantity--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(255, 179, 201, 219),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: const Icon(Icons.remove, color: Color.fromARGB(255, 3, 36, 78), size: 16),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text('$sneakers_quantity', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                        const SizedBox(width: 8),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              sneakers_quantity++;
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: const Icon(Icons.add, color: Colors.white, size: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          sneakers_visible = false;
                                          sneakers_selected = false;
                                        });
                                      },
                                      child: const Icon(Icons.delete_outline, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                  if (tas_visible)
                    GestureDetector(
                      onLongPress: () {
                        showProductSelectedNotif('Tas Ransel');
                      },
                      child: Container(
                      height: 120,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            value: tas_selected,
                            onChanged: (value) {
                              setState(() {
                                tas_selected = value!;
                              });
                            },
                          ),
                          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6Gi5cPX3gOYx8E5bTrG7uTbl_W1C8qEo6CCUdwULwv63KUmu1xFKQXeIl&s=10', width: 60, height: 60, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 60),),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Tas Ransel", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                const Text("Hitam", style: TextStyle(fontSize: 14),),
                                Text(rupiah(tas_price), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (tas_quantity > 1) {
                                                tas_quantity--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(255, 179, 201, 219),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: const Icon(Icons.remove, color: Color.fromARGB(255, 3, 36, 78), size: 16),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text('$tas_quantity', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                        const SizedBox(width: 8),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              tas_quantity++;
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: const Icon(Icons.add, color: Colors.white, size: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          tas_visible = false;
                                          tas_selected = false;
                                        });
                                      },
                                      child: const Icon(Icons.delete_outline, color: Colors.red),
                                    ),
                                  ],
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
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: hoodie_selected && sneakers_selected && tas_selected,
                      onChanged: (value) {
                        setState(() {
                          hoodie_selected = value!;
                          sneakers_selected = value;
                          tas_selected = value;
                        });
                      },
                    ),
                    const Text('Pilih Semua'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Harga (${total_quantity()} produk)',
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Text(
                          rupiah(total_price()),
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CheckoutPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Checkout', style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
          if (showNotif)
            Positioned(
              top: 16,
              left: 16,
              right: 16,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E2C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle, color: Colors.green, size: 28),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Produk dipilih!',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '$notifProductName telah dipilih.',
                            style: const TextStyle(color: Colors.white70, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showNotif = false;
                        });
                      },
                      child: const Icon(Icons.close, color: Colors.white70, size: 20),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        currentIndex: 3,
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
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WishlistPage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Kategori'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Keranjang'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profil'),
        ],
      ),
    );
  }
}