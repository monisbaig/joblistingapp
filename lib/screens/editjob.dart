import 'package:flutter/material.dart';
import 'package:joblistingapp/screens/addjob.dart';
import 'package:joblistingapp/screens/dashboard.dart';

import '../app_button.dart';

class EditJob extends StatefulWidget {
  String posName = "";
  String posRequirement = "";
  EditJob({required this.posName, required this.posRequirement});

  @override
  State<EditJob> createState() => _EditJobState(posName, posRequirement);
}

class _EditJobState extends State<EditJob> {
  String posName;
  String posRequirement;
  _EditJobState(this.posName, this.posRequirement);

  @override
  Widget build(BuildContext context) {
    TextEditingController editPositionController = TextEditingController()
      ..text = posName;
    TextEditingController editDescriptionController = TextEditingController()
      ..text = posRequirement;

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
                  'Edit Job',
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
                controller: editPositionController,
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
                  controller: editDescriptionController,
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
              label: 'Update Job',
              onPressed: () {
                var data = FormData(editPositionController.text,
                    editDescriptionController.text);
                Navigator.pop(context, data);
              },
            ),
          ],
        ),
      ),
    );
  }
}
