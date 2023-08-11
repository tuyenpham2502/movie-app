import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_wallet_state.dart';

class MyWalletCubit extends Cubit<MyWalletState> {
  MyWalletCubit() : super(MyWalletInitial());
}
