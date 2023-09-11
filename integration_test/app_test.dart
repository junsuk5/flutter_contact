import 'package:contact/di/di_setup.dart';
import 'package:contact/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  group('end-to-end', () {
    testWidgets('새 연락처 입력 실패', (tester) async {
      // 앱 실행
      await tester.pumpWidget(const MyApp());

      // FAB 클릭
      await tester.tap(find.byIcon(Icons.person_add));
      await tester.pumpAndSettle();

      // 이름 입력
      await tester.enterText(find.byKey(const Key('firstName')), 'John');

      // 저장 버튼 클릭
      await tester.tap(find.text('저장'));
      await tester.pumpAndSettle();

      // 에러 표시 확인
      // expect(find.text('성을 입력해 주세요.'), findsOneWidget);

      // 닫기 버튼 클릭
      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();

      // 연락처 (0) 텍스트 확인
      expect(find.text('연락처 (0)'), findsOneWidget);
    });

    testWidgets('새 연락처 입력 성공', (tester) async {
      // 앱 실행
      await tester.pumpWidget(const MyApp());

      // FAB 클릭
      await tester.tap(find.byIcon(Icons.person_add));
      await tester.pumpAndSettle();

      // 연락처 정보 입력
      await tester.enterText(find.byKey(const Key('firstName')), 'John');
      await tester.enterText(find.byKey(const Key('lastName')), 'Doe');
      await tester.enterText(find.byKey(const Key('email')), 'test@test.com');
      await tester.enterText(find.byKey(const Key('phoneNumber')), '12345678');

      // 저장 버튼 클릭
      await tester.tap(find.text('저장'));
      await tester.pumpAndSettle();

      // 연락처 (1) 텍스트 확인
      expect(find.text('연락처 (1)'), findsOneWidget);
    });
  });
}
