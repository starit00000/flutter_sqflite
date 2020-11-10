
class ToDo{
  int id;
  String title;
  int priority;
  int isDone;

  ToDo({this.id, this.title, this.priority, this.isDone});

  Map <String, dynamic> toMapWithoutId(){
    return {
      'title': title,
      'priority': priority,
      'is_done': isDone
    };
  }

  Map <String, dynamic> toMap(){
    return {
      '_id': id,
      'title': title,
      'priority': priority,
      'is_done': isDone
    };
  }

  factory ToDo.fromMap(Map <String, dynamic> data) => ToDo(
    id: data['_id'],
    title: data['title'],
    priority: data['priority'],
    isDone: data['is_done']
  );

}