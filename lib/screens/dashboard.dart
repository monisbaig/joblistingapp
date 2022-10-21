import 'package:flutter/material.dart';
import 'package:joblistingapp/screens/signin.dart';

import 'addjob.dart';
import 'editjob.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController searchController = TextEditingController();
  List<FormData> items = [];
  List<FormData> searchItems = [];
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 70, bottom: 49, left: 27, right: 27),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Welcome\nMonis Baig",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SignIn(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
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
                onChanged: onSearch,
                controller: searchController,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search Keywords.',
                  hintStyle: TextStyle(
                    color: Color(0xFF8F8F9E),
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Expanded(
              child: items.isNotEmpty
                  ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: updateAccordingToSearch(
                        items.length,
                        searchItems.length,
                      ),
                      itemBuilder: ListItems,
                    )
                  : const Center(
                      child: Text(
                        'Data not Available!!!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push<FormData>(
                MaterialPageRoute(
                  builder: (_) => const AddJob(),
                ),
              )
              .then(
                (value) => setState(
                  () {
                    items.add(value!);
                  },
                ),
              );
        },
        backgroundColor: Colors.grey,
        child: const Icon(
          Icons.add,
          color: Color(0xFF191720),
          size: 30,
        ),
      ),
    );
  }

  Widget ListItems(BuildContext context, int index) => Card(
        color: const Color(0xFF1E1C24),
        elevation: 10,
        margin: const EdgeInsets.only(bottom: 15),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                searchController.text.isNotEmpty
                    ? searchItems[index].title
                    : items[index].title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text(
                    searchController.text.isNotEmpty
                        ? searchItems[index].description
                        : items[index].description,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 20),
                    onPressed: () {
                      Navigator.of(context)
                          .push(
                            MaterialPageRoute(
                              builder: (_) => EditJob(
                                posName: items[index].title,
                                posRequirement: items[index].description,
                              ),
                            ),
                          )
                          .then(
                            (value) => setState(
                              () {
                                if (value.title != '' &&
                                    value.description != '') {
                                  setState(() {
                                    items[index].title = value.title;
                                    items[index].description =
                                        value.description;
                                  });
                                }
                              },
                            ),
                          );
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 20),
                    onPressed: () {
                      setState(
                        () {
                          items.removeAt(index);
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                      size: 27,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  void onSearch(String search) {
    setState(() {
      searchItems = items
          .where(
            (element) =>
                element.title.toLowerCase().contains(search) ||
                element.description.toLowerCase().contains(search),
          )
          .toList();
    });
  }

  updateAccordingToSearch(int item, int searchItem) {
    var value;
    if (searchController.text.isNotEmpty) {
      value = searchItem;
    } else {
      value = item;
    }
    return value;
  }
}
