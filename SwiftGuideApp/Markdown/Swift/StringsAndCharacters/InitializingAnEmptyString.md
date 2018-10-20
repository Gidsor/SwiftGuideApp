# Инициализация пустых строк
Чтобы создать пустое String значение в качестве отправной точки для создания более длинных строк, либо присвойте литерал пустой строки к переменной, либо инициализируйте объект String c помощью синтаксиса инициализации:

```swift
var emptyString = "" // empty string literal
var anotherEmptyString = String() // initializer syntax
// обе строки пусты и эквиваленты друг другу
```

Можно узнать пустое ли String значение, через его Boolean свойство isEmpty:

```swift
if emptyString.isEmpty {
    print("Nothing to see here")
}
// Выведет "Nothing to see here"
```
