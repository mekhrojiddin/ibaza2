import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ibaza/assets/icons.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 243, 245, 1),
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
                        hintText: "Izlash",
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Ko‘p izlanganlar"),
            ),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(213, 213, 213, 1)),
                    width: 100,
                    height: 35,
                    child: Row(
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF0CB23)),
                        ),
                        Text(
                          "Perforator",
                          style: TextStyle(color: Color(0xFF383838)),
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(213, 213, 213, 1)),
                    width: 100,
                    height: 35,
                    child: Row(
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF0CB23)),
                        ),
                        Text(
                          "Uniforma",
                          style: TextStyle(color: Color(0xFF383838)),
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(213, 213, 213, 1),
                    ),
                    width: 105,
                    height: 35,
                    child: Row(
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF0CB23)),
                        ),
                        Text(
                          "Qizil bo‘yoq",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF383838)),
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(213, 213, 213, 1)),
                    width: 70,
                    height: 35,
                    child: Row(
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF0CB23)),
                        ),
                        Text(
                          "Yelim",
                          style: TextStyle(color: Color(0xFF383838)),
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(213, 213, 213, 1)),
                    width: 100,
                    height: 35,
                    child: Row(
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF0CB23)),
                        ),
                        Text(
                          "Jamlanma",
                          style: TextStyle(color: Color(0xFF383838)),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 5,
                  width: 10,
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(213, 213, 213, 1)),
                    width: 150,
                    height: 35,
                    child: Row(
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF0CB23)),
                        ),
                        Text(
                          "Svarka moslamasi",
                          style: TextStyle(color: Color(0xFF383838)),
                        ),
                      ],
                    )),
              ],
            ),
            Container(
              width: 320,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Izlanganlar tarixi",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AppIcons.cancel),
                Gap(8),
                Text(
                  "Perforator",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Divider(),
            Gap(5),
            Row(
              children: [
                SvgPicture.asset(AppIcons.cancel),
                Gap(8),
                Text(
                  "Kaska",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                SvgPicture.asset(AppIcons.cancel),
                Gap(8),
                Text(
                  "Maxsus kiyim",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
