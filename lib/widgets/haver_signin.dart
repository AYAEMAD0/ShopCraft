import 'package:flutter/material.dart';
import 'package:shopcraft/generated/l10n.dart';
import '../pages/signin_screen.dart';

class HoverSignIn extends StatefulWidget {
  const HoverSignIn({super.key});

  @override
  State<HoverSignIn> createState() => _HoverSignInState();
}

class _HoverSignInState extends State<HoverSignIn> {
  bool isHovered = false;
  

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedScale(
          scale: isHovered ? 1.1 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(const Size(130, 50)),
                backgroundColor: WidgetStateProperty.all(Colors.white),
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 600),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const SignIn(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: isHovered
                  ?  Text(
                      S.of(context).signIn,
                      style: const TextStyle(
                          color: Color(0xff7e22d5),
                          fontFamily: "Suwannaphum",
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  : const SizedBox.shrink())),
    );
  }
}
