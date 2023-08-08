import 'package:flutter/material.dart';
import 'package:market/pages/widgets/chat_bubble.dart';
import 'package:market/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});



  @override
  Widget build(BuildContext context) {

    header(){
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Container(
            margin: EdgeInsets.only(
              top: 12
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo_online.png',
                  width: 43,
                ),
              
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                          'Shope Store',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 20
                          ),
                        ),
                        Text(
                          'Online',
                          style: secondaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 14
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    
    productPriview(){
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(
          bottom: 20
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/image_shoes.png',
              width: 54,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COURT VISIO... ',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\$ 57.12',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                
                ],
              ),
            ),
              Image.asset(
                'assets/button_close.png',
                width: 22,
              ),
          ],
        ),
      );
    }

    Widget chatInput(){
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPriview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 54,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Type Message...',
                          hintStyle: subtitleTextStyle
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/button_send.png',
                  width: 50,
                )
              ],
            ),
          ],
        ),
      );
    }
    
    Widget content(){
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Hi, this item os still available',
            hasProduct: true,
          ),
            ChatBubble(
            isSender: false,
            text: 'Good night, This item is only available in size 42 and 43',
          ),
          
        ],
      );
    }
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content()
    );
  }
}