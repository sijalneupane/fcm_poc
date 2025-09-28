import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
	const HomePage({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
			return Scaffold(
				appBar: AppBar(title: const Text('Homepage')),
				body: Stack(
					children: [
						Center(
							child: Column(
								mainAxisSize: MainAxisSize.min,
								children: [
									ElevatedButton(
										onPressed: () {
											context.push('/home');
										},
										child: const Text('Home'),
									),
									const SizedBox(height: 16),
									ElevatedButton(
										onPressed: () {
											context.push('/employee');
										},
										child: const Text('Employee'),
									),
									const SizedBox(height: 16),
									ElevatedButton(
										onPressed: () {
											context.push('/notification');
										},
										child: const Text('Notifications'),
									),
									const SizedBox(height: 16),
									ElevatedButton(
										onPressed: () {
											context.push('/login');
										},
										child: const Text('Login'),
									),
								],
							),
						),
					],
				),
			);
	}
}
