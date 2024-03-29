import 'package:flutter/material.dart';
import 'package:flutter_demos/lol/models/heroSimple.dart';
import 'package:flutter_demos/lol/widgets/home/heroItemAvatar.dart';
import 'package:flutter_demos/lol/utils/utils.dart';

class HeroItem extends StatelessWidget {
  final HeroSimple data;
  const HeroItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'heroDetail', arguments: data);
      },
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          color: Colors.grey[50],
          shadows: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: new Offset(0.0, 0.0),
              blurRadius: 6.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        padding: EdgeInsets.only(left: 20),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeroItemAvatar(
              img: Utils.getHeroAvatar(data.image['full']),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(data.name, style: TextStyle(fontSize: 16)),
                Text(data.title),
                Text(data.id),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: data.tags.map((tag) {
                      return TextSpan(
                        text: Utils.heroTagsMap(tag) + ' ',
                        style: TextStyle(color: Colors.green),
                      );
                    }).toList(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
