import 'package:entiendo/Event/bloc/event_provider.dart';
import 'package:entiendo/Event/model/event_model.dart';
import 'package:entiendo/Event/ui/widgets/modal_show_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class ActivityCard extends StatefulWidget {
  Event event;

  ActivityCard(
    this.event,
  );

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    final _mediaQueryData = MediaQuery.of(context);
    final screenWidth = _mediaQueryData.size.width;
    final screenHeight = _mediaQueryData.size.height;

    return FadeIn(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInToLinear,
      child: FittedBox(
        child: Slidable(
          actionPane: SlidableStrechActionPane(),
          actionExtentRatio: 0.25,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            elevation: 0,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: InkWell(
              onLongPress: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return AnimatedPadding(
                        padding: MediaQuery.of(context).viewInsets,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.decelerate,
                        child: Container(
                          child: Wrap(
                            children: <Widget>[ModalShowEvent(widget.event)],
                          ),
                        ),
                      );
                    });
              },
              child: Card(
                shadowColor: getColorByType(widget.event.eventType.id)[0],
                borderOnForeground: false,
                elevation: 0,
                child: ClipPath(
                  clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Container(
                    height: screenHeight / 5.2,
                    width: screenWidth / 1.2,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: getColorByType(widget.event.eventType.id)[0],
                          width: 10,
                        ),
                      ),
                      color: getColorByType(widget.event.eventType.id)[1],
                    ),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: screenHeight / 30,
                                  width: screenHeight / 3.5,
                                  margin: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    widget.event.name,
                                    style: TextStyle(
                                        color: Color(0xFF20205E),
                                        fontSize: 20,
                                        fontFamily: "sf-compact",
                                        fontWeight: FontWeight.w700),
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                  ),
                                ),
                                Container(
                                  height: screenHeight / 20,
                                  width: screenHeight / 3.5,
                                  margin: EdgeInsets.only(left: 15),
                                  child: Text(
                                    widget.event.startTime +
                                        " - " +
                                        widget.event.endTime,
                                    style: TextStyle(
                                      color: Color(0xFF787993),
                                      fontSize: 20,
                                      fontFamily: "sf-compact",
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                  ),
                                ),
                                Container(
                                  height: screenHeight / 20,
                                  width: screenHeight / 3.5,
                                  margin: EdgeInsets.only(left: 15),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 0),
                                        width: 50.0,
                                        height: 35.0,
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: Image.asset(
                                                      'assets/images/avatar1.png')
                                                  .image),
                                        ),
                                      ),
                                      Container(
                                        width: 50.0,
                                        height: 35.0,
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: Image.asset(
                                                      'assets/images/avatar2.png')
                                                  .image),
                                        ),
                                      ),
                                      Container(
                                        width: 50.0,
                                        height: 35.0,
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: Image.asset(
                                                      'assets/images/avatar3.png')
                                                  .image),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: screenHeight / 20,
                                  width: screenHeight / 20,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 20, top: 0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.videocam,
                                      color: getColorByType(
                                          widget.event.eventType.id)[0],
                                      size: 25,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          actions: <Widget>[
            IconSlideAction(
              caption: 'Pendiente',
              iconWidget: CircleAvatar(
                backgroundColor: getColorByType(widget.event.eventType.id)[0],
                child: Icon(
                  Icons.watch_later,
                  color: Colors.white,
                ),
                foregroundColor: Colors.white,
              ),
              foregroundColor: getColorByType(widget.event.eventType.id)[0],
              onTap: () => _ChangeEventState(2, "completed"),
            ),
            IconSlideAction(
              caption: 'Completado',
              iconWidget: CircleAvatar(
                backgroundColor: getColorByType(widget.event.eventType.id)[0],
                child: Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
                foregroundColor: Colors.white,
              ),
              foregroundColor: getColorByType(widget.event.eventType.id)[0],
              onTap: () => _ChangeEventState(2, "completed"),
            ),
          ],
          secondaryActions: <Widget>[
            IconSlideAction(
              caption: 'Eliminar',
              iconWidget: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
                foregroundColor: Colors.white,
              ),
              foregroundColor: Colors.red,
              onTap: () => _ChangeEventState(2, "completed"),
            ),
          ],
        ),
      ),
    );
  }

  void _ChangeEventState(int statusId, String statusName) {
    widget.event.eventStatus.id = statusId;
    widget.event.eventStatus.name = statusName;
    Provider.of<EventProvider>(context, listen: false)
        .changeEventStatus(widget.event);
  }

  void _DeleteEvent() {
    Provider.of<EventProvider>(context, listen: false)
        .deleteEvent(widget.event);
  }
}

Widget EventScore([String score]) {
  if (score != null && double.tryParse(score) != null) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: CircleAvatar(
        backgroundColor: Color(0xFF5468FF),
        child: Text(score,
            style: TextStyle(
                fontFamily: "HKGrotesk-Medium",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            textAlign: TextAlign.left),
      ),
    );
  } else {
    return Container();
  }
}

List<Color> getColorByType(int eventType) {
  List<Color> listaColores = List<Color>();

  switch (eventType) {
    case 1:
      {
        listaColores.add(Color(0xFF948BFF));
        listaColores.add(Color(0xffEFEEFF));
        return listaColores;
      }
    case 2:
      {
        listaColores.add(Color(0xFFFF6363));
        listaColores.add(Color(0xFFFFF1F1));
        return listaColores;
      }
    case 3:
      {
        listaColores.add(Color(0xFF1BC3D5));
        listaColores.add(Color(0xFFE5F7F8));
        return listaColores;
      }
    case 4:
      {
        listaColores.add(Color(0xFFFF9C2C));
        listaColores.add(Color(0xFFFCF0E4));
        return listaColores;
      }
    case 5:
      {
        listaColores.add(Color(0xFF9da669));
        listaColores.add(Color(0xFFE2F0CB));
        return listaColores;
      }
  }
}

Icon getIconByType(Event event) {
  switch (event.eventType.id) {
    case 1:
      {
        return Icon(
          Icons.assignment_sharp,
          color: getColorByType(event.eventType.id)[0],
          size: 25,
        );
      }
    case 2:
      {
        return Icon(
          Icons.call,
          color: getColorByType(event.eventType.id)[0],
          size: 25,
        );
      }
    case 3:
      {
        return Icon(
          Icons.videocam,
          color: getColorByType(event.eventType.id)[0],
          size: 25,
        );
      }
    case 4:
      {
        return Icon(
          Icons.grade,
          color: getColorByType(event.eventType.id)[0],
          size: 25,
        );
      }
    case 5:
      {
        return Icon(
          Icons.group,
          color: getColorByType(event.eventType.id)[0],
          size: 25,
        );
      }
  }
}
