import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonsScreen'),
      ),
      body: const _BottonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _BottonsView extends StatelessWidget {
  const _BottonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Wrap(
          spacing: 20,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('Elevated Button')
            ),
            const ElevatedButton(
              onPressed: null, 
              child: Text('Elevated Button Disabled')
            ),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.games), 
              label: const Text('Elevated Icon Button')
            ),
            FilledButton(
              onPressed: () {}, 
              child: const Text('Filled Button')
            ),
            const FilledButton(
              onPressed: null, 
              child: Text('Filled Button Disabled')
            ),
            FilledButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm), label: const Text('Filled Icon Button')
            ),
            OutlinedButton(
              onPressed: () {}, 
              child: const Text('Outlined Button')
            ),
            const OutlinedButton(
              onPressed: null, 
              child: Text('Outlined Button Disabled')
            ),
            OutlinedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Outlined Icon Button'),
            ),
            TextButton(
              onPressed: () {}, 
              child: const Text('Text Button')
            ),
            TextButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.account_balance_wallet_outlined),
              label: const Text('Text Icon Button'),
            ),
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.account_tree_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)
              ),
            ),
            const CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white),)
            ),
        ),
      ),
    );
  }
}