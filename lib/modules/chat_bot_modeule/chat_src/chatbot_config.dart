import 'package:flutter/material.dart';

class ChatBotConfig {
  final List<String> keywords;
  final List<String> responses;
  final Color backgroundColor;
  final String backgroundImageUrl;
  final String initialGreeting;
  final String defaultResponse;
  final String inactivityMessage;
  final String closingMessage;
  final String inputHint;
  final Color botChatColor;
  final Color userChatColor;
  int waitingTime;
  int closingTime;
  int delayResponse;
  final Icon botIcon;
  final Icon userIcon;

  ChatBotConfig({
    required this.keywords,
    required this.responses,
    required this.backgroundColor,
    required this.backgroundImageUrl,
    required this.initialGreeting,
    required this.defaultResponse,
    required this.inactivityMessage,
    required this.closingMessage,
    required this.inputHint,
    required this.botChatColor,
    required this.userChatColor,
    required this.waitingTime,
    required this.closingTime,
    required this.delayResponse,
    required this.botIcon,
    required this.userIcon,
  });
}
