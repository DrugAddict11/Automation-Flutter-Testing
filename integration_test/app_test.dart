import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:simple_todo/main.dart' as app;

void main() {
  group('testing input text', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('testing input text form', (tester) async {
      //pengeksekusian main.dart
      app.main();

      //menunggu animasi selesai berjalan
      await tester.pumpAndSettle();

      //membuat 'finder' untuk objek
      final formulirField = find.byType(TextField);
      final saveButton = find.byType(FloatingActionButton);

      //instruksi kode pengisian todo
      await tester.enterText(formulirField, 'wokwokwokwok');
      await tester.pumpAndSettle();

      //instruksi kode klik tombol +
      await tester.tap(saveButton);
      await tester.pumpAndSettle();
    });
  });
}
