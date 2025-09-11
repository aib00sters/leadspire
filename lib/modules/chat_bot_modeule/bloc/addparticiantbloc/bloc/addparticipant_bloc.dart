import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/utilities/app_functions.dart';

part 'addparticipant_event.dart';
part 'addparticipant_state.dart';
part 'addparticipant_bloc.freezed.dart';

class AddparticipantBloc
    extends Bloc<AddparticipantEvent, AddparticipantState> {
  List<Item> participants = [];
  Set<String> addedid = {};
  Set<String> addeddoctorid = {};
  AddparticipantBloc() : super(const _Initial()) {
    // Clear the list when the bloc is initialized
    on<AddparticipantEvent>((event, emit) {
      // TODO: implement event handler
      //items.clear();
      try {
        emit(AddparticipantState.initial());
        if (event is _Addparticipant) {
          if (participants.isNotEmpty) {
            if (event.item.type == "doctor") {
              if (!addeddoctorid.contains(event.item.id)) {}
              {
                addeddoctorid.add(event.item.id??"");
                participants.add(event.item);
              }
            } else {
              if (!addedid.contains(event.item.id)) {
                addedid.add(event.item.name??"");
                participants.add(event.item);
              }
            }
          } else {
            participants.add(event.item);
            if (event.item.type == "doctor") {
              addeddoctorid.add(event.item.id??"");
            } else {
              addedid.add(event.item.id??"");
            }
          }

          print("The lenhth of=${participants.length}");
          emit(AddparticipantState.sucess());
          //emit(AddparticipantState.newparticipant(item: participants));
        } else if (event is _Clear) {
          participants.clear();
        } else if (event is _Loadparticiapants) {
          emit(AddparticipantState.listloading(item: participants));
        }
        //else if(event is )
      } catch (e) {
        print(e);
      }
    });
  }
}
