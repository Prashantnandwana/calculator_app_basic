
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:calculator_app_basic/main.dart';

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    
//     await tester.pumpWidget(const MyApp());

 
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

   
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();


//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }

import 'package:calculator_app_basic/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets; ("hello world test", (WidgetTester tester) async{
await tester.pumpWidget(MyApp());

expect(find.byType(Container), findsOneWidget);
  });
}