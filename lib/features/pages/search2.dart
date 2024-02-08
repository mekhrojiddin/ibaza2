import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ibaza/assets/icons.dart';
import 'package:ibaza/features/pages/home_screen.dart';
import 'package:ibaza/features/pages/search.dart';

class Search2 extends StatefulWidget {
  const Search2({super.key});

  @override
  State<Search2> createState() => _Search2State();
}

class _Search2State extends State<Search2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 116,
        title: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 44, vertical: 13.5),
                        prefixIcon: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              AppIcons.search,
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ),
                        suffixIcon: Container(
                          child: GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                AppIcons.cancel,
                                width: 12,
                                height: 12,
                              ),
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(243, 242, 245, 1),
                        hintText: "Perfo",
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Yopish",
                      style: TextStyle(color: Colors.amberAccent, fontSize: 15),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
            child: Text("Izlash natijalari"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 450,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(213, 213, 213, 1)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.up),
                        Gap(10),
                        Text("Perforator")
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.up),
                        Gap(10),
                        Text("Perforator")
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.up),
                        Gap(10),
                        Text("Perforator")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SearchScreen()));
              },
              child: Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFFFF9DD),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(112, 15, 112, 15),
                  child: Text(
                    "Yana 32 ta natija",
                    style: TextStyle(color: Color(0xFFF0CB23)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
