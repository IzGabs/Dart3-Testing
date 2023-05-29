# Source
https://dart.dev/resources/dart-3-migration

## Inicio
Estou criando minhas próprias implementações de exemplo, só para poder entender direito as alterações vindas no dart 3. 

### Records

### Patterns

### Class Modifiers

New class modifiers:

- base
- final
- interface
- sealed

Combining modifiers
You can combine some modifiers for layered restrictions. A class declaration can be, in order:

- (Optional) abstract, describing whether the class can contain abstract members and prevents instantiation.
- (Optional) One of base, interface, final or sealed, describing restrictions on other libraries subtyping the class.
- (Optional) mixin, describing whether the declaration can be mixed in.


You can’t combine some modifiers because they are contradictory, redundant, or otherwise mutually exclusive:

- abstract with sealed. A sealed class is always implicitly abstract.
- interface, final or sealed with mixin. These access modifiers prevent mixing in.