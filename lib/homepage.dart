import 'package:flutter/material.dart';
import 'productpage.dart';
import 'shoppingcart.dart';
import 'wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool love1 = false;
  bool love2 = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth =
        MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade50,

      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,

        title: const Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [
            Text(
              'Halo, Nathan',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            Text(
              'Selamat Belanja!',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),

        actions: [
          IconButton(
            onPressed: () {},

            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: screenWidth * 0.9,
            margin: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment:
                CrossAxisAlignment.start,

              children: [

                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 14,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey.shade200,
                    ),
                  ),

                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 23,
                      ),

                      SizedBox(width: 10),

                      Text(
                        'Cari produk, kategori, atau merek...',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  padding:
                    const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                      BorderRadius.circular(15),
                  ),

                  child: Row(
                    children: [

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                            CrossAxisAlignment.start,

                          children: [

                            const Text(
                              'Diskon Hingga',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight:
                                  FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),

                            const Text(
                              '50%',
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight:
                                  FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(height: 5),

                            const Text(
                              'Belanja kebutuhanmu\ndengan harga terbaik',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                height: 1.4,
                              ),
                            ),

                            const SizedBox(height: 15),

                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductPage(),
                                  ),
                                );
                              },

                              style:
                                  ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.white,

                                foregroundColor:
                                    Colors.blue,

                                shape:
                                    RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(
                                    20,
                                  ),
                                ),
                              ),

                              child: const Text(
                                'Belanja Sekarang',
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 75,
                        height: 75,

                        decoration: BoxDecoration(
                          color:
                              Colors.white.withOpacity(
                            0.15,
                          ),

                          borderRadius:
                              BorderRadius.circular(15),
                        ),

                        child: const Icon(
                          Icons.shopping_bag,
                          size: 45,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    const Text(
                      'Kategori',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ProductPage(),
                          ),
                        );
                      },

                      child: const Text(
                        'Lihat Semua',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal,

                  child: Row(
                    children: [

                      categoryItem(
                        'Fashion',
                        Icons.checkroom,
                      ),

                      categoryItem(
                        'Elektronik',
                        Icons.laptop,
                      ),

                      categoryItem(
                        'Aksesoris',
                        Icons.watch,
                      ),

                      categoryItem(
                        'Sepatu',
                        Icons.directions_run,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    const Text(
                      'Rekomendasi Untuk Kamu',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ProductPage(),
                          ),
                        );
                      },

                      child: const Text(
                        'Lihat Semua',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal,

                  child: Row(
                    children: [

                      productItem(
                        'Hoodie Cotton Fleece Black',
                        'Rp 350.000',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-xYC7MBlA7mtnY78yIBRRJam2Arn1v2uugBUgwl7q3lnNV--kYbey9cU&s=10',
                        love1,
                        1,
                      ),

                      productItem(
                        'Nike Zoom Vomero 5 Triple Black',
                        'Rp 2.489.000',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfyml1dRWPRSn9hY4xsFIqoaM7A0qvuyHcCo6Qe8nSlw&s=10',
                        love2,
                        2,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar:
          BottomNavigationBar(
        currentIndex: 0,

        backgroundColor: Colors.blue,

        selectedItemColor: Colors.white,

        unselectedItemColor:
            Colors.blue.shade100,

        type:
            BottomNavigationBarType.fixed,

        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WishlistPage(),
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          }
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Kategori',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Keranjang',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget categoryItem(
    String name,
    IconData icon,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const ProductPage(),
          ),
        );
      },

      child: Container(
        width: 82,
        height: 88,

        margin:
            const EdgeInsets.only(right: 10),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius:
              BorderRadius.circular(12),

          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            Icon(
              icon,
              size: 30,
              color: Colors.blue,
            ),

            const SizedBox(height: 7),

            Text(
              name,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productItem(
    String name,
    String price,
    String image,
    bool love,
    int loveNumber,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const ProductPage(),
          ),
        );
      },

      onDoubleTap: () {
        setState(() {

          if (loveNumber == 1) {
            love1 = !love1;
          }

          if (loveNumber == 2) {
            love2 = !love2;
          }
        });
      },

      child: Container(
        width: 180,
        height: 300,

        margin:
            const EdgeInsets.only(right: 12),

        padding: const EdgeInsets.all(8),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius:
              BorderRadius.circular(18),

          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Stack(
              children: [

                Container(
                  width: double.infinity,
                  height: 145,

                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,

                    borderRadius:
                        BorderRadius.circular(14),
                  ),

                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(14),

                    child: Image.network(
                      image,

                      fit: BoxFit.contain,

                      errorBuilder: (
                        BuildContext context,
                        Object exception,
                        StackTrace? stackTrace,
                      ) {
                        return const Icon(
                          Icons.image,
                          size: 60,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                ),

                Positioned(
                  right: 8,
                  top: 8,

                  child: Container(
                    width: 34,
                    height: 34,

                    decoration:
                        const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),

                    child: Icon(
                      love
                          ? Icons.favorite
                          : Icons.favorite_border,

                      color: love
                          ? Colors.red
                          : Colors.black,

                      size: 20,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 9),

            SizedBox(
              height: 40,

              child: Text(
                name,

                maxLines: 2,

                overflow:
                    TextOverflow.ellipsis,

                style: const TextStyle(
                  fontSize: 14,
                  fontWeight:
                      FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 3),

            Text(
              price,

              style: const TextStyle(
                fontSize: 15,
                color: Colors.blue,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            const Row(
              children: [

                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.orange,
                ),

                SizedBox(width: 4),

                Text(
                  '4.8',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}