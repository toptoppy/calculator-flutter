part of 'calculator_bloc.dart';

abstract class CalculatorEvent extends Equatable {
  const CalculatorEvent();

  @override
  List<Object> get props => [];
}

class OperandEvent extends CalculatorEvent {
  const OperandEvent(this.operand);

  final String operand;

  @override
  List<Object> get props => [operand];
}

class OperatorEvent extends CalculatorEvent {
  const OperatorEvent(this.operator);

  final String operator;

  @override
  List<Object> get props => [operator];
}
