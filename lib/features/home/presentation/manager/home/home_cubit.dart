import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:demo5/features/home/domain/use_cases/home_uc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
 HomeCubit({
    required this.homeUC,
  }) : super(HomeInitial());

  final HomeUC homeUC;

}
