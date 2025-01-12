import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مثال على provider',
      home: ColorChangerScreen(),
    );
  }
}

class ColorChangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // الوصول إلى كائن ColorProvider
    final colorProvider = Provider.of<ColorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('مثال على Provider'),
      ),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        color: colorProvider.color,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              // تغيير اللون عند الضغط على الزر
              colorProvider.changeColor(
                Colors.primaries[
                    DateTime.now().second % Colors.primaries.length],
              );
            },
            child: Text('تغيير اللون'),
          ),
        ),
      ),
    );
  }
}
