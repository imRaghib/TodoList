import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_demo/features/auth/domain/entities/user_profile/user_profile_state.dart';
import 'package:supabase_demo/features/auth/presentation/notifier/logout/logout_notifier.dart';
import 'package:supabase_demo/features/auth/presentation/notifier/user_profile/user_profile_notifier.dart';

import '../../../../../core/config/router.dart';
import '../../../../../core/constants/assets.dart';
import '../../../../../core/constants/theme/theme.dart';
import '../../../../../core/snackbar/snackbar.dart';
import '../../data/models/todo.dart';
import '../provider/todo_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  void _signOut() async {
    ref.read(logoutNotifierProvider.notifier).logoutUser();

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Signed out')));

    context.replaceNamed(Routes.signInScreen);
  }

  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
        centerTitle: true,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Consumer(
            builder: (context, ref, child) {
              final watcher = ref.watch(userProfileNotifierProvider);

              switch (watcher) {
                case UserProfileStateInitial():
                  return const CircleAvatar(child: Icon(Icons.person));

                case UserProfileStateLoading():
                  return const CircleAvatar(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  );

                case UserProfileStateError(error: final error):
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    showSnackBar(message: error.message, context: context);
                  });

                  // Optionally invalidate only if necessary
                  // ref.invalidate(userProfileNotifierProvider);

                  return const CircleAvatar(child: Icon(Icons.error));

                case UserProfileStateData(data: final data):
                  if (data?.avatar_url != null) {
                    return CircleAvatar(
                      backgroundImage: NetworkImage(data!.avatar_url!),

                      radius: 10,
                    );
                  } else {
                    return const CircleAvatar(child: Icon(Icons.person));
                  }
              }
            },
          ),
        ),
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sign Out',
            onPressed: () => _signOut(),
          ),
        ],
      ),
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

  @override
  void initState() {
    super.initState();

    // Delay to avoid calling during build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(userProfileNotifierProvider.notifier).getUserProfileById();
    });
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
