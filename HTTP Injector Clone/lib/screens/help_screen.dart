import 'package:flutter/material.dart';
import 'package:httpinjector_clone/constants.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //media query
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: size.width,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            color: kPrimaryColor,
            child: const Text(
              """
                
        HTTP Injector sfjsdl kjfsldk jfskjdf lskdjf lskjf sdfsd fsd in the way of the lksjflsk jdl is my world\n 
        jlskjdflsdfjsdlkfj lsdkfj kjfsdklfj
        sdfslkdfjsdlkfj sdkjflk sjdlfkj sdlk
        sdfjsdlkf jsdlkfj sdklfjsdkl
                
                """,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: size.width,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.white,
            child: const Text(
              """
      
        Example & Manual and Tips:
        https://httpinjector.com
      
        Official Facebook:
        http://www.facebook.com/httpinjector
      
        Group:
        http://httpinjector.com/l.php?go=hi_group
      
        Telegram Channel:
        http:telegram.com/evozi
      
              """,
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.white,
            width: size.width,
            child: const ListTile(
              leading: Icon(Icons.launch),
              title: Text("About"),
            ),
          )
        ]),
      ),
    );
  }
}
