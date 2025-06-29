import 'package:flutter/material.dart';
import 'package:shopcraft/generated/l10n.dart';
import 'package:shopcraft/pages/signup_screen.dart';
import '../widgets/haver_signin.dart';
import '../widgets/haver_welcom.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF5A8DEE),
              Color(0xFFA749FF),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).appTitle,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: "Suwannaphum",
                fontWeight: FontWeight.w600,
                fontSize: 55,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              S.of(context).welcomeSubtitle,
              style: const TextStyle(
                color: Color(0xffdfddf1),
                fontFamily: "Suwannaphum",
                fontWeight: FontWeight.w400,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HoverWelcome(
                  value: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/start.png",
                      width: 170,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 35),
                HoverWelcome(
                  value: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://i.postimg.cc/D0WHRW27/luca-bravo-XJXWbf-So2f0-unsplash.jpg",
                      width: 170,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HoverWelcome(
                  value: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(const Size(130, 50)),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 600),
                          pageBuilder: (context, animation, secondaryAnimation) =>
                              const SignUp(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      S.of(context).signUp,
                      style: const TextStyle(
                        color: Color(0xff7e22d5),
                        fontFamily: "Suwannaphum",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 35),
                const HoverSignIn(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
