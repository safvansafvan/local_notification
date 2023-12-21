import 'package:flutter/material.dart';
import 'package:pushnotification/service/service_notification.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Push Notification'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await NotificationService()
                  .showNotification(title: 'Title', body: 'It work');
            },
            child: const Text('Push Notification')),
      ),
    );
  }
}
