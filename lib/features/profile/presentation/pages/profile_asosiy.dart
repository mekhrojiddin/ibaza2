import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:ibaza/assets/icons.dart';
import 'package:ibaza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:ibaza/features/profile/presentation/profile.dart';

class ProfileMain extends StatefulWidget {
  const ProfileMain({super.key});

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  File? avatar;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F8FC),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
              child: Container(
                width: 370,
                height: 70,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(CupertinoDialogRoute(
                            builder: (_) => Profile(), context: context));
                      },
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: avatar == null
                            ? const Icon(
                                Icons.person,
                                size: 50,
                                color: Colors.grey,
                              )
                            : Image.file(
                                context.watch<ProfileBloc>().state.avatar ??
                                    avatar!,
                                fit: BoxFit.cover,
                              ),
                        width: 64,
                        height: 64,
                      ),
                    ),
                    Gap(10),
                    Text(
                      context.watch<ProfileBloc>().state.name!.name ?? 'User',
                      
                    ),
                    Gap(90),
                    SvgPicture.asset(AppIcons.right)
                  ],
                ),
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 110,
                  height: 95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Column(children: [
                    SvgPicture.asset(AppIcons.heart),
                    Text("Saqlanganlar")
                  ]),
                ),
                Container(
                  width: 110,
                  height: 95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.notification),
                        Text("Xabarlar")
                      ]),
                ),
                Container(
                  width: 110,
                  height: 95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.setting),
                        Text("Setting")
                      ]),
                ),
              ],
            ),
            Gap(20),
            Container(
              width: 390,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Gap(10),
                  SvgPicture.asset(AppIcons.yuriqnoma),
                  Gap(10),
                  Text("Yuriqnoma"),
                  Gap(220),
                  SvgPicture.asset(AppIcons.right)
                ],
              ),
            ),
            Gap(20),
            Container(
              width: 390,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Gap(10),
                  SvgPicture.asset(AppIcons.about),
                  Gap(10),
                  Text("Ilova haqida"),
                  Gap(210),
                  SvgPicture.asset(AppIcons.right)
                ],
              ),
            ),
            Gap(20),
            Container(
              width: 390,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Gap(10),
                  SvgPicture.asset(AppIcons.rulls),
                  Gap(10),
                  Text("Foydalanish qoidalari"),
                  Gap(150),
                  SvgPicture.asset(AppIcons.right)
                ],
              ),
            ),
            Gap(20),
            Container(
              width: 390,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Gap(10),
                  SvgPicture.asset(AppIcons.bonus),
                  Gap(10),
                  Text("Bonus balansi"),
                  Gap(195),
                  SvgPicture.asset(AppIcons.right)
                ],
              ),
            ),
            Gap(20),
            Container(
              width: 390,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Gap(10),
                  SvgPicture.asset(AppIcons.help),
                  Gap(10),
                  Text("Yordam"),
                  Gap(235),
                  SvgPicture.asset(AppIcons.right)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}