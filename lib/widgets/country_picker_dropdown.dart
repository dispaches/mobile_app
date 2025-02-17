import 'package:flutter/material.dart';
import 'package:logi/constants/countries.dart';

class CountryPickerDropdown extends StatefulWidget {
  final Function(String countryCode) onCountrySelected;

  const CountryPickerDropdown({super.key, required this.onCountrySelected});

  @override
  State<CountryPickerDropdown> createState() => _CountryPickerDropdownState();
}

class _CountryPickerDropdownState extends State<CountryPickerDropdown> {
  String selectedCountryCode = "+234"; // Default country code (Nigeria)

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedCountryCode,
          items: countries.map((country) {
            return DropdownMenuItem<String>(
              value: country["code"],
              child: Row(
                children: [
                  Image.network(country["flag"]!, width: 24, height: 16),
                  Text("${country["name"]} (${country["code"]})"),
                ],
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedCountryCode = newValue!;
            });
            widget.onCountrySelected(selectedCountryCode);
          },
        ),
      ),
    );
  }
}
