import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopcraft/generated/l10n.dart';
import 'package:shopcraft/provider/locale_provider.dart';

class AppBarHome extends StatelessWidget {
  AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 1,
      title: Text(
        S.of(context).ourProducts,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: "Suwannaphum",
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.language, color: Colors.white),
          onPressed: () {
            final isEnglish = localeProvider.locale.languageCode == 'en';
            final newLocale = isEnglish ? const Locale('ar') : const Locale('en');
            localeProvider.setLocale(newLocale);
          },
        ),
      ],
    );
  }
}
