import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:demo5/features/home/presentation/manager/home/home_cubit.dart';
import 'package:demo5/injection_container.dart';
import 'package:provider/single_child_widget.dart';

class FullScopedBlocProviders {
  static List<SingleChildWidget> providers = [
    BlocProvider(
      create: (context) => sl<HomeCubit>(),
    ),
  ];
}
