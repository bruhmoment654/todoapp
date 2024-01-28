import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 25, top: 25),
            child: Text('Add new'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            ElevatedButton(
              onPressed: onSave,
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ))),
              child: const Text('Save'),
            ),
            OutlinedButton(
                onPressed: onCancel,
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ))),
                child: const Text('Decline'))
          ]),
        ],
      ),
    );
  }
}
