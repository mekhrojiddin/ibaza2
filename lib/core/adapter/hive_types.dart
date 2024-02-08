import 'package:hive/hive.dart';
import 'package:ibaza/features/profile/data/models/profile_model.dart';

void registerAdap(){
  Hive.registerAdapter(ProfileModelAdapter());
}