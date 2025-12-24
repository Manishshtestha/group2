import 'package:flutter/material.dart';

class ManagerNotificationScreen extends StatelessWidget {
  const ManagerNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return _buildNotificationTile(index);
        },
      ),
    );
  }

  Widget _buildNotificationTile(int index) {
    bool isRead = index > 3;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: isRead
              ? Colors.grey[200]
              : const Color(0xFF182C4C).withOpacity(0.1),
          child: Icon(
            Icons.notifications,
            color: isRead ? Colors.grey : const Color(0xFF182C4C),
          ),
        ),
        title: Text(
          'Manager Update ${index + 1}',
          style: TextStyle(
            fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              'Your project "ManagerX Redesign" has a new comment.',
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),
            const SizedBox(height: 6),
            Text(
              '2 hours ago',
              style: TextStyle(color: Colors.grey[400], fontSize: 11),
            ),
          ],
        ),
        onTap: () {
          // Handle tap
        },
      ),
    );
  }
}
