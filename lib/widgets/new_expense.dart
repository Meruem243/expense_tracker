import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  // var _enteredTitle = '';
  // void _saveInputTitle(String inputValue) {
  //   _enteredTitle = inputValue;
  // }

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            // onChanged: _saveInputTitle,
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _amountController,
            // maxLength: 50,
            decoration: const InputDecoration(
              prefix: Text('\$ '),
              label: Text('Amount'),
            ),
            // keyboardType: const TextInputType.numberWithOptions(decimal: true),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // print(_enteredTitle);
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: Text('Save Expense'),
              ),
              const SizedBox(width: 16),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
