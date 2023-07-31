// Đoạn import để import các gói cần thiết.
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

// Lớp FadeAnimation là một StatefulWidget.
class FadeAnimation extends StatelessWidget {
  final double delay; // Độ trễ cho hiệu ứng.
  final Widget child; // Widget con cần áp dụng hiệu ứng.

  // Constructor của lớp FadeAnimation.
  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    // Tạo tween để định nghĩa các hiệu ứng, bao gồm opacity (độ mờ dần) và translateY (di chuyển theo chiều dọc).
    final tween = MultiTrackTween([
      Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)), // Hiệu ứng mờ dần.
      Track("translateY").add(
          Duration(milliseconds: 500), Tween(begin: 130.0, end: 0.0),
          curve: Curves.easeOut) // Hiệu ứng di chuyển từ dưới lên trên.
    ]);

    // ControlledAnimation cho phép kiểm soát thời gian và giá trị của tween.
    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()), // Độ trễ của hiệu ứng.
      duration: tween.duration, // Thời gian của hiệu ứng.
      tween: tween, // Tween định nghĩa hiệu ứng.
      child: child, // Widget con được áp dụng hiệu ứng.
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"], // Giá trị độ mờ của hiệu ứng.
        child: Transform.translate(
          offset: Offset(0, animation["translateY"]), // Giá trị di chuyển theo chiều dọc của hiệu ứng.
          child: child, // Widget con.
        ),
      ),
    );
  }
}
