import 'package:dart_3_test/interfaces.dart';

void main() {}

/// class Example extends IGeneric {}
/// class Example extends IGenericAbstract {}
/// * ERROR:
/// The class 'IGeneric' can't be extended outside of its library because it's an interface class

class ExampleImpl implements IGeneric {
  @override
  void doSomething() {}
}

class ExampleImplAbs implements IGenericAbstract {
  @override
  void doSomething() {}

  @override
  int returnOne() {
    /// Even with the body, it requires implementation
    return 1;
  }
}

interface class A implements IGeneric {
  @override
  void doSomething() {}
}

interface class B implements A {
  @override
  void doSomething() {}
}
