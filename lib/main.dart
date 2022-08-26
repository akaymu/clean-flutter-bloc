import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/constants/palette.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/features/show_news/presentation/news_cubit/news_cubit.dart';

import 'package:news_app/features/show_news/presentation/pages/home_page.dart';
import 'package:news_app/features/show_news/presentation/pages/news_view_page.dart';

import 'core/services_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setUpServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return NewsCubit();
        })
      ],
      child: MaterialApp(
        title: 'News App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            colorScheme: const ColorScheme.light().copyWith(
              secondary: Palette.deepBlue,
            ),
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        home: const HomePage(),
      ),
    );
  }
}
