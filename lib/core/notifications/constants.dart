import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

final List<NotificationChannel> myNotifies = [
  NotificationChannel(
    channelKey: 'basic_channel',
    channelName: 'Basic Notifications',
    defaultColor: Colors.teal,
    importance: NotificationImportance.High,
    channelShowBadge: true,
    channelDescription: 'schedule',
  ),
];
