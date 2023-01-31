import 'package:flutter/material.dart';
import 'package:flutter_study/Styling/Padding.dart';

class EllasNotesThemeData {
  static ThemeData lightThemeData = themeData();

  static ThemeData themeData() {  // 실제 ThemeData 만듬
    final base = ThemeData.light();
    return base.copyWith(
      textTheme: _buildEllasNotesTextTheme(base.textTheme),
    );
  }

  static TextTheme _buildEllasNotesTextTheme(TextTheme base) {  // TextTheme 생성
    return base.copyWith(
      titleLarge: TextStyles.hintTextStyle,
    );
  }
}

class ColorStyle {
  static const blueColor = Colors.blue;
}

class TextStyles {
  static const hintTextStyle = TextStyle(fontStyle: FontStyle.italic);
  static const noteTextStyle = TextStyle(fontSize: 12, color: Colors.black54);
  static const memoTextStyle = TextStyle(fontSize: 12, color: Colors.black45, fontStyle: FontStyle.italic);
}


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test MediaQuery',
      home: Card(),
    );
  }
}
class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Padding Test"),
        ),
        body: Center(
          child: Column(
            children: [
              for (int num = 0; num < 5; num++)
                const CardView()
            ],
          ) ,
        ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(24.0),
        child: Container(
          padding: const EdgeInsets.all(8),
          color: ColorStyle.blueColor,
          child: const Text('Sound of screams but the', style: TextStyles.hintTextStyle,),
          key: Key("Container"),
        )
    );
  }
}



