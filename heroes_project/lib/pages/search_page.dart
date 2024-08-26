// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:heroes_project/data.dart';
import 'package:heroes_project/widget/items_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Pahlawan> pahlawan = allData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 55, 16, 16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(width: 0.8),
                ),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.close),
                hintText: 'Cari pahlawan kamu ....'),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ItemsSearch(pahlawan: allData[index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 1,
                  );
                },
                itemCount: pahlawan.length),
          ),
        ],
      ),
    );
  }
}
