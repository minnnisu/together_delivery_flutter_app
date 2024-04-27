import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/post_input_form_provider.dart';

class MeetLocationInputField extends ConsumerWidget {
  final double marginBottomSize;
  final double width;
  final String? errorText;

  const MeetLocationInputField(
      {super.key,
        this.marginBottomSize = 0,
        this.errorText,
        this.width = double.infinity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postEditModel = ref.watch(postInputFormProvider);

    return Container(
      width: width,
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              "만남장소",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          GestureDetector(onTap:() => Navigator.pushNamed(context, '/location/set'),
            child: Container(
              width: width,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffd5d5d5),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(postEditModel.address, style: TextStyle(fontSize: 16),),
            ),
          )
        ],
      ),
    );
  }
}
