import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  final DateTime endTime;

  const CountdownTimer({Key? key, required this.endTime}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  Timer? _timer;
  Duration _timeLeft = Duration.zero;

  @override
  void initState() {
    final now = DateTime.now();
    _timeLeft = widget.endTime.difference(now);
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      final timeLeft = widget.endTime.difference(now);

      setState(() {
        _timeLeft = timeLeft;
      });

      if (timeLeft.inSeconds <= 0) {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isOverdue = _timeLeft.isNegative;
    String displayText;

    displayText =
        (_timeLeft.inDays > 0 ? _timeLeft.inDays.toString() + " days, " : "") +
            (_timeLeft.inHours % 24).toString() +
            " hrs, " +
            (_timeLeft.inMinutes % 60).toString() +
            " mins";

    return Text(
      (!isOverdue ? 'Scheduled At : ' : 'Overdue By : ') + displayText,
      style:
          TextStyle(color: isOverdue ? Colors.red : Colors.black, fontSize: 10),
    );
  }
}
