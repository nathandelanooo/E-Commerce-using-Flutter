import 'package:flutter/material.dart';
import 'checkout.dart';
import 'homepage.dart';
import 'shoppingcart.dart';
import 'wishlist.dart';

class ProductListingPage extends StatefulWidget {
  const ProductListingPage({super.key});

  @override
  State<ProductListingPage> createState() => _ProductListingPageState();
}

class _ProductListingPageState extends State<ProductListingPage> {

  bool love1 = false;
  bool love2 = false;
  bool love3 = false;
  bool love4 = false;
  bool love5 = false;
  bool love6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,

      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),

        title: const Text(
          'Semua Produk',
          style: TextStyle(
            color: Colors.black,
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
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
                        'Cari produk dalam kategori ini...',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal,

                  child: Row(
                    children: [

                      categoryButton(
                        'Semua',
                        true,
                      ),

                      categoryButton(
                        'Pakaian',
                        false,
                      ),

                      categoryButton(
                        'Sepatu',
                        false,
                      ),

                      categoryButton(
                        'Tas',
                        false,
                      ),

                      categoryButton(
                        'Aksesoris',
                        false,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 22),

                Row(
                  children: [

                    Expanded(
                      child: productCard(
                        'Kaos Polos Real Heavy Goods',
                        'Rp 65.000',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWsLtKT--j0UFqxLOuXlEuUDdPoDfEnlRf_RKve8kjdg&s=10',
                        love6,
                        6,
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: productCard(
                        'Huawei Watch Fit 5 Black',
                        'Rp 1.999.000',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMKbEPS-0hbn_e3EV3WkXXe2VJ6tGQye_F1kkrPEL4Tg&s=10',
                        love5,
                        5,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 14),

                Row(
                  children: [

                    Expanded(
                      child: productCard(
                        'Hoodie Adidas Kit 3-Stripes',
                        'Rp 1.300.000',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTVJ3pIjIZ7pYkvtnnzCSPX8AAj28MCQhUZGIqZDziQg&s=10',
                        love3,
                        3,
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: productCard(
                        'Macbook Air M1 2020 13.3 Inch',
                        'Rp 299.000',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgQMzX8V1azvbqcz9nlB8sMFJiyXIiu4y-EwpY0v5QkA&s=10',
                        love4,
                        4,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 14),

                Row(
                  children: [

                    Expanded(
                      child: productCard(
                        'Nike Zoom Vomero 5 Triple Black',
                        'Rp 2.489.000',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfyml1dRWPRSn9hY4xsFIqoaM7A0qvuyHcCo6Qe8nSlw&s=10',
                        love2,
                        2,
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: productCard(
                        'Hoodie Cotton Fleece Black',
                        'Rp 350.000',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-xYC7MBlA7mtnY78yIBRRJam2Arn1v2uugBUgwl7q3lnNV--kYbey9cU&s=10',
                        love1,
                        1,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue.shade100,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WishlistPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Kategori'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Keranjang'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profil'),
        ],
      ),
    );
  }

  Widget categoryButton(
    String name,
    bool selected,
  ) {
    return Container(
      margin:
          const EdgeInsets.only(right: 8),

      padding:
          const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: selected
            ? Colors.blue
            : Colors.white,

        borderRadius:
            BorderRadius.circular(12),

        border: Border.all(
          color: selected
              ? Colors.blue
              : Colors.grey.shade200,
        ),
      ),

      child: Text(
        name,

        style: TextStyle(
          color: selected
              ? Colors.white
              : Colors.black,

          fontSize: 12,

          fontWeight: selected
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      ),
    );
  }

  Widget productCard(
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
              const DetailProdukPage(),
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

          if (loveNumber == 3) {
            love3 = !love3;
          }

          if (loveNumber == 4) {
            love4 = !love4;
          }

          if (loveNumber == 5) {
            love5 = !love5;
          }

          if (loveNumber == 6) {
            love6 = !love6;
          }
        });
      },

      child: Container(
        height: 285,

        padding:
            const EdgeInsets.all(8),

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
                          size: 55,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                ),

                Positioned(
                  top: 8,
                  right: 8,

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
                  color: Colors.black,
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
                  '5.0',
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

class DetailProdukPage extends StatelessWidget {
  const DetailProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailPage();
  }
}