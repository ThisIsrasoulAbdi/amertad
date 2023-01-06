import 'package:amertad/model/mail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final itemMail = DataFacke.getMailData();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: FloatingActionButton.extended(
          onPressed: () {},
          elevation: 0,
          backgroundColor: Colors.blue.shade700,
          label: Icon(CupertinoIcons.pencil_outline),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        child: ListView.builder(
          itemCount: itemMail.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final itemMailData = itemMail[index];
            return Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (itemMailData.imagePath != '')
                    Stack(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                  'assets/images/${itemMailData.imagePath}',
                                  height: 220,
                                  width: 80,
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 0,
                          left: 60,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 3),
                                color: !itemMailData.isOnline
                                    ? Colors.green.shade700
                                    : Colors.transparent,
                                shape: BoxShape.circle),
                          ),
                        ),
                      ],
                    )
                  else
                    Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 60,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 5),
                                color: itemMailData.isOnline
                                    ? Colors.grey
                                    : Colors.transparent,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Container(
                          height: 220,
                          width: 80,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.blue.shade700.withAlpha(50),
                          ),
                          child: Center(
                            child: Text(
                              itemMailData.name.substring(0, 2),
                              softWrap: true,
                              style: themeData.textTheme.headline6!.copyWith(
                                  fontSize: 18, color: Colors.blue.shade700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemMailData.name,
                            style: themeData.textTheme.headline6!
                                .copyWith(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            itemMailData.message,
                            style: themeData.textTheme.bodyText2!
                                .copyWith(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        itemMailData.time,
                        style: themeData.textTheme.bodyText2!
                            .copyWith(color: Colors.grey.shade500),
                      ),
                      Container(
                        height: 8,
                        margin: EdgeInsets.fromLTRB(0, 22, 0, 0),
                        width: 8,
                        decoration: BoxDecoration(
                            color: itemMailData.statusMessage
                                ? Colors.transparent
                                : Colors.blue.shade700,
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
