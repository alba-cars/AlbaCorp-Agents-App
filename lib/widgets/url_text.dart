import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlText extends StatelessWidget {
  final String text;

  UrlText({required this.text});

  @override
  Widget build(BuildContext context) {
    // Regular expression for URLs
    final urlRegex =
        RegExp(r"(https?:\/\/[^\s]+)"); // Matches http or https URLs

    final spans = <TextSpan>[];
    int start = 0;

    // Find all matches of the URL in the text
    final matches = urlRegex.allMatches(text);

    for (var match in matches) {
      // Add text before the URL as normal
      if (match.start > start) {
        spans.add(TextSpan(text: text.substring(start, match.start)));
      }

      // Add the URL as clickable
      final url = match.group(0);
      if (url != null) {
        spans.add(
          TextSpan(
            text: url,
            style: TextStyle(
                color: Colors.blue, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL(url);
              },
          ),
        );
      }

      // Move the start position to after the current URL
      start = match.end;
    }

    // Add remaining text after the last URL
    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start)));
    }

    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: spans,
      ),
    );
  }

  void _launchURL(String url) async {
    try {
      await launchUrlString(url);
    } catch (e) {}
  }
}
