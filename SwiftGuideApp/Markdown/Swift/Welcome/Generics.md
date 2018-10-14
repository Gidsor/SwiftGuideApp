# Универсальные типы
Напишите имя внутри угловых скобок, чтобы создать универсальную (generic) функцию или тип.

```swift
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)
```

Вы можете создать общие формы функций и методов, так же как и классов, перечислений и структур.

```swift
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
```

Используйте where после названия типа, чтобы указать список требований, например - потребовать, чтобы тип реализовал протокол, потребовать, чтобы два типа были одинаковы, или потребовать, чтобы класс имел определенный суперкласс.

```swift
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])
```

Запись <T: Equatable> -это то же самое, что и <T> ... where T: Equatable.
