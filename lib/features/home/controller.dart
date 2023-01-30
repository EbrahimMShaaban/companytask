import 'package:bloc/bloc.dart';
import 'package:companytask/features/home/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  bool first = true;
  bool second = false;

  changView(){
    first=!first;
    second=!second;
    emit(ChangeViewState());
  }








}
