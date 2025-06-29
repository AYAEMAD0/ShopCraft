import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shopcraft/generated/l10n.dart';
import 'package:shopcraft/pages/welcome_screen.dart'; 
import 'package:shopcraft/provider/locale_provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child:  const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    return  MaterialApp(
      locale: provider.locale,
      supportedLocales: S.delegate.supportedLocales,  
      localizationsDelegates:const [
        S.delegate, 
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      home:const WelcomeScreen(),
    );
  }
}
   

      
  
