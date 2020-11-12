import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Empresa"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(13),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: <Widget>[
                      Image.asset('imagens/detalhe_empresa.png'),
                      Text(
                        "Sobre a empresa",
                        style:
                            TextStyle(fontSize: 22, color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porttitor, justo a rutrum consectetur, purus purus semper ipsum, id interdum sem risus ut justo. Pellentesque quis elementum felis, at luctus urna. Curabitur pharetra, turpis eget consectetur placerat, odio velit molestie mi, lobortis vulputate metus ante non nunc. Donec porttitor massa sit amet porta accumsan. Donec efficitur augue ante, non condimentum sapien molestie ut. Vivamus iaculis sollicitudin porta. Integer turpis sem, luctus ut tincidunt in, egestas a sem. Nulla sed erat lectus. Vestibulum sit amet rhoncus arcu. Sed lacinia sapien vel neque facilisis rhoncus. Duis quis ex sodales neque lacinia viverra. Praesent et velit libero.\n\n" +
                      "Vestibulum ut mi sapien. Sed iaculis ante gravida est ultrices, id rutrum nisi sagittis. Cras vitae euismod lectus. Curabitur pellentesque nisi ut tellus ultricies, vulputate commodo lorem convallis. Nunc fermentum nulla vel mi ultricies, eu dictum mi fringilla. Nullam sollicitudin mollis nulla. Curabitur dignissim eros id leo scelerisque dictum. Etiam id tristique velit. Sed venenatis nibh sed massa imperdiet, at imperdiet ipsum tincidunt. Suspendisse vestibulum, mauris eget ornare vestibulum, mi nisi dictum diam, sit amet eleifend libero elit eget odio. Duis sapien nisi, blandit eget tortor sed, efficitur venenatis quam. Proin consequat sapien ut quam bibendum porttitor.\n\n" +
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porttitor, justo a rutrum consectetur, purus purus semper ipsum, id interdum sem risus ut justo. Pellentesque quis elementum felis, at luctus urna. Curabitur pharetra, turpis eget consectetur placerat, odio velit molestie mi, lobortis vulputate metus ante non nunc. Donec porttitor massa sit amet porta accumsan. Donec efficitur augue ante, non condimentum sapien molestie ut. Vivamus iaculis sollicitudin porta. Integer turpis sem, luctus ut tincidunt in, egestas a sem. Nulla sed erat lectus. Vestibulum sit amet rhoncus arcu. Sed lacinia sapien vel neque facilisis rhoncus. Duis quis ex sodales neque lacinia viverra. Praesent et velit libero.\n\n" +
                      "Vestibulum ut mi sapien. Sed iaculis ante gravida est ultrices, id rutrum nisi sagittis. Cras vitae euismod lectus. Curabitur pellentesque nisi ut tellus ultricies, vulputate commodo lorem convallis. Nunc fermentum nulla vel mi ultricies, eu dictum mi fringilla. Nullam sollicitudin mollis nulla. Curabitur dignissim eros id leo scelerisque dictum. Etiam id tristique velit. Sed venenatis nibh sed massa imperdiet, at imperdiet ipsum tincidunt. Suspendisse vestibulum, mauris eget ornare vestibulum, mi nisi dictum diam, sit amet eleifend libero elit eget odio. Duis sapien nisi, blandit eget tortor sed, efficitur venenatis quam. Proin consequat sapien ut quam bibendum porttitor.\n\n" +
                      "Nunc ornare elementum dolor vitae cursus. Nulla sed mi lacinia, auctor urna eu, sodales augue. Praesent tristique nulla lorem, sit amet interdum lacus hendrerit at. Sed eget semper elit. Sed tincidunt, enim sit amet viverra gravida, nibh felis posuere lacus, a porttitor leo mauris a enim. Aliquam sed ex convallis, dignissim elit sed, interdum dui. Sed congue pulvinar sem at egestas.",
                )
              ],
            ),
          ),
        ));
  }
}
