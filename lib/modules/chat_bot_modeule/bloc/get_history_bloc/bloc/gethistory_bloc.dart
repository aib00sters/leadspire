import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/history_model.dart';
import 'package:wellbeings/modules/chat_bot_modeule/services/get_history_service.dart';

part 'gethistory_event.dart';
part 'gethistory_state.dart';
part 'gethistory_bloc.freezed.dart';

class GethistoryBloc extends Bloc<GethistoryEvent, GethistoryState> {
  GethistoryBloc() : super(const _Initial()) {
    on<GethistoryEvent>((event, emit) async {
      // TODO: implement event handler
      emit(const GethistoryState.initial());
      if (event is _Gethistory) {
        try {
          final response = await gethistory(
              asstid: event.assistantid, sessionid: event.sessionid);
          emit(GethistoryState.gethistorysuccess(data: response));
        } catch (e) {
          emit(const GethistoryState.gethistoryerror());
        }
      }
    });
  }
}
