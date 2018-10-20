# Работа с символами
Тип String в Swift представляет собой коллекцию значений Character в указанном порядке. Вы можете получить доступ к отдельным значениям Character в строке с помощью итерации по этой строке в for-in цикле:

```swift
for character in "Dog! ?" {
    print(character)
}
// D
// o
// g
// !
//
//?
```

Кроме того, можно создать отдельную Character константу или переменную из односимвольного строкового литерала с помощью присвоения типа Character:

```swift
let exclamationMark: Character = "!"
```

Значения типа String могут быть созданы путем передачи массива типа [Character] в инициализатор:

```swift
let catCharacters: [Character] = ["C", "a", "t", "!", "?"]
let catString = String(catCharacters)
print(catString)
// Выведет "Cat!?"
```
