import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

ThemeData _themedata =  ThemeData();

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<lightness>((event, emit) {
      emit(lightmode());
      print(state);
    });
    on<darkness>((event, emit) {
      emit(Darkmode());
      print(state);
    });
  }
}
