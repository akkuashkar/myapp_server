/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Todo extends _i1.TableRow {
  Todo({
    int? id,
    required this.title,
    required this.isCompleted,
    required this.createdTime,
    required this.description,
  }) : super(id);

  factory Todo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Todo(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      isCompleted: serializationManager
          .deserialize<bool>(jsonSerialization['isCompleted']),
      createdTime: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdTime']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
    );
  }

  static final t = TodoTable();

  String title;

  bool isCompleted;

  DateTime createdTime;

  String description;

  @override
  String get tableName => 'todo';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
      'createdTime': createdTime,
      'description': description,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
      'createdTime': createdTime,
      'description': description,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
      'createdTime': createdTime,
      'description': description,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'isCompleted':
        isCompleted = value;
        return;
      case 'createdTime':
        createdTime = value;
        return;
      case 'description':
        description = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Todo>> find(
    _i1.Session session, {
    TodoExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Todo>(
      where: where != null ? where(Todo.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Todo?> findSingleRow(
    _i1.Session session, {
    TodoExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Todo>(
      where: where != null ? where(Todo.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Todo?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Todo>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TodoExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Todo>(
      where: where(Todo.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TodoExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Todo>(
      where: where != null ? where(Todo.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TodoExpressionBuilder = _i1.Expression Function(TodoTable);

class TodoTable extends _i1.Table {
  TodoTable() : super(tableName: 'todo');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final isCompleted = _i1.ColumnBool('isCompleted');

  final createdTime = _i1.ColumnDateTime('createdTime');

  final description = _i1.ColumnString('description');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        isCompleted,
        createdTime,
        description,
      ];
}

@Deprecated('Use TodoTable.t instead.')
TodoTable tTodo = TodoTable();
