import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_responses.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeDataEvent>(_fetchHomeData);
  }

  Future<void> _fetchHomeData(
      HomeDataEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.initial));
    String jsonString = await rootBundle.loadString('assets/json/home.json');
    Map<String, dynamic> jsonData = json.decode(jsonString);
    HomeResponseModel homeData = HomeResponseModel.fromJson(jsonData);
    if (homeData.data.isNotEmpty) {
      emit(state.copyWith(status: HomeStatus.success, homeData: homeData));
    } else {
      emit(state.copyWith(
        status: HomeStatus.initial,
      ));
    }
  }
}
