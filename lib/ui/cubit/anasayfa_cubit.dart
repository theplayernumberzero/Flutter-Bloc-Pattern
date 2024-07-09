import 'package:bloc_pattern_kullanimi/data/repo/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int>{
  AnasayfaCubit():super(0);

  var mRepo = MatematikRepository();

  void toplamaYap(String alinanSayi1, String alinanSayi2){
    emit(mRepo.toplamaYap(alinanSayi1, alinanSayi2));  //tetikleme ve veri gönderme
  }

  void carpmaYap(String alinanSayi1, String alinanSayi2){
    emit(mRepo.carpmaYap(alinanSayi1, alinanSayi2));  //tetikleme ve veri gönderme
  }
}