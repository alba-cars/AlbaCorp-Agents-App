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

      // if (timeLeft.inSeconds <= 0) {
      //   _timer?.cancel();
      // }
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

    if (isOverdue) {
      final overdueDuration = _timeLeft.abs();
      final days = overdueDuration.inDays;
      final hours = overdueDuration.inHours % 24;
      final minutes = overdueDuration.inMinutes % 60;
      final seconds = overdueDuration.inSeconds % 60;

      String formatTwoDigits(int n) => n.toString().padLeft(2, '0');
      final timePart =
          "${formatTwoDigits(hours)}:${formatTwoDigits(minutes)}:${formatTwoDigits(seconds)}";

      if (days > 0) {
        displayText = "$days day${days == 1 ? '' : 's'}, $timePart";
      } else {
        displayText = timePart;
      }
    } else {
      // Existing logic for non-overdue (future times)
      // _timeLeft is positive or zero here.
      final days = _timeLeft.inDays;
      final hours = _timeLeft.inHours % 24;
      final minutes = _timeLeft.inMinutes % 60;
      final seconds = _timeLeft.inSeconds % 60;

      // Reconstruct exactly as original to ensure "remains unchanged"
      // This includes using "days" for the pluralization even for 1 day, as in the original.
      displayText = (days > 0 ? days.toString() + " days, " : "") +
          (hours).toString() +
          " hrs, " +
          (minutes).toString() +
          " mins " +
          (seconds).toString() +
          " secs";
    }

    return Text(
      (!isOverdue ? 'Due In : ' : 'Overdue By : ') + displayText,
      style:
          TextStyle(color: isOverdue ? Colors.red : Colors.black, fontSize: 10),
    );
  }
}
