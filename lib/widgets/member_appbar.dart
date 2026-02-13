import 'package:flutter/material.dart';

class MemberAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String balance;
  final VoidCallback? onDepositPressed;
  final VoidCallback? onNotificationPressed;

  const MemberAppbar({
    super.key,
    this.balance = "GHS 0.00",
    this.onDepositPressed,
    this.onNotificationPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      backgroundColor:Theme.of(context).colorScheme.secondary,
      elevation: 0,
      leadingWidth: 120,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          "assets/digilo_logo.png",
          fit: BoxFit.contain,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Deposit Button
          ElevatedButton(
            onPressed: onDepositPressed ?? () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(211, 248, 226, 216),
              foregroundColor: Colors.black,
              elevation: 3,
              shape: const StadiumBorder(),
              shadowColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: const Text(
              "Deposite",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: "cerapro",
              ),
            ),
          ),
          const SizedBox(width: 7),
          // Balance Indicator
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey, width: 1.2),
            ),
            child: Text(
              balance,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          // Notification Icon
          IconButton(
            onPressed: onNotificationPressed ?? () {},
            icon: const ImageIcon(
              AssetImage("assets/notifications.png"),
              size: 28,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}