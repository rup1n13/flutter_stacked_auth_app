import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'register_viewmodel.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewmodel>.reactive(
        viewModelBuilder: () => RegisterViewmodel(),
        builder: (context, model, child) => Scaffold(
            appBar: AppBar(title: const Text('Register')),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: (v) => model.phone = v,
                    decoration: const InputDecoration(labelText: 'Phone'),
                  ),
                  TextField(
                    onChanged: (v) => model.firstName = v,
                    decoration: const InputDecoration(labelText: 'First Name'),
                  ),
                  TextField(
                    onChanged: (v) => model.lastName = v,
                    decoration: const InputDecoration(labelText: 'Last Name'),
                  ),
                  TextField(
                    onChanged: (v) => model.email = v,
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: model.isBusy ? null : model.register,
                      child: model.isBusy
                          ? const CircularProgressIndicator()
                          : const Text('Continue'))
                ],
              ),
            )));
  }
}
