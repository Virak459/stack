import 'package:flutter/material.dart';
import 'package:stack/Slider/Slider1.dart';

class SearchDelegate1 extends StatefulWidget {
  const SearchDelegate1({Key? key}) : super(key: key);

  @override
  State<SearchDelegate1> createState() => _SearchDelegate1State();
}

class _SearchDelegate1State extends State<SearchDelegate1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: TestSearch());
              },
              icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}

class TestSearch extends SearchDelegate {
  List name = ["apple", "heavy", "intelligent", "wallet", "architecture"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List result = name.where((element) {
      return element.contains(query);
    }).toList();
    return ListView.builder(
        itemCount: query == "" ? name.length : result.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              query = query == "" ? name[i] : result[i];
              if (query == "apple")
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Slider1()));
              // showModalBottomSheet(
              //     context: context,
              //     builder: (context) {
              //       return Slider1();
              //     });
            },
            child: Container(
                padding: const EdgeInsets.all(14),
                child: query == "" ? Text("${name[i]}") : Text("${result[i]}")),
          );
        });
  }
}
