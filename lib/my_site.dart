import 'package:flutter/material.dart';
import 'package:adillasite/core/configs/configs.dart';
import 'package:adillasite/core/configs/connection/bloc/connected_bloc.dart';
import 'package:adillasite/core/configs/connection/network_check.dart';
import 'package:adillasite/core/providers/drawer_provider.dart';
import 'package:adillasite/core/providers/scroll_provider.dart';
import 'package:adillasite/core/theme/cubit/theme_cubit.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class AdillaSite extends StatelessWidget {
  const AdillaSite({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<ConnectedBloc>(create: (context) => ConnectedBloc()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return Sizer(builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Adilla\'s Portfolio',
              theme: AppTheme.themeData(state.isDarkThemeOn, context),
              initialRoute: "/",
              routes: {"/": (context) => const NChecking()},
            );
          });
        }),
      ),
    );
  }
}
