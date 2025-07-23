import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_demo/features/home/todo/data/models/todo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/config/router.dart';
import '../provider/todo_notifier.dart';

class AddTodoScreen extends ConsumerWidget {
  final TextEditingController controller = TextEditingController();

  AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Todo')),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Task title'),
            ),
            SizedBox(height: 28),
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                final todo = Todo(
                  userId: Supabase.instance.client.auth.currentUser!.id,
                  todo: controller.text,
                );
                ref.read(todoNotifierProvider.notifier).addTodo(todo);
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
