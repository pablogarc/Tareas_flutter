import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  bool like = false;
  bool dislike = false;
  bool emailColor = false;
  bool callColor = false;
  bool routeColor = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
            'https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg'),
        ListTile(
          title: Text(
            "EL ITESO, Universidad Jesuita de Guadalajara",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          subtitle: Text("San Pedro Tlaquepaque, Jal."),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              IconButton(
                color: like ? Colors.indigo : Colors.black,
                onPressed: () {
                  like = !like;
                  counter++;
                  setState(() {});
                },
                icon: Icon(Icons.thumb_up),
              ),
              IconButton(
                color: dislike ? Colors.indigo : Colors.black,
                onPressed: () {
                  dislike = !dislike;
                  counter--;
                  setState(() {});
                },
                icon: Icon(Icons.thumb_down),
              ),
              Text("$counter"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 80, right: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.email,
                      color: emailColor ? Colors.indigo : Colors.black,
                    ),
                    onPressed: () {
                      emailColor = !emailColor;
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text("SnackBar del boton correo"),
                          ),
                        );
                      setState(() {});
                    },
                    iconSize: 40,
                  ),
                  Text("Correo"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.phone_forwarded,
                      color: callColor ? Colors.indigo : Colors.black,
                    ),
                    onPressed: () {
                      callColor = !callColor;
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text("SnackBar del boton llamada"),
                          ),
                        );
                      setState(() {});
                    },
                    iconSize: 40,
                  ),
                  Text("Llamada"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.directions,
                      color: routeColor ? Colors.indigo : Colors.black,
                    ),
                    onPressed: () {
                      routeColor = !routeColor;
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text(
                                "Se encuentra ubicado en Periférico Sur 8585"),
                          ),
                        );
                      setState(() {});
                    },
                    iconSize: 40,
                  ),
                  Text("Ruta"),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur et arcu elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla nec accumsan mi, et sollicitudin lacus. Praesent pretium neque elit, a hendrerit nisl gravida sed. Aliquam eget felis velit. Maecenas nec nulla laoreet, venenatis nunc hendrerit, tincidunt ante. Etiam posuere sagittis blandit. Cras consectetur eleifend aliquam. Fusce facilisis felis ut cursus lobortis.",
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
