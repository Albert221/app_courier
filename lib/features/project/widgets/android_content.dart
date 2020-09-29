import 'package:flutter/material.dart';

class AndroidContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'App name',
              hintText: 'Fast Shopping',
            ),
            maxLength: 50,
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Short description',
            ),
            maxLength: 80,
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Full description',
            ),
            minLines: 7,
            maxLines: 7,
            maxLength: 4000,
          ),
        ],
      ),
    );
  }
}
