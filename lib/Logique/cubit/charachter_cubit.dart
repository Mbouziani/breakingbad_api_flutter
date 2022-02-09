import 'package:bloc/bloc.dart';
import 'package:breakingbad/Data/Model/M_charachter.dart';
import 'package:breakingbad/Data/Repository/charchterReposotry.dart';
import 'package:meta/meta.dart';

part 'charachter_state.dart';

class CharachterCubit extends Cubit<CharachterState> {
  final CharachterREPO charachterREPO;
  List<charachter> listOFcharchter = [];
  CharachterCubit(this.charachterREPO) : super(CharachterInitial());

  List<charachter> getAllchar() {
    charachterREPO.getalldataCharachter().then((mycharachter) {
      emit(Charachterloaded(mycharachter));
      listOFcharchter = mycharachter;
    });
    return listOFcharchter;
  }
}
