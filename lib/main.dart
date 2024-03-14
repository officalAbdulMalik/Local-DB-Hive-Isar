import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_db_prictice/Hive/Controller/db_services.dart';
import 'package:local_db_prictice/Hive/Domain/model.dart';
import 'package:local_db_prictice/Isar/Controller/open_database.dart';
import 'package:local_db_prictice/Isar/Domain/country_populotion.dart';
import 'package:local_db_prictice/Isar/Domain/dummy_model.dart';
import 'package:pie_chart/pie_chart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await OpenDatabase.openDatabase();
  await Hive.initFlutter();

  Hive.registerAdapter(CountryPeopleAdapter());
  await DBServices().hiveBoxesInit();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  bool isHive = false;


  getHiveData()async{
   await DBServices.initData(DummyModel.countryPeople).whenComplete(() async {
      await  DBServices().getDataFromHive();
    });
  }


  @override
  void initState() {
    getHiveData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      isHive = false;
                      setState(() {

                      });
                    },
                    child: const Text(
                      "Isar",
                      style: TextStyle(color: Colors.black),
                    )),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      isHive = true;
                      setState(() {

                      });
                    },
                    child: const Text(
                      "HIve",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 700,
              width: MediaQuery.of(context).size.width,
              child: !isHive ? ValueListenableBuilder(
                valueListenable: OpenDatabase.countryData,
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return PiChartWidget(
                                  modelData: value[index],
                                );
                              },
                            ));
                          },
                          title: Text(value[index].countryName!),
                          subtitle:
                              Text(value[index].childrenInCountry.toString()),
                          leading: Text(value[index].id.toString()),
                          trailing: InkWell(
                              onTap: () async {
                                await OpenDatabase.delete(id: value[index].id);
                              },
                              child: const Icon(Icons.safety_check)),
                        ),
                      );
                    },
                  );
                },
              ):ValueListenableBuilder(
                valueListenable: DBServices().peopleData,
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return PiChartWidget(
                                  modelData: value[index],
                                );
                              },
                            ));
                          },
                          title: Text(value[index].countryName!),
                          subtitle:
                          Text(value[index].childrenInCountry.toString()),
                          leading: Text(value[index].id.toString()),
                          trailing: InkWell(
                              onTap: () async {
                                DBServices().deleteSpeceficData( value[index].id.toString());
                                // await OpenDatabase.delete(id: value[index].id);
                              },
                              child: const Icon(Icons.safety_check)),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

         await DBServices.initData(DummyModel.countryPeople);
         await getHiveData();
        },
      ),
    );
  }
}

class PiChartWidget extends StatelessWidget {
   PiChartWidget({super.key, this.modelData});
var modelData;

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Children": double.parse(modelData?.childrenInCountry ?? "0.0"),
      "Man": double.parse(modelData?.manInCountry ?? "0.0"),
      "Women": double.parse(modelData?.womenInCountry ?? "0.0"),
      "Educated": double.parse(modelData?.educated ?? "0.0"),
      "Total Population": double.parse(modelData?.totalPopulation ?? "0.0"),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(modelData!.countryName ?? ''),
      ),
      body: Center(
        child: PieChart(
          dataMap: dataMap,
        ),
      ),
    );
  }
}
