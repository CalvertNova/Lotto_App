import 'package:flutter/material.dart';

class GuestAppbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onLoginPressed;
  final VoidCallback? onJoinPressed;

  const GuestAppbar({
    super.key,
    this.onLoginPressed,
    this.onJoinPressed,
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
          _buildActionButton("log in", onLoginPressed),
          const SizedBox(width: 7),
          _buildActionButton("Join Now", onJoinPressed),
        ],
      ),
    );
  }

  // Helper to maintain the specific styling of your buttons
  Widget _buildActionButton(String label, VoidCallback? onPressed) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(211, 248, 226, 216),
        foregroundColor: Colors.black,
        elevation: 3,
        shape: const StadiumBorder(),
        shadowColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          fontFamily: "cerapro",
        ),
      ),
    );
  }

  // Necessary override to define the height of the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(90);
}