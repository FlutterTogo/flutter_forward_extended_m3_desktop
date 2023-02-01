import 'package:flutter/material.dart';

class NewMaterialButtons extends StatelessWidget {
  const NewMaterialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Material Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FilledButton(
              onPressed: () {},
              child: const Text('FilledButton'),
            ),
            const SizedBox(height: 24),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('FilledButton.tonal'),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('FilledButton.icon'),
            ),
            const SizedBox(height: 24),
            FilledButton.tonalIcon(
              icon: const Text('🤷🏾‍♂️'),
              onPressed: () {},
              label: const Text('FilledButton.tonalIcon'),
            ),
          ],
        ),
      ),
    );
  }
}
