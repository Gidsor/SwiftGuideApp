#  Функции и замыкания
Чтобы объявить функцию используйте оператор func. Чтобы вызвать функцию просто напишите ее имя со списком аргументов в скобках. Используйте –> чтобы отделить имена и типы аргументов от возвращаемого типа функции.

```swift
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet(name: "Bob", day: "Tuesday")
```

По умолчанию функции используют имена параметров как ярлыки для их аргументов. Напишите свой собственный ярлык до имени параметра функции, или напишите знак подчеркивания (_) для того, чтобы пропустить ярлык.

```swift
func greet(_ name: String, on day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("John", on: "Wednesday")
```

Используйте кортеж для создания единого составного значения, например для возвращения нескольких значений из функции. Ссылаться на элементы кортежа можно либо через имена, либо через порядковые номера

```swift
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)
```

Функции могут быть вложенными. Вложенные функции имеют доступ к переменным, которые были объявлены во внешней функции. Вы можете использовать вложенные функции, чтобы упорядочивать код в длинных или сложных функциях.

```swift
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
```

Функции - это объект первого класса. Это означает, что результатом функции может быть другая функция.

```swift
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
```

Функция может принимать другую функцию в качестве аргумента.

```swift
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
```

Функции на самом деле - частный случай замыканий. Замыкания представляют из себя блок кода, который может быть вызван позже. Код внутри замыканий имеет доступ к таким объектам, как переменные и функции, которые были созданы в тех же рамках, что и сами замыкания. Даже если замыкание находятся и запускается в другом блоке , вы уже видели этот пример во вложенных функциях. Вы можете написать замыкание без имени, просто обозначив код фигурными скобками и круглыми скобками ({}). Внутри скобок используйте in для разграничения аргументов и возвращаемого типа от тела замыкания.

```swift
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
```

У вас есть несколько способов для того, чтобы написать замыкание более кратко. Когда тип замыкания точно известен, например - обратный вызов делегата (callback), вы можете пропустить тип его аргументов, тип возвращаемого значения, либо и то и другое. Одиночный оператор замыкания неявно возвращает значение своего единственного выражения.

```swift
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
```

Вы можете обращаться к аргументам по номеру, вместо имени. Этот подход особенно полезен в очень коротких замыканиях. Замыкание, переданное как последний аргумент функции, может появиться непосредственно после скобок.

```swift
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
```
