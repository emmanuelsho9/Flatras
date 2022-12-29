import 'package:flatra/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: Styles.textStyle.copyWith(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(
            text:
                "Luvunge. Lockdown. Nil. Tefir. Bungar. Rebiliga. Eur ning. Epid. Vaholig. Ställa frågor. Levabiras. Sosem ent. Tungar. Sade. Saning. Anade. Poheten. Gijöhet. Pösat. Monorat. Onera. Guhorat. Mahologi. Platta ti kurvan. Ågåsamma. Nesat. Desaren. Polyplabel.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
          ),
        ]))
      ],
    );
  }
}
