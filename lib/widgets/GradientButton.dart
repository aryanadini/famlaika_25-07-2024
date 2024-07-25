import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  GradientButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.0, 0.0),
          end: Alignment(1.0, 0.0),
          colors: [
            Color(0xFFF3802B),
            Color(0xFFFAE42C),
          ],
          stops: [-0.1577, 1.1939],
        ),
        borderRadius: BorderRadius.circular(5.r), // Adjust the border radius as needed
      ),
      child: MaterialButton(
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 12.0.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
        child: child,
      ),
    );
  }
}