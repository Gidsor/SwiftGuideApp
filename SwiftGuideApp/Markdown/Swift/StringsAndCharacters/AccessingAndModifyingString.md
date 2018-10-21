# Доступ и изменение строки
Вы получаете доступ и меняете строку через ее методы, и свойства, или с помощью синтаксиса сабскрипта.

## Индексы строки
Каждое String значение имеет связанный тип индекса: String.Index, что соответствует позиции каждого Character в строке.

Как было упомянуто выше, различные символы могут требовать различные объемы памяти для хранения, поэтому для того, чтобы определить, какой Character в определенной позиции, необходимо итерировать каждую скалярную величину Юникода, от начала или конца этой строки. По этой причине, Swift строки не могут быть проиндексированы целочисленными значениями.

Используйте свойство startIndex для доступа позиции первого Character в String. Свойство endIndex — это позиция после последнего символа в String. В результате, endIndex свойство не является допустимым значением для сабскрипта строки. Если String пустая, то startIndex и endIndex равны.

Вы получаете доступ к индексу до и после указанного индекса при помощи методов index(before:) и index(after:). Для доступа к индексу, расположенного не по соседству с указанным индексом, вы можете использовать метод index(_:offsetBy:) вместо многократного вызова предыдущих методов.

Вы можете использовать синтаксис индекса для доступа Character в определенном индексе String.

```swift
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a
```

Попытка доступа к Character в индексе за пределами диапазона строки выдаст сообщение об ошибке выполнения.

```swift
greeting[greeting.endIndex] // ошибка
greeting.index(after: endIndex) // ошибка
```

Используйте свойство indices, чтобы создать Range всех индексов, используемых для доступа к отдельным символам строки.

```swift
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: " ")
}
// Выведет "G u t e n T a g !"
```

    Вы можете использовать свойства startIndex, endIndex и методы index(before:), index(after:) и index(_:offsetBy:) с любым типом, который соответствует протоколу Collection. Это включает в себя String, как и показано тут, различные типы коллекций, например Array, Dictionary и Set.

## Добавление и удаление
Для того, чтобы вставить символ в строку по указанному индексу, используйте insert(_:at:) метод, а для того, чтобы вставить содержимое другой строки по указанному индексу, используйте метод insert(contentsOf:at:).

```swift
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome теперь равен "hello!"
welcome.insert(contentsOf:" there", at: welcome.index(before: welcome.endIndex))
// welcome теперь равен "hello there!”
```

Для того, чтобы удалить символ из строки по указанному индексу используйте remove(at:), если вы хотите удалить значения по указанному диапазону индексов, используйте метод removeSubrange(_:):

```swift
welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome теперь равно "hello there"
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome теперь равно "hello”
```

    Вы можете использовать методы insert(_:at:), insert(contentsOf:at:), remove(at:) и removeSubrange(_:) с любыми типами, которые соответствуют протоколу RangeReplaceableCollection. Это включает в себя String, как показано тут, а так же коллекции, такие как Array, Dictionary и Set.
