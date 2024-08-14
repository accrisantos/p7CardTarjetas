import 'package:flutter/material.dart';

void main() => runApp(TarjetaApp());

class TarjetaApp extends StatelessWidget {
  const TarjetaApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Tarjetas Crisantos',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.purple,
      ),
      // A widget which will be started on application startup
      home: Paginainicio(),
    );
  }
}

class Paginainicio extends StatefulWidget {
  const Paginainicio({Key? key}) : super(key: key);

  @override
  State<Paginainicio> createState() => _PaginainicioState();
}

class _PaginainicioState extends State<Paginainicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Ejemplos de Tarjetas"),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
          shape: const StadiumBorder(),
          backgroundColor: Color(0xff9f5cd5)),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.merge(
                  BorderSide(
                      width: 1.5, color: Colors.grey, style: BorderStyle.solid),
                  BorderSide(
                      width: 1.5,
                      color: Colors.grey,
                      style: BorderStyle.solid)),
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xff44ffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide.merge(
                          BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                              style: BorderStyle.solid)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xff9e64bf),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Crisantos is Cool',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 30),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(height: 100, width: 100, child: FlutterLogo())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
