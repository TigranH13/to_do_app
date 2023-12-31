import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';

@injectable
class NotificationService {
  Future<void> createTaskScheduleNotification({
    required Task task,
  }) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: task.id.hashCode,
        channelKey: 'basic_channel',
        title: task.title,
        body: 'not forget ',
      ),
      actionButtons: [
        NotificationActionButton(
          key: 'MARK_DONE',
          label: 'Mark Done',
        ),
      ],
      schedule: NotificationCalendar(
        weekday: task.scheduleTime.weekday,
        hour: task.scheduleTime.hour,
        minute: task.scheduleTime.minute,
        second: 0,
        millisecond: 0,
        repeats: false,
      ),
    );
  }

  Future<void> updateTaskScheduleNotification(
      {required Task task, DateTime? scheduleTime}) async {
    final DateTime time;
    if (scheduleTime == null) {
      time = task.scheduleTime;
    } else {
      time = scheduleTime;
    }

    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: task.id.hashCode,
        channelKey: 'basic_channel',
        title: task.title,
        body: 'not forget ',
      ),
      actionButtons: [
        NotificationActionButton(
          key: 'MARK_DONE',
          label: 'Mark Done',
        ),
      ],
      schedule: NotificationCalendar(
        weekday: time.weekday,
        hour: time.hour,
        minute: time.minute,
        second: 0,
        millisecond: 0,
        repeats: false,
      ),
    );
  }

  Future<void> removeNotification({required int id}) async {
    await AwesomeNotifications().cancel(id);
  }

  Future<void> clearNotifications() async {
    await AwesomeNotifications().cancelAll();
  }
}
