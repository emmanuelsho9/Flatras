import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';

class SeedPhraseNew extends StatelessWidget {
  const SeedPhraseNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Gap(76),
            Text("Refer a Friend", style: TextStyle(
                fontWeight:FontWeight.w600,
                fontSize: 16,
                color: Colors.black
            ),),
          ],
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const
            Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Gap(100),
            Container(
              child: const Text("Your Seed Phrase.",textAlign: TextAlign.center, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),),
            ),
            const Gap(7),
            const Text("Remember to keep your seed phrase safe ", textAlign: TextAlign.center, style:
            TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
            ),),
            const Gap(27),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColumPick(
                  nameOfColum: "1. Home",
                ),
                const Gap(9),
                ColumPick(
                  nameOfColum: "2. Grow",
                ),
                const Gap(9),
                ColumPick(
                  nameOfColum: "3. Sharp",
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColumPick(
                  nameOfColum: "4. Cow",
                ),
                const Gap(9),
                ColumPick(
                  nameOfColum: "5. Car",
                ),
                const Gap(9),
                ColumPick(
                  nameOfColum: "6. Pan",
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColumPick(
                  nameOfColum: "7. Bow",
                ),
                const Gap(9),
                ColumPick(
                  nameOfColum: "8. Water",
                ),
                const Gap(9),
                ColumPick(
                  nameOfColum: "9. Fall",
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColumPick(
                  nameOfColum: "10. Round",
                ),
                const Gap(9),
                ColumPick(
                  nameOfColum: "11. Magnum",
                ),
                const Gap(9),
                ColumPick(
                  nameOfColum: "12. Drum",
                ),
              ],
            ),
            const Gap(30),
            const Text("Note: Do not share your seed phrse with anyone as doing so\n"
                "will result in the you loosing control of your account.", textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,

                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w400
              ),),
          ],
        ),
      ),


    );
  }
}

class ColumPick extends StatelessWidget {
   ColumPick({
    Key? key,
     required this.nameOfColum,
  });

  String nameOfColum;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 97,
      decoration: const BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(10)),

      ),
      child: Center(child: Text("$nameOfColum")),
    );
  }
}
