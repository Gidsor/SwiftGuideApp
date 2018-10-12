# Обработка ошибок
Вы представления  ошибки, используя любой тип, который соответствует протоколу Error.

```swift
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}
```

Используйте ключевое слово throw для генерации ошибки и throws для обозначения функции, которая может сгенерировать ошибку. Если вы генерируете ошибку в функции, то функция немедленно возвращается, а код, который вызвал функцию, обрабатывает эту ошибку.

```swift
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}
```

Есть несколько способов обработки ошибок. Один из вариантов использование do-catch блока. Внутри блока do, вы маркируете код, который может сгенерировать ошибку при помощи ключевого слова try перед ним. Внутри же блока catch автоматически присваивается имя error, но вы можете изменить его, указать свое собственное.

```swift
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}
```

Вы можете использовать несколько блоков catch для обработки различных ошибок. Вы пишите некий шаблон после каждого блока catch, точно так же как это вы делаете в условном операторе switch:

```swift
do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}
```

Другим способом обработки ошибок является ключевое слово try?, которое позволяет изменить результат в опциональный тип. Если функция генерирует ошибку, то генерируется конкретная ошибка и результат становится равным nil. В противном случае, результат, содержащий опциональное значение возвращается функцией.

```swift
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
```

Используйте ключевое слово defer для определения блока кода, который должен быть выполнен в последнюю очередь, непосредственно перед выходом из самой функции. Код в блоке defer исполняется независимо от того, генерируется ли ошибка в функции или нет. Вы можете использовать defer для настройки или очистки кода рядом друг с другом, несмотря на то, что они могут быть исполнены в различное время.

```swift
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)
```
