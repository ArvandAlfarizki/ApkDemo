import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:apkdemo/Assets/Themes/theme_provider.dart';
import 'package:apkdemo/login/LoginScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return ScreenUtilInit(
            designSize:
                const Size(1080, 1920), // Ganti dengan ukuran desain Anda
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp(
                title: 'Flutter Demo',
                themeMode: themeProvider.themeMode, // Mengatur mode tema
                theme: ThemeData.light(),
                darkTheme: ThemeData.dark(),
                home: child,
              );
            },
            child: LoginPage(), // Halaman utama Anda
          );
        },
      ),
    );
  }
}
