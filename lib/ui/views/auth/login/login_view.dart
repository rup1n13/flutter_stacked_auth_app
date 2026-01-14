import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/views/auth/login/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewmodel>.reactive(
        viewModelBuilder: () => LoginViewmodel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: const Text("Login"),
                leading: model.otpRequested
                    ? IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: model.goBackToPhoneInput,
                      )
                    : null,
              ),

              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20),

                      if ( model.otpRequested ) ...[
                        _buildOtpStep(context, model),
                      ] else ...[
                        _buildPhoneStep(context, model),
                      ],
                    ],
                  ),
                )
              )
            ));
  }

  Widget _buildPhoneStep(BuildContext context, LoginViewmodel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Enter your phone number',
          style: Theme.of(context).textTheme.headlineSmall,
        ),

        const SizedBox(height: 8),

        Text(
          'We\'ll send you a verification code',
          style: Theme.of(context).textTheme.bodyMedium,
        ),

        const SizedBox(height: 30),

        // Phone Number Field
        TextField(
          onChanged: (value) => model.phone = value,
          decoration: InputDecoration(
            labelText: 'Phone Number',
            hintText: '+229 XX XX XX XX',
            errorText: model.phoneError,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.phone),
          ),
          keyboardType: TextInputType.phone,
          autofocus: true,
        ),

        const SizedBox(height: 30),

        // Request OTP Button
        ElevatedButton(
          onPressed: model.isBusy ? null : model.requestOtp,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: model.isBusy
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : const Text(
                  'Send Code',
                  style: TextStyle(fontSize: 16),
                ),
        ),

        const SizedBox(height: 16),

        // Link to Register
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account? '),
            TextButton(
              onPressed: model.navigateToregisterView,
              child: const Text('Register'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildOtpStep(BuildContext context, LoginViewmodel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Enter verification code',
          style: Theme.of(context).textTheme.headlineSmall,
        ),

        const SizedBox(height: 8),

        Text(
          'Code sent to ${model.phone}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),

        const SizedBox(height: 30),

        // OTP Input Field
        TextField(
          onChanged: (value) => model.otp = value,
          decoration: InputDecoration(
            labelText: 'Verification Code',
            hintText: '123456',
            errorText: model.otpError,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.lock),
          ),
          keyboardType: TextInputType.number,
          maxLength: 6,
          autofocus: true,
        ),

        const SizedBox(height: 20),

        // Verify Button
        ElevatedButton(
          onPressed: model.isBusy ? null : model.verifyOtp,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: model.isBusy
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : const Text(
                  'Verify & Login',
                  style: TextStyle(fontSize: 16),
                ),
        ),

        const SizedBox(height: 16),

        // Resend Code Button
        TextButton(
          onPressed: model.isBusy ? null : model.requestOtp,
          child: const Text('Resend Code'),
        ),
      ],
    );
  }
}
