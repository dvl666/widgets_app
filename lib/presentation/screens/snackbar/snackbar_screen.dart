import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  // void showCustomSnackbar( BuildContext context ) {
  //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //     content: Text('Hola mundo')));
  // }

  void showCustomSnackbar( BuildContext context ) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo 2'),
      action: SnackBarAction(label: 'hola', onPressed: () {},),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog( BuildContext context ){
    showDialog(
      context: context,
      barrierDismissible: false, 
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Lea las licencias porfavor'),
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              TextButton(
                onPressed: () => context.pop(), 
                child: const Text('Cancelar'),
              ),
              FilledButton(
                onPressed: () => context.pop(), 
                child: const Text('Aceptar')
              )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Lea las licencias')
                  ]
                );
              }, 
              child: const Text('Licencias usadas')
            ),            
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar dialogo')
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}