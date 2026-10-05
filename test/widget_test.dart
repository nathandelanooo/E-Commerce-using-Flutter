import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_uts/main.dart' show ProjectUtsApp;
import 'package:project_uts/shoppingcart.dart';

void main() {
  testWidgets('home navigates through product detail, wishlist, and cart', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProjectUtsApp());

    expect(find.text('Selamat Belanja!'), findsOneWidget);
    await tester.tap(find.text('Kategori').last);
    await tester.pumpAndSettle();

    expect(find.text('Semua Produk'), findsOneWidget);
    await tester.ensureVisible(find.text('Kaos Polos Real Heavy Goods').first);
    await tester.tap(find.text('Kaos Polos Real Heavy Goods').first);
    await tester.pumpAndSettle();

    expect(find.text('Detail Produk'), findsOneWidget);
    await tester.tap(
      find.descendant(
        of: find.byType(AppBar),
        matching: find.byIcon(Icons.favorite_border),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Produk yang kamu simpan'), findsOneWidget);
    await tester.tap(find.text('Keranjang').last);
    await tester.pumpAndSettle();

    expect(find.text('Keranjang Saya'), findsOneWidget);
    await tester.longPress(find.text('Hoodie Casual'));
    await tester.pump();
    expect(find.text('Hoodie Casual telah dipilih.'), findsOneWidget);
    await tester.pump(const Duration(seconds: 2));
  });

  testWidgets('shopping cart completes checkout and opens order details', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Keranjang Saya'), findsOneWidget);
    expect(find.text('Hoodie Casual'), findsOneWidget);
    expect(find.text('Total Harga (3 produk)'), findsOneWidget);
    expect(find.text('Rp 847.000'), findsOneWidget);

    await tester.tap(find.text('Checkout'));
    await tester.pumpAndSettle();

    expect(find.text('Ringkasan Pesanan'), findsOneWidget);
    expect(find.byType(BottomNavigationBar), findsNothing);

    await tester.tap(find.text('Buat Pesanan'));
    await tester.pumpAndSettle();

    expect(find.text('Pesanan berhasil dibuat'), findsOneWidget);
    expect(find.byType(BottomNavigationBar), findsNothing);

    await tester.tap(find.text('Detail Pesanan'));
    await tester.pumpAndSettle();

    expect(find.text('Detail Pesanan'), findsOneWidget);
    expect(find.text('Pesanan Dibuat'), findsOneWidget);
    expect(find.byType(BottomNavigationBar), findsNothing);

    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Kembali ke Beranda'));
    await tester.pumpAndSettle();

    expect(find.text('Selamat Belanja!'), findsOneWidget);
  });
}
