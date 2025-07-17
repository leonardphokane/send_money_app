class WidgetGalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Showcase")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonWidget(
              items: ['Bank Transfer', 'Mobile Wallet'],
              selectedItem: 'Bank Transfer',
              onChanged: (val) {},
            ),
            const SizedBox(height: 16),
            SendButton(
              label: "Send Money",
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            AnimatedSuccess(
              onFinish: () {}, // assuming you’ve built this widget!
            ),
          ],
        ),
      ),
    );
  }
}
