import 'package:flutter/material.dart';
import 'package:shopcraft/generated/l10n.dart';

enum FieldType { email, password, confirmPassword, fullName }

class TextFormInUp extends StatefulWidget {
  final String hint;
  final String label;
  final TextEditingController controller;
  final FieldType fieldType;
  final TextEditingController? confirmPasswordController;

  const TextFormInUp({
    super.key,
    required this.hint,
    required this.label,
    required this.controller,
    required this.fieldType,
    this.confirmPasswordController,
  });

  @override
  State<TextFormInUp> createState() => _TextFormInUpState();
}

class _TextFormInUpState extends State<TextFormInUp> {
  bool _obscureText = true;
  bool _showEye = false;

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    if (widget.fieldType == FieldType.password ||
        widget.fieldType == FieldType.confirmPassword) {
      widget.controller.addListener(_updateEyeIconState);
      _focusNode.addListener(_updateEyeIconState);
    }
  }

  void _updateEyeIconState() {
    final hasText = widget.controller.text.isNotEmpty;
    final isFocused = _focusNode.hasFocus;

    final shouldShow = hasText && isFocused;

    if (shouldShow != _showEye) {
      setState(() {
        _showEye = shouldShow;
      });
    }

    if (!isFocused && !_obscureText) {
      setState(() {
        _obscureText = true;
      });
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateEyeIconState);
    _focusNode.removeListener(_updateEyeIconState);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isPassword = widget.fieldType == FieldType.password ||
        widget.fieldType == FieldType.confirmPassword;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label,
            style: const TextStyle(
              color: Color(0xff374151),
              fontFamily: "Suwannaphum",
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 6),
        TextFormField(
          focusNode: isPassword ? _focusNode : null,
          controller: widget.controller,
          keyboardType: widget.fieldType == FieldType.email
              ? TextInputType.emailAddress
              : TextInputType.text,
          obscureText: isPassword ? _obscureText : false,
          validator: (value) {
            final s = S.of(context);
            if (value == null || value.isEmpty) {
              return s.fieldRequired(widget.label);
            }

            switch (widget.fieldType) {
              case FieldType.email:
                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                    .hasMatch(value)) {
                  return s.enterValidEmail;
                }
                break;

              case FieldType.password:
                if (value.length < 6) {
                  return s.passwordMinLength;
                }
                break;

              case FieldType.confirmPassword:
                if (widget.confirmPasswordController != null &&
                    value != widget.confirmPasswordController!.text) {
                  return s.passwordsDoNotMatch;
                }
                break;

              case FieldType.fullName:
                final trimmedValue = value.trim();
                if (trimmedValue.isEmpty) {
                  return s.fieldRequired(widget.label);
                }
                if (!RegExp(r'^[\u0621-\u064A\u0660-\u0669a-zA-Z\s]+$')
                    .hasMatch(trimmedValue)) {
                   return s.lettersOnly;
                }
                final firstChar = trimmedValue.characters.first;
                if (RegExp(r'^[a-zA-Z]$').hasMatch(firstChar) &&
                    !RegExp(r'^[A-Z]$').hasMatch(firstChar)) {
                  return s.firstLetterUppercase;
                }
                break;
            }

            return null;
          },
          decoration: InputDecoration(
            hintText: widget.hint,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xff9333ea), width: 4),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            suffixIcon: (isPassword && _showEye)
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
