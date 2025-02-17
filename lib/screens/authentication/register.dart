import 'package:flutter/material.dart';
import 'package:logi/widgets/country_picker_dropdown.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String selectedCountryCode = "Phone number"; // Default country code (Nigeria)

  void _onCountrySelected(String code) {
    setState(() {
      selectedCountryCode = code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Register",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Sign up to send, track, and receive deliveries effortlessly.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),

              /// Name & Email Fields
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: "John Doe",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "John@mail.com",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              /// Country Picker
              CountryPickerDropdown(onCountrySelected: _onCountrySelected),
              const SizedBox(height: 20),
              Text("Selected Country Code: $selectedCountryCode",
                  style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 20),

              /// Sign Up Button
              ElevatedButton(
                onPressed: () {
                  print("Email: ${_emailController.text}");
                  print("Name: ${_nameController.text}");
                  print("Country: $selectedCountryCode"); // ✅ Fixed
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
