import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpTextField extends StatefulWidget {
  final int length;
  final ValueChanged<String>? onCompleted;

  const OtpTextField({super.key, this.length = 6, this.onCompleted});

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();

    controllers = List.generate(widget.length, (_) => TextEditingController());

    focusNodes = List.generate(widget.length, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }

    for (final node in focusNodes) {
      node.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.length, (index) {
        return SizedBox(
          width: 46,
          height: 46,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xFFF5FAF0),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              controller: controllers[index],
              focusNode: focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF6B7280)),
              decoration: const InputDecoration(
                counterText: '',
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                hintText: '●',
                hintStyle: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onChanged: (value) {
                if (value.isNotEmpty) {
                  if (index < widget.length - 1) {
                    focusNodes[index + 1].requestFocus();
                  } else {
                    focusNodes[index].unfocus();
                  }
                } else if (index > 0) {
                  focusNodes[index - 1].requestFocus();
                }

                final otp = controllers
                    .map((controller) => controller.text)
                    .join();

                if (otp.length == widget.length) {
                  widget.onCompleted?.call(otp);
                }
              },
            ),
          ),
        );
      }),
    );
  }
}
