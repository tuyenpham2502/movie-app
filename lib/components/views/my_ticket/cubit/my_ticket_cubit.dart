import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_ticket_state.dart';

class MyTicketCubit extends Cubit<MyTicketState> {
  MyTicketCubit() : super(MyTicketInitial());
}
