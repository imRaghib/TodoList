import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/config/router.dart';
import '../provider/todo_provider.dart';

class AddTodoScreen extends ConsumerWidget {
  final TextEditingController controller = TextEditingController();

  AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Todo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Task title'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(todoProvider.notifier).addTodo(controller.text);
                router.pop();
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
