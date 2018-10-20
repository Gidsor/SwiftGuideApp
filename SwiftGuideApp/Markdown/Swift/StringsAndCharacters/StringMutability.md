# Изменчивость строк
Вы можете указать, может ли конкретный String быть модифицирован, путем присвоения его переменной ( в этом случае он может быть модифицирован), или присвоения его константе ( в этом случае он не может быть модифицирован):

```swift
var variableString = "Horse"
variableString += " and carriage"
// variableString теперь "Horse and carriage"

let constantString = "Highlander"
constantString += " and another Highlander"
// это выдаст ошибку компиляции: строковая константа не может быть модифицирована
```

    Этот подход отличается от изменчивости строк в Objective-C и Cocoa, где мы выбираем между двумя классами (NSString и NSMutableString), чтобы указать, может ли строка быть изменена.
