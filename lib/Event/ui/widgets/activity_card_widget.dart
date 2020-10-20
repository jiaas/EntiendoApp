import 'dart:io';

import 'package:entiendo/Event/bloc/event_provider.dart';
import 'package:entiendo/Event/model/event_model.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import 'modal_show_event.dart';

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

    return FittedBox(
      child: Slidable(
        actionPane: SlidableStrechActionPane(),
        actionExtentRatio: 0.25,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 1.5,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: InkWell(
            onLongPress: () {
              showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) => Container(
                  height: screenHeight / 2,
                  child: ModalShowEvent(widget.event),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: screenHeight * 0.3,
                          minWidth: screenWidth * 0.3),
                      child: Column(
                        children: [
                          Text(
                            widget.event.startTime +
                                "-" +
                                widget.event.endTime,
                            style: TextStyle(
                              fontFamily: "HKGrotesk-Medium",
                              fontSize: 18,
                              color: Color(0xFF344356).withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(widget.event),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: screenHeight * 0.08,
                          minWidth: screenWidth * 0.3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(widget.event.name,
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Bold",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              widget.event.eventType.name,
                              style: TextStyle(
                                fontFamily: "HKGrotesk-Medium",
                                fontSize: 15,
                                color: Color(0xFF344356),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              widget.event.subject.name,
                              style: TextStyle(
                                fontFamily: "HKGrotesk-Medium",
                                fontSize: 15,
                                color: Color(0xFF344356),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconSlideAction(
            caption: 'Pendiente',
            color: Color(0xFF5468FF),
            icon: Icons.watch_later,
            onTap: () => _ChangeEventState(1, "pending")
          ),
          IconSlideAction(
            caption: 'Completado',
            color: Color(0xFF5468FF),
            icon: Icons.check_circle,
            onTap: () => _ChangeEventState(2, "completed")
          ),
          IconSlideAction(
            caption: 'Cancelado',
            color: Color(0xFF5468FF),
            icon: Icons.cancel,
            onTap: () => _ChangeEventState(3, "cancelled"),
          )
        ],
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Editar',
            color: Colors.black54,
            icon: Icons.edit,
            onTap: () => print("Editado ${widget.event.id}"),
          ),
          IconSlideAction(
            caption: 'Eliminar',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => _DeleteEvent(),
          ),
        ],
      ),
    );
  }

  void _ChangeEventState(int statusId,String statusName) {

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

class Divider extends StatefulWidget {
  @override
  Event event;
  Divider(this.event);
  _DividerState createState() => _DividerState();
}

class _DividerState extends State<Divider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: VerticalDivider(
        color: getColor(widget.event.eventStatus.name),
        thickness: 5,
      ),
    );
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

Color getColor(String activityStatus) {
  //This Widget return a Divider that helps to know the activity status.
  switch (activityStatus) {
    case "pendiente":
      {
        return Colors.amber;
      }
    case "completo":
      {
        return Colors.green;
      }
    case "cancelado":
      {
        return Colors.red;
      }

    default:
      {
        return Color(0xFF5468FF);
      }
  }
}
