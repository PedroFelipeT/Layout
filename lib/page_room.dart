import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class RoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 16, top: 56, right: 16, bottom: 16),
            width: 375,
            height: 797,
            child: Column(
              children: [
                _barButton(),
                Divider(
                  color: Colors.transparent,
                ),
                _availabilityButton(),
                Divider(
                  color: Colors.grey,
                  height: 30,
                ),
                Container(
                  width: 351,
                  height: 579,
                  margin:
                      EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.brown[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      _scheduleButton(),
                      Divider(
                        color: Colors.transparent,
                      ),
                      _carouselImages(),
                      Divider(
                        color: Colors.transparent,
                      ),
                      _checkContainer(),
                      Divider(
                        color: Colors.transparent,
                      ),
                      _containerInfos()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  _barButton() {
    return Container(
      width: 343,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Stack(
        children: [
          PositionedDirectional(
            top: 0,
            start: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                print('Click em voltar');
              },
            ),
          ),
          PositionedDirectional(
            top: 15.5,
            start: 50,
            child: Text("Sala de Reunião",
                style: const TextStyle(
                    color: const Color(0xff464a4d),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Inter",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.left),
          ),
          PositionedDirectional(
            top: 15.5,
            start: 233,
            child: Text("14/07 - 14/08",
                style: const TextStyle(
                    color: const Color(0xff464a4d),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Inter",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.left),
          ),
        ],
      ),
    );
  }

  _availabilityButton() {
    return Container(
      width: 343,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text("12",
              style: const TextStyle(
                  color: const Color(0xff0e0f0f),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Inter",
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0),
              textAlign: TextAlign.right),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Áreas com disponibilidade de data e hora aproximada",
                    style: const TextStyle(
                        color: const Color(0xff0e0f0f),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                    textAlign: TextAlign.left),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.blue,
            ),
            onPressed: () {
              print('Click em disponibilidade');
            },
          ),
        ],
      ),
    );
  }

  _scheduleButton() {
    return Container(
      width: 327,
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
          color: Colors.grey,
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

  _carouselImages() {
    return SizedBox(
        width: 310.0,
        height: 163.0,
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
        ));
  }

  _checkContainer() {
    return Container(
      width: 340,
      height: 70,
      child: Column(
        children: [
          _chackInButton(),
          _checkOutButton(),
        ],
      ),
    );
  }

  _chackInButton() {
    return Container(
      width: 327,
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
            child: Text("Check-in",
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

  _checkOutButton() {
    return Container(
      width: 327,
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

  _containerInfos() {
    return Container(
      margin: EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sala de Reunião 04",
              style: TextStyle(
                fontFamily: 'Inter',
                color: Color(0xff229ef1),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              )),
          Text("Sala de reunião Privativa",
              style: TextStyle(
                fontFamily: 'Inter',
                color: Color(0xff7a7e80),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              )),
          Text("Salas de Reunião Menores",
              style: TextStyle(
                fontFamily: 'Inter',
                color: Color(0xff7a7e80),
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              )),
          Container(
            width: 300,
            height: 65,
            margin: EdgeInsets.only(left: 0, top: 6, right: 6, bottom: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                            height: 20,
                            child: Icon(
                              Icons.people_alt,
                              color: Colors.grey[800],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Reserva mínima",
                                maxLines: 1,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xff464a4d),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text("12 horas",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xff464a4d),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 35,
                            child: Icon(
                              Icons.attach_money_outlined,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
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
                              Text("R\$3.732,70",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xff464a4d),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Icon(
                          Icons.supervised_user_circle,
                          color: Colors.grey[800],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Capacidade",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xff464a4d),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text("11 pessoas",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                color: Color(0xff464a4d),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            width: 327,
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
          Column(
            children: [
              Center(
                child: Text(
                  "Este espaço pode ser reservado instantaneamente",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xff7a7e80),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Center(
                  child: GestureDetector(
                onTap: () {
                  print('Click nos detalhes');
                },
                child: Text(
                  "Ver detalhes da área",
                  style: const TextStyle(
                      color: const Color(0xff229ef1),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.0),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
