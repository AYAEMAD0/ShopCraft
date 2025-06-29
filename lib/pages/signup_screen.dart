import 'package:flutter/material.dart';
import 'package:shopcraft/generated/l10n.dart';
import 'package:shopcraft/widgets/text_form_in_up.dart';
import '../widgets/dialog_box.dart';
import '../widgets/hover_icon_button_back.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _controllerFullName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConfirmPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controllerFullName.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    _controllerConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  HoverIconButton(),
      ),
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
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: IntrinsicHeight(
                child: Container(
                  padding: const EdgeInsets.all(17.0),
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 5),
                      Text(
                        s.createAccount,
                        style: const TextStyle(
                          color: Color(0xff9333ea),
                          fontSize: 35,
                          fontFamily: "Suwannaphum",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Join ShopCraft today", // ✳️ إن أردت ترجمتها، أضفها لـ .arb
                        style: TextStyle(
                          color: Color(0xff4b5567),
                          fontFamily: "Suwannaphum",
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormInUp(
                        hint: s.fullName,
                        label: s.fullName,
                        controller: _controllerFullName,
                        fieldType: FieldType.fullName,
                      ),
                      const SizedBox(height: 20),
                      TextFormInUp(
                        hint: s.email,
                        label: s.email,
                        controller: _controllerEmail,
                        fieldType: FieldType.email,
                      ),
                      const SizedBox(height: 20),
                      TextFormInUp(
                        hint: s.password,
                        label: s.password,
                        controller: _controllerPassword,
                        fieldType: FieldType.password,
                      ),
                      const SizedBox(height: 20),
                      TextFormInUp(
                        hint: s.confirmPassword,
                        label: s.confirmPassword,
                        controller: _controllerConfirmPassword,
                        fieldType: FieldType.confirmPassword,
                        confirmPasswordController: _controllerPassword,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return DialogBox(
                                  // title: s.success,
                                  // describe: s.accountCreated,
                                  // textButton: s.close,
                                );
                              },
                            );
                          }
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: WidgetStateProperty.all(
                            const Color(0xff9333ea),
                          ),
                          minimumSize: WidgetStateProperty.all(
                            const Size(double.infinity, 50),
                          ),
                        ),
                        child: Text(
                          s.createAccount,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Suwannaphum",
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
