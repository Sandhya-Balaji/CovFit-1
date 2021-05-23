import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:url_launcher/url_launcher.dart';




class ChatBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Example Dialogflow Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: new HomePageDialogflow(),
    );
  }
}

class HomePageDialogflow extends StatefulWidget {
  HomePageDialogflow({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageDialogflow createState() => new _HomePageDialogflow();
}

class _HomePageDialogflow extends State<HomePageDialogflow> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme
          .of(context)
          .accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                new InputDecoration.collapsed(
                    hintText: "Enter text here for help/entertainment"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void Response(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
    await AuthGoogle(fileJson: "assets/covbot-uqps-3a48d4a1341d.json")
        .build();
    Dialogflow dialogflow =
    Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse response = await dialogflow.detectIntent(query);
    var intent = response.queryResult.intent.displayName;
    if(intent == "EmergencyContact1"){
      launch("tel: 8939796333");
    }
    else if(intent == "EmergencyContact2"){
      launch("tel: 9790956452");
    }
    else if(intent == "PopMusic"){
      launch("https://www.youtube.com/playlist?list=PLyORnIW1xT6xu8M0BYUiP2vub8n8KI_-G");
    }
    else if(intent == "HospitalNumber"){
      launch("tel: 108");
    }
    else if(intent == "JazzMusic"){
      launch("https://www.youtube.com/watch?v=ZZcuSBouhVA&list=PL8F6B0753B2CCA128");
    }
    else if (query == "show bed availability") {
      // launch(response.queryResult.fulfillmentText);
      //var url = response.queryResult.fulfillmentMessages[1]["image"]["imageUri"];
      const url = "https://stopcorona.tn.gov.in/beds.php";
      launch(url);
      //response.queryResult.fulfillmentText = ("tel: +91 8309734049");
    }
    else if (intent == "Cough") {
      var splitted = response.queryResult.fulfillmentText.split("\n");
      for (int i = 0 ; i< splitted.length; i ++) {
        response.queryResult.fulfillmentText = splitted[i];
        ChatMessage message1;
        message1 = new ChatMessage(
          text: response.getMessage() ??
              new CardDialogflow(response.getListMessage()[0]).title,
          name: "CovBot",
          type: false,
        );
        setState(() {
          _messages.insert(0, message1);
        });
      }
    }

    else if (intent == "Fever") {
      var splitted = response.queryResult.fulfillmentText.split("\n");
      for (int i = 0 ; i< splitted.length; i ++) {
        response.queryResult.fulfillmentText = splitted[i];
        ChatMessage message1;
        message1 = new ChatMessage(
          text: response.getMessage() ??
              new CardDialogflow(response.getListMessage()[0]).title,
          name: "CovBot",
          type: false,
        );
        setState(() {
          _messages.insert(0, message1);
        });
      }
    }

    else if (intent == "Diarrhea") {
      var splitted = response.queryResult.fulfillmentText.split("\n");
      for (int i = 0 ; i< splitted.length; i ++) {
        response.queryResult.fulfillmentText = splitted[i];
        ChatMessage message1;
        message1 = new ChatMessage(
          text: response.getMessage() ??
              new CardDialogflow(response.getListMessage()[0]).title,
          name: "CovBot",
          type: false,
        );
        setState(() {
          _messages.insert(0, message1);
        });
      }
    }

    else if (intent == "Fatigue") {
      var splitted = response.queryResult.fulfillmentText.split("\n");
      for (int i = 0 ; i< splitted.length; i ++) {
        response.queryResult.fulfillmentText = splitted[i];
        ChatMessage message1;
        message1 = new ChatMessage(
          text: response.getMessage() ??
              new CardDialogflow(response.getListMessage()[0]).title,
          name: "CovBot",
          type: false,
        );
        setState(() {
          _messages.insert(0, message1);
        });
      }
    }

    else {
      ChatMessage message = new ChatMessage(
        text: response.getMessage() ??
            new CardDialogflow(response.getListMessage()[0]).title,
        name: "CovBot",
        type: false,
      );
      setState(() {
        _messages.insert(0, message);
      });
    }
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
      name: "You",
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    Response(text);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   centerTitle: true,
      //   title: new Text("Chat bot"),
      // ),
      body: new Column(children: <Widget>[
        new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            )),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
          child: _buildTextComposer(),
        ),
      ]),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: new CircleAvatar(child: new Text('B')),
      ),
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(this.name,
                style: new TextStyle(fontWeight: FontWeight.bold)),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(this.name, style: Theme.of(context).textTheme.subhead),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: new CircleAvatar(
            child: new Text(
              this.name[0],
              style: new TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
