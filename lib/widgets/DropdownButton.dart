import 'package:flutter/material.dart';

/// 📦 DropdownButton Widget
///
/// A reusable dropdown component designed for selecting payment methods 
/// within the Send Money flow. Built to be modular, brand-aligned, and 
/// easily extendable across other pages.
///
/// ✅ Features:
/// - Accepts list of String options
/// - Returns selected value via callback
/// - Styled with NeoBrand Surge aesthetics
///
/// 🔁 Usage:
/// DropdownButtonWidget(
///   items: ['Bank Transfer', 'Mobile Wallet'],
///   selectedItem: selectedMethod,
///   onChanged: (value) => setState(() => selectedMethod = value),
/// )
///
/// 📂 Location: widgets/dropdown_button.dart
/// 📐 Created by: Leonard Phokane
/// 🧠 Part of: FinTech Feature (Send Money)

class DropdownButtonWidget extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final ValueChanged<String?> onChanged;

  const DropdownButtonWidget({
    required this.items,
    required this.selectedItem,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedItem,
      items: items
          .map((item) => DropdownMenuItem(
                value: item,
                child: Text(item),
              ))
          .toList(),
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: 'Select Payment Method',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}
