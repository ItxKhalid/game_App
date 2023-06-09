import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/color_constant.dart';
import 'package:game/widgets/customtext.dart';
import 'package:get/get.dart';
import '../../../Utils/AppConstant.dart';
import '../../../Utils/app_style.dart';
import '../../../widgets/GradientTextWidget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var msgtext = TextEditingController();
  var listviewcon = TextEditingController();
  List<bool> me = [
    false,
    true,
    false,
    true,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: me.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      me[index]
                          ? Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 22),
                                    child: GradientTextWidget(
                                        text: 'You', size: 10),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: 25.w, top: 5.h, bottom: 5.h),
                                        padding: const EdgeInsets.all(12),
                                        // width: 228,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  AppColors.txtGradient4,
                                                  // AppColors.indigoAccent,
                                                  AppColors.indigoAccent,
                                                ]),
                                            borderRadius:
                                                const BorderRadius.only(
                                              // topRight: Radius.circular(10),
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            )),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Hello! I saw you watching my\nstream what do you think about \nit?',
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .textStyle11SemiBoldWhite600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 22),
                                    child: GradientTextWidget(
                                        text: '${DateTime.now().hour.minutes}',
                                        size: 10),
                                  ),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 22),
                                    child: GradientTextWidget(
                                        text: 'SkidrowGames', size: 10),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        // width: 250.w,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              right: 25.w,
                                              top: 5.h,
                                              bottom: 5.h),
                                          padding: EdgeInsets.all(12),
                                          width: 228,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    AppColors.mainColor,
                                                    AppColors.indigoAccent,
                                                    AppColors.indigoAccent,
                                                  ]),
                                              color: Theme.of(context)
                                                  .toggleableActiveColor,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                // topLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                              )),
                                          child: Expanded(
                                            child: Text(
                                              'Hi! I Hi! I really liked your last stream when will be the new one?',
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .textStyle11SemiBoldWhite600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 22),
                                    child: GradientTextWidget(
                                        text: '1 hour age', size: 10),
                                  ),
                                ],
                              ),
                            )
                    ],
                  ),
                );
              }),
        ),
        Container(
          // height: MediaQuery.of(context).size.height*0.044,
          width: double.infinity,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // elevation: 2,
            // margin: EdgeInsets.all(7),
            color: AppColors.fieldUnActive,
            child: TextFormField(
              // autocorrect: true,
              // enableSuggestions: true,
              maxLines: 5,
              minLines: 1,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.multiline,
              onChanged: (value) {
                setState(() {});
              },
              controller: msgtext,
              style: TextStyle(color: AppColors.whiteA700, fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 10, bottom: 16),
                hintStyle: TextStyle(
                    color: const Color(0xff7C7C7C),
                    fontWeight: FontWeight.w300,
                    fontFamily: AppConstant.interMedium,
                    fontSize: 15.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/date_symbol_data_local.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:uuid/uuid.dart';

// class ChatPage extends StatefulWidget {
//   const ChatPage({super.key});
//
//   @override
//   State<ChatPage> createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<ChatPage> {
//   List<types.Message> _messages = [ ];
//   final _user = const types.User(
//     id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
//   );
//
//   @override
//   void initState() {
//     super.initState();
//     _loadMessages();
//   }
//
//   void _addMessage(types.Message message) {
//     setState(() {
//       _messages.insert(0, message);
//     });
//   }
//
//   void _handleAttachmentPressed() {
//     showModalBottomSheet<void>(
//       context: context,
//       builder: (BuildContext context) => SafeArea(
//         child: SizedBox(
//           height: 144,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   _handleImageSelection();
//                 },
//                 child: const Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text('Photo'),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text('Cancel'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//
//   void _handleImageSelection() async {
//     final result = await ImagePicker().pickImage(
//       imageQuality: 70,
//       maxWidth: 1440,
//       source: ImageSource.gallery,
//     );
//
//     if (result != null) {
//       final bytes = await result.readAsBytes();
//       final image = await decodeImageFromList(bytes);
//
//       final message = types.ImageMessage(
//         author: _user,
//         createdAt: DateTime.now().millisecondsSinceEpoch,
//         height: image.height.toDouble(),
//         id: const Uuid().v4(),
//         name: result.name,
//         size: bytes.length,
//         uri: result.path,
//         width: image.width.toDouble(),
//       );
//
//       _addMessage(message);
//     }
//   }
//
//   void _handleMessageTap(BuildContext _, types.Message message) async {
//     if (message is types.FileMessage) {
//       var localPath = message.uri;
//
//       if (message.uri.startsWith('http')) {
//         try {
//           final index =
//           _messages.indexWhere((element) => element.id == message.id);
//           final updatedMessage =
//           (_messages[index] as types.FileMessage).copyWith(
//             isLoading: true,
//           );
//
//           setState(() {
//             _messages[index] = updatedMessage;
//           });
//
//           final client = http.Client();
//           final request = await client.get(Uri.parse(message.uri));
//           final bytes = request.bodyBytes;
//           final documentsDir = (await getApplicationDocumentsDirectory()).path;
//           localPath = '$documentsDir/${message.name}';
//
//           if (!File(localPath).existsSync()) {
//             final file = File(localPath);
//             await file.writeAsBytes(bytes);
//           }
//         } finally {
//           final index =
//           _messages.indexWhere((element) => element.id == message.id);
//           final updatedMessage =
//           (_messages[index] as types.FileMessage).copyWith(
//             isLoading: null,
//           );
//
//           setState(() {
//             _messages[index] = updatedMessage;
//           });
//         }
//       }
//     }
//   }
//
//   void _handlePreviewDataFetched(
//       types.TextMessage message,
//       types.PreviewData previewData,
//       ) {
//     final index = _messages.indexWhere((element) => element.id == message.id);
//     final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
//       previewData: previewData,
//     );
//
//     setState(() {
//       _messages[index] = updatedMessage;
//     });
//   }
//
//   void _handleSendPressed(types.PartialText message) {
//     final textMessage = types.TextMessage(
//       author: _user,
//       createdAt: DateTime.now().millisecondsSinceEpoch,
//       id: const Uuid().v4(),
//       text: message.text,
//     );
//
//     _addMessage(textMessage);
//   }
//
//   void _loadMessages() async {
//     final response = await rootBundle.loadString('assets/messages.json');
//     final messages = (jsonDecode(response) as List)
//         .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
//         .toList();
//
//     setState(() {
//       _messages = messages;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) =>  Container(
//     width: double.infinity,
//     height: 400,
//     child: Chat(
//         messages: _messages,
//         onAttachmentPressed: _handleAttachmentPressed,
//         onMessageTap: _handleMessageTap,
//         onPreviewDataFetched: _handlePreviewDataFetched,
//         onSendPressed: _handleSendPressed,
//         showUserAvatars: false,
//         showUserNames: true,
//         user: _user,
//
//     ),
//   );
// }
