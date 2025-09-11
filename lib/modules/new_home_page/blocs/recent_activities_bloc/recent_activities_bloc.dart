import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:wellbeings/data/isar_models/recent_model/recent_model.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/new_home_page/models/meditation_model/meditation_model.dart';
part 'recent_activities_bloc.freezed.dart';
part 'recent_activities_event.dart';
part 'recent_activities_state.dart';

class RecentActivitiesBloc
    extends Bloc<RecentActivitiesEvent, RecentActivitiesState> {
  RecentActivitiesBloc() : super(const _Initial()) {
    on<RecentActivitiesEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _ListenEvent) {
          final isar = await IsarServices().openDB();
          List<dynamic> data = await IsarServices().getRecent();
          if (data.isEmpty) {
            List<Activity> activities = [
              const Activity(
                  activityName: "Painting and Coloring",
                  activityId: "1010",
                  subTitle: "",
                  activityImage:
                      "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Classical.png?alt=media&token=0eff763c-14df-45d4-bfda-dd142f5b310a",
                  songUrl: "",
                  type: "paint"),
              const Activity(
                  activityName: "Be grateful",
                  activityId: "1011",
                  subTitle: "2.20 min",
                  activityImage:
                      "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/music.png?alt=media&token=74324013-3770-459c-b7e6-7b535dfa3581",
                  songUrl:
                      "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/relaxed-vlog-night-street-131746.mp3?alt=media&token=7ba6554c-5132-42c9-a6d3-a2ca90c1b73e",
                  type: "music"),
            ];
            final random = Random();

            emit(_Success(
                newUser: true,
                recentList: [activities[random.nextInt(activities.length)]]));
          } else {
            
            emit(_Success(
                newUser: false,
                recentList: List<Activity>.from(data.map((e) => Activity(
                    activityName: e.name!,
                    activityId: e.activityId!.toString(),
                    subTitle: e.time != null ? timeago.format(e.time!) : "",
                    activityImage: e.imageUrl!,
                    songUrl: e.songUrl!,
                    type: e.type!)))));
          }
          isar.recentActivities.watchLazy().listen((event) {
            add(const _FetchRecent());
          });

          // await emit.forEach(
          //   isar.recentActivities.buildQuery().watch(),
          //   onData: (data) {
          //     List<RecentActivities> list = data as List<RecentActivities>;
          //     return const _Loading();
          //   },
          //   onError: (error, stackTrace) {
          //     return const _Error();
          //   },
          // );
        } else if (event is _FetchRecent) {
          List<dynamic> data = await IsarServices().getRecent();

          emit(_Success(
              newUser: false,
              recentList: List<Activity>.from(data.map((e) => Activity(
                  activityName: e.name!,
                  activityId: e.activityId!.toString(),
                  subTitle: e.time != null ? timeago.format(e.time!) : "",
                  activityImage: e.imageUrl!,
                  songUrl: e.songUrl!,
                  type: e.type!)))));
        }
      } catch (e) {
        emit(const _Error());
      }
    });
  }
}
