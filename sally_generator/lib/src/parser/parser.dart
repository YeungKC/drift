import 'package:analyzer/dart/ast/ast.dart';
import 'package:sally_generator/src/errors.dart';
import 'package:sally_generator/src/model/specified_table.dart';
import 'package:sally_generator/src/sally_generator.dart';

class Parser {
  List<SpecifiedTable> specifiedTables;

  void init() async {}
}

class ParserBase {
  final SallyGenerator generator;

  ParserBase(this.generator);

  Expression returnExpressionOfMethod(MethodDeclaration method) {
    final body = method.body;

    if (!(body is ExpressionFunctionBody)) {
      generator.errors.add(SallyError(
          affectedElement: method.declaredElement,
          critical: true,
          message:
              "This method must have an expression body (use => instead of {return ...})"));
      return null;
    }

    return (method.body as ExpressionFunctionBody).expression;
  }

  String readStringLiteral(Expression expression, void onError()) {
    if (!(expression is StringLiteral)) {
      onError();
    } else {
      String value = (expression as StringLiteral).stringValue;
      if (value == null)
        onError();
      else
        return value;
    }

    return null;
  }

  int readIntLiteral(Expression expression, void onError()) {
    if (!(expression is IntegerLiteral)) {
      onError();
      return null;
    } else {
      return (expression as IntegerLiteral).value;
    }
  }

  Expression findNamedArgument(ArgumentList args, String argName) {
    final argument = args.arguments.singleWhere(
        (e) => e is NamedExpression && e.name.label.name == argName,
        orElse: () => null) as NamedExpression;

    return argument?.expression;
  }
}