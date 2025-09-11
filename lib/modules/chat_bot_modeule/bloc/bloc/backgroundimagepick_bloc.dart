import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'backgroundimagepick_event.dart';
part 'backgroundimagepick_state.dart';
part 'backgroundimagepick_bloc.freezed.dart';

class BackgroundimagepickBloc
    extends Bloc<BackgroundimagepickEvent, BackgroundimagepickState> {
  BackgroundimagepickBloc()
      : super(_Initial(
            firstimage:
                'assets/images/social-media-seamless-pattern-doodle-600nw-1992018458.webp')) {
    on<BackgroundimagepickEvent>((event, emit) {
      // TODO: implement event handler
      try {
        if (event is _selectimage) {
          emit(_pickedimage(selectedimage: event.selectedimage));
        }
      } catch (e) {}
    });
  }
}
