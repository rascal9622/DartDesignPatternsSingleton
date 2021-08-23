void main() {
  // Singleton Class object1
  print('## object1 instance ##');
  SingletonObject object1 = SingletonObject();
  object1.getCurrentText(); // first text
  object1.setStateText('This is second text.');
  object1.getCurrentText(); // second text
  
  print('');
  
  // Singleton Class object2
  print('## object2 instance ##');
  SingletonObject object2 = SingletonObject();
  object2.getCurrentText(); // second text
  object2.setStateText('This is third text.');
  object2.getCurrentText(); // third text
  
  print('');
  
  // client1 get currenttext.
  print('## client1 get text ##');
  object1.getCurrentText(); // third text
}

abstract class SingletonObjectBase {
  String initialText;
  String stateText;
  
  void getCurrentText() {
    print(stateText);
  }
  
  void setStateText(String text) {
    stateText = text;
  }
  
  void reset() {
    stateText = initialText;
  }
}

class SingletonObject extends SingletonObjectBase {
  static final SingletonObject _instance = SingletonObject._internal();
  
  factory SingletonObject() {
    return _instance;
  }
  
  SingletonObject._internal() {
    initialText = "This is first text.";
    stateText = initialText;
  }
}
