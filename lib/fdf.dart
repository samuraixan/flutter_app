// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     const title = 'Birinchi tajriba';
//
//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         // No appbar provided to the Scaffold, only a body with a
//         // CustomScrollView.
//         body: CustomScrollView(
//           slivers: [
//             // Add the app bar to the CustomScrollView.
//             const SliverAppBar(
//               // Provide a standard title.
//               title: Text(title),
//               // Allows the user to reveal the app bar if they begin scrolling
//               // back up the list of items.
//               floating: true,
//               // Display a placeholder widget to visualize the shrinking size.
//               flexibleSpace: Placeholder(),
//               // Make the initial height of the SliverAppBar larger than normal.
//               expandedHeight: 20,
//             ),
//             // Next, create a SliverList
//             SliverList(
//               // Use a delegate to build items as they're scrolled on screen.
//               delegate: SliverChildBuilderDelegate(
//                 // The builder function returns a ListTile with a title that
//                 // displays the index of the current item.
//                     (context, index) => ListTile(title: Text('Sonlar #$index')),
//                 // Builds 1000 ListTiles
//                 childCount: 100,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

void main() {
  runApp(
    MaterialApp(
      title: 'Passing Data',
      home: TodosScreen(
        todos: List.generate(
          20,
              (i) => Todo(
            'Todo $i',
            'A description of what needs to be done for Todo $i',
          ),
        ),
      ),
    ),
  );
}

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key, required this.todos});

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({super.key, required this.todo});

  // Declare a field that holds the Todo.
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}