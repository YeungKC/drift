// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// SallyGenerator
// **************************************************************************

class Product {
  final int id;
  final String name;
  Product({this.id, this.name});
}

class _$ProductsTable extends Products implements TableInfo<Products, Product> {
  final GeneratedDatabase db;
  _$ProductsTable(this.db);
  @override
  GeneratedIntColumn get id => GeneratedIntColumn('products_id', false);
  @override
  GeneratedTextColumn get name => GeneratedTextColumn('name', false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  Products get asDslTable => this;
  @override
  String get $tableName => 'products';
  @override
  Set<GeneratedColumn> get $primaryKey => Set();
  @override
  Product map(Map<String, dynamic> data) {
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Product(
      id: intType.mapFromDatabaseResponse(data['products_id']),
      name: stringType.mapFromDatabaseResponse(data['name']),
    );
  }
}

class User {
  final int id;
  final String name;
  User({this.id, this.name});
}

class _$UsersTable extends Users implements TableInfo<Users, User> {
  final GeneratedDatabase db;
  _$UsersTable(this.db);
  @override
  GeneratedIntColumn get id => GeneratedIntColumn('id', false);
  @override
  GeneratedTextColumn get name => GeneratedTextColumn('name', false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  Users get asDslTable => this;
  @override
  String get $tableName => 'users';
  @override
  Set<GeneratedColumn> get $primaryKey => Set();
  @override
  User map(Map<String, dynamic> data) {
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      id: intType.mapFromDatabaseResponse(data['id']),
      name: stringType.mapFromDatabaseResponse(data['name']),
    );
  }
}

class Todo {
  final int id;
  final String name;
  final String content;
  Todo({this.id, this.name, this.content});
}

class _$TodosTable extends Todos implements TableInfo<Todos, Todo> {
  final GeneratedDatabase db;
  _$TodosTable(this.db);
  @override
  GeneratedIntColumn get id => GeneratedIntColumn('id', false);
  @override
  GeneratedTextColumn get name => GeneratedTextColumn('name', false);
  @override
  GeneratedTextColumn get content => GeneratedTextColumn('content', false);
  @override
  List<GeneratedColumn> get $columns => [id, name, content];
  @override
  Todos get asDslTable => this;
  @override
  String get $tableName => 'todos';
  @override
  Set<GeneratedColumn> get $primaryKey => Set();
  @override
  Todo map(Map<String, dynamic> data) {
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Todo(
      id: intType.mapFromDatabaseResponse(data['id']),
      name: stringType.mapFromDatabaseResponse(data['name']),
      content: stringType.mapFromDatabaseResponse(data['content']),
    );
  }
}

abstract class _$ShopDb extends GeneratedDatabase {
  _$ShopDb() : super(const SqlTypeSystem.withDefaults(), null);
  _$ProductsTable get products => _$ProductsTable(this);
  _$UsersTable get users => _$UsersTable(this);
  _$TodosTable get todos => _$TodosTable(this);
  @override
  List<TableInfo> get allTables => [products, users, todos];
}
