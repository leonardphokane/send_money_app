import 'package:flutter/material.dart';
import '../widgets/animated_success.dart';
import '../widgets/send_button.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Send Money")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Recipient Field
            const TextField(
              decoration: InputDecoration(labelText: "Recipient Name"),
            ),
            const SizedBox(height: 16),

            // 🔹 Amount Field
            const TextField(
              decoration: InputDecoration(labelText: "Amount"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),

            // 🔹 Payment Method Dropdown
            DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(value: "Bank", child: Text("Bank Transfer")),
                DropdownMenuItem(value: "Wallet", child: Text("Mobile Wallet")),
              ],
              onChanged: (val) {},
              decoration: const InputDecoration(labelText: "Payment Method"),
            ),
            const SizedBox(height: 24),

            // 🔹 Favorite Toggle
            SwitchListTile(
              title: const Text("Mark as Favorite"),
              value: true,
              onChanged: (val) {},
            ),
            const SizedBox(height: 32),

            // ✅ Send Button
            Center(
              child: SendButton(
                label: "Send Money",
                onPressed: () {
                  debugPrint("Send button tapped ✅");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AnimatedSuccess(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
