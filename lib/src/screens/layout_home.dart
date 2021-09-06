import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//Modelo com MediaQuery
class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height / 1,
              padding: EdgeInsets.only(left: 16, top: 40, right: 16),
              child: ListView(
                children: [
                  cardItemAppBarWithRadius(),
                  Divider(
                    color: Colors.transparent,
                  ),
                  cardItemAproximada(),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    width: 351,
                    height: 600,
                    margin: EdgeInsets.only(
                        left: 12, top: 16, right: 12, bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Divider(
                          color: Colors.transparent,
                        ),
                        _timeButton(context),
                        Divider(
                          color: Colors.transparent,
                        ),
                        _carouselImages(context),
                        Divider(
                          color: Colors.transparent,
                        ),
                        _checkContainer(context),
                        SizedBox(
                          height: 5,
                        ),
                        //_containerInfos(context)
                        //_listTail()
                        //rowFlex()
                        //meuLayoutWidget()
                        _containerInfos(context),
                        _infosListail(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  cardItemAppBarWithRadius() {
    return Container(
      width: 343,
      height: 65,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                padding: EdgeInsets.only(right: 20),
                color: Colors.black,
                onPressed: () {
                  print('Click em voltar');
                },
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text("Sala de Reunião",
                    style: TextStyle(
                        color: Color(0xff464a4d),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter",
                        fontStyle: FontStyle.normal,
                        fontSize: 18.0),
                    textAlign: TextAlign.left),
              ),
              trailing: Text(
                "14/07 - 14/08",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xff464a4d),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  cardItemAproximada() {
    return Container(
      width: 343,
      height: 65,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.blue[50],
        child: Column(
          children: [
            ListTile(
              leading: Transform.translate(
                offset: Offset(-5, -4),
                child: Text(
                  "12",
                  style: const TextStyle(
                      color: const Color(0xff0e0f0f),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontSize: 14),
                ),
              ),
              title: Transform.translate(
                offset: Offset(-35, 0),
                child: Text(
                  "Áreas com disponibilidade de data e hora aproximada",
                  style: const TextStyle(
                      color: const Color(0xff0e0f0f),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontSize: 14),

                  //textAlign: TextAlign.start,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.blue,
                ),
                onPressed: () {
                  print('Click em disponibilidade');
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _timeButton(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 25,
      margin: EdgeInsets.only(left: 12, top: 3, right: 12, bottom: 5),
      color: Colors.orangeAccent[100],
      child: ElevatedButton.icon(
        onPressed: () {
          print('Click em Horários');
        },
        icon: Icon(
          Icons.people_alt,
          size: 20,
          color: Colors.grey[900],
        ),
        label: Text(
          "Horários aproximados disponíveis",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff0e0f0f),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.orange[200],
        ),
      ),
    );
  }

  _carouselImages(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 163.0,
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Carousel(
          images: [
            NetworkImage(
                'https://blog.marelli.com.br/wp-content/uploads/2017/10/sala-reunioes-marelli-florianopolis.jpg'),
            NetworkImage(
                'https://blog.marelli.com.br/wp-content/uploads/2017/10/sala-de-reunioes.png'),
            ExactAssetImage("assets/imagem.png")
          ],
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.white,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.transparent,
          borderRadius: true,
        ),
      ),
    );
  }

  _checkContainer(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Column(
        children: [
          _chackInButton(context),
          _checkOutButton(context),
        ],
      ),
    );
  }

  _chackInButton(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      child: Stack(
        children: [
          PositionedDirectional(
            top: 0,
            start: -5,
            child: IconButton(
              icon: Icon(
                Icons.west_sharp,
                size: 20,
                color: Colors.grey,
              ),
              onPressed: () {
                print('Click em Check-in');
              },
            ),
          ),
          PositionedDirectional(
            top: 15.5,
            start: 40,
            child: FittedBox(
              child: Text("Check-in",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff0e0f0f),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  )),
            ),
          ),
          PositionedDirectional(
            top: 15.5,
            start: 120,
            child: Text("Seg, 27 de Junho 2021 às 16:45",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xffff6720),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                )),
          ),
        ],
      ),
    );
  }

  _checkOutButton(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      child: Stack(
        children: [
          PositionedDirectional(
            top: 0,
            start: -5,
            child: IconButton(
              icon: Icon(
                Icons.west_sharp,
                size: 20,
                color: Colors.grey,
              ),
              onPressed: () {
                print('Click em Check-out');
              },
            ),
          ),
          PositionedDirectional(
            top: 15.5,
            start: 40,
            child: Text("Check-out",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xff0e0f0f),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
          ),
          PositionedDirectional(
            top: 15.5,
            start: 120,
            child: Text("Ter, 28 de Junho 2021 às 16:45",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xffff6720),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                )),
          ),
        ],
      ),
    );
  }

  _containerInfos(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sala de Reunião 04",
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xff229ef1),
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
            textScaleFactor: 1.0,
          ),
          Text("Sala de reunião Privativa",
              style: TextStyle(
                fontFamily: 'Inter',
                color: Color(0xff7a7e80),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              )),
          Text(
            "Salas de Reunião Menores",
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xff7a7e80),
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }

  _infosListail(context) {
    return Container(
      height: 120,
      child: Wrap(
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        children: [
          Container(
            width: 170,
            height: 50,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.only(left: 10.0),
              title: Transform(
                transform: Matrix4.translationValues(-25, 0.0, 0.0),
                child: Text(
                  "Reserva mínima",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff464a4d),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              subtitle: Transform(
                transform: Matrix4.translationValues(-25, 0.0, 0.0),
                child: Text(
                  "12 horas",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff464a4d),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              leading: Icon(
                Icons.people_alt,
                color: Colors.grey[800],
                size: 20,
              ),
            ),
          ),
          Container(
            width: 165,
            height: 50,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.only(left: 10.0),
              title: Transform(
                transform: Matrix4.translationValues(-25, 0.0, 0.0),
                child: Text(
                  "Capacidade",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff464a4d),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              subtitle: Transform(
                transform: Matrix4.translationValues(-25, 0.0, 0.0),
                child: Text(
                  "11 pessoas",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff464a4d),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              leading: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey[800],
                size: 20,
              ),
            ),
          ),
          Container(
            width: 160,
            height: 50,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.only(left: 10.0),
              title: Transform(
                transform: Matrix4.translationValues(-25, 0.0, 0.0),
                child: Text(
                  "Valor Total",
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff464a4d),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              subtitle: Transform(
                transform: Matrix4.translationValues(-25, 0.0, 0.0),
                child: Text(
                  "R\$3.732,70",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff464a4d),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              leading: Icon(
                Icons.attach_money_outlined,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1,
                  height: 39,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print('Click em Reservar');
                    },
                    icon: Icon(
                      Icons.bolt,
                      size: 35,
                    ),
                    label: Text("Reservar",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xfff7f9fa),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        )),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[900],
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Este espaço pode ser reservado instantaneamente",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff7a7e80),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () => print('Click em ver detalhes'),
                  child: Text(
                    "Ver detalhes da área",
                    style: TextStyle(
                        color: Color(0xff229ef1),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
