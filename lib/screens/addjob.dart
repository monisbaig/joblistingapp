import 'package:flutter/material.dart';
import 'package:joblistingapp/app_button.dart';

import 'dashboard.dart';

class AddJob extends StatefulWidget {
  const AddJob({Key? key}) : super(key: key);

  @override
  State<AddJob> createState() => _AddJobState();
}

class _AddJobState extends State<AddJob> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 90, bottom: 49, left: 27, right: 27),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const Dashboard(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Add New Job',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1C24),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color(0xFF5D5D67),
                ),
              ),
              child: TextField(
                controller: titleController,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter position name',
                  hintStyle: TextStyle(
                    color: Color(0xFF8F8F9E),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1C24),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF5D5D67),
                  ),
                ),
                child: TextField(
                  controller: descriptionController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Describe Requirement..',
                    hintStyle: TextStyle(
                      color: Color(0xFF8F8F9E),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            AppButton(
              label: 'Submit Job',
              onPressed: () {
                onSubmit(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void onSubmit(BuildContext context) {
    var data = FormData(titleController.text, descriptionController.text);
    Navigator.pop(context, data);
  }
}

class FormData {
  String title;
  String description;

  FormData(this.title, this.description);
}
