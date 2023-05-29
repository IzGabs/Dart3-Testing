// Interfaces cannot be extended or mixed with (mixin)
// Methods must have a body
interface class IGeneric {
  void doSomething() {}

  /// void doSomething2();
  /// ERROR: 'doSomething2' must have a method body because 'IGeneric' isn't abstract.
}

// When a abstract is added, it
// describes whether the class can contain abstract members and prevents instantiation.
abstract interface class IGenericAbstract {
  //Abstract member
  void doSomething();
  int returnOne() => 1;
}

// Interfaces can be extended inside their library
class TestInsideLibrary extends IGeneric {}

class TestInsideLibrary2 extends IGenericAbstract {
  @override
  void doSomething() {}
}

interface class A implements IGeneric {
  @override
  void doSomething() {}
}

interface class B implements A {
  @override
  void doSomething() {}
}
