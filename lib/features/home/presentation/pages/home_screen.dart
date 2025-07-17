import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/config/router.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/constants/theme/theme.dart';
import '../../data/models/todo.dart';
import '../provider/todo_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Index'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: todos.isEmpty
              ? Column(
                  spacing: 10,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    SvgPicture.asset(
                      Assets.mock,
                      width: MediaQuery.of(context).size.width * 0.8,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'What do you want to do today?',
                      style: AppTextStyle.displaySmall,
                    ),
                    Text(
                      'Tap + to add your tasks',
                      style: AppTextStyle.displaySmall,
                    ),
                  ],
                )
              : Consumer(
                  builder: (context, ref, child) {
                    return ListView(
                      children: todos.map((todo) {
                        return TodoListTile(todo: todo);
                      }).toList(),
                    );
                  },
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.push(Routes.addTodoScreen),
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoListTile extends ConsumerWidget {
  final Todo todo;

  const TodoListTile({super.key, required this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(todo.title),
      leading: Checkbox(
        value: todo.isDone,
        onChanged: (_) => ref.read(todoProvider.notifier).toggleTodo(todo.id),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => showDialog(
              context: context,
              builder: (_) => EditTodoDialog(todo: todo),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () =>
                ref.read(todoProvider.notifier).deleteTodo(todo.id),
          ),
        ],
      ),
    );
  }
}

class EditTodoDialog extends ConsumerStatefulWidget {
  final Todo todo;

  const EditTodoDialog({super.key, required this.todo});

  @override
  ConsumerState<EditTodoDialog> createState() => _EditTodoDialogState();
}

class _EditTodoDialogState extends ConsumerState<EditTodoDialog> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.todo.title);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit Todo'),
      content: TextField(
        controller: controller,
        decoration: InputDecoration(labelText: 'New Title'),
      ),
      actions: [
        TextButton(onPressed: () => router.pop(), child: Text('Cancel')),
        ElevatedButton(
          onPressed: () {
            ref
                .read(todoProvider.notifier)
                .updateTodo(widget.todo.id, controller.text);
            router.pop();
          },
          child: Text('Update'),
        ),
      ],
    );
  }
}
