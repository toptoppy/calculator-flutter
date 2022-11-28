import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorInitial()) {
    on<OperandEvent>(_handleOperand);

    on<OperatorEvent>(_handleOperator);
  }

  void _handleOperand(OperandEvent event, Emitter<CalculatorState> emit) {
    debugPrint(event.operand);
  }

  void _handleOperator(OperatorEvent event, Emitter<CalculatorState> emit) {
    debugPrint(event.operator);
  }
}
