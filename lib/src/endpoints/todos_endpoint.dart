import 'package:myapp_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class TodosEndPoint extends Endpoint {

  Future<void> createTodo(Session session,Todo newTodo) {
    return Todo.insert(session, newTodo);
  }

  Future<List<Todo>> gettAllTodo(Session session) {
  return Todo.find(session);
  }

}
