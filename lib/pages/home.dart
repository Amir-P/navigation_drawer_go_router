import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final Widget child;

  const HomePage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const AppDrawer(),
      body: child,
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routerState = GoRouterState.of(context);
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          ListTile(
            onTap: () => _go(context, '/feed'),
            title: const Text('Feed'),
            selected: routerState.location == '/feed',
          ),
          ListTile(
            onTap: () => _go(context, '/settings'),
            title: const Text('Settings'),
            selected: routerState.location == '/settings',
          ),
        ],
      )),
    );
  }

  void _go(BuildContext context, String location) {
    Navigator.pop(context);
    context.go(location);
  }
}
