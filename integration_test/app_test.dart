import 'package:contact/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end', () {
    testWidgets('앱 실행하여 FAB 클릭 후 닫기 동작 테스트', (tester) async {
      // 앱 실행
      await tester.pumpWidget(const MyApp());

      // FAB 클릭
      await tester.tap(find.byIcon(Icons.person_add));
      await tester.pumpAndSettle();

      // 닫기 버튼 클릭
      await tester.tap(find.text('종료'));
      await tester.pumpAndSettle();

      // 연락처 (0) 텍스트 확인
      expect(find.text('연락처 (0)'), findsOneWidget);
    });
  });
}
