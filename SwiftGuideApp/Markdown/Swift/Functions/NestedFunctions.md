# Вложенные функции
Все ранее рассмотренные в этом разделе функции являются глобальными, т. е. определенными в глобальном контексте. Но помимо глобальных можно объявлять и функции, находящиеся внутри других функций, или же вложенные.

Вложенные функции по умолчанию недоступны извне, а вызываются и используются только заключающей функцией. Заключающая функция может также возвращать одну из вложенных, чтобы вложенную функцию можно было использовать за ее пределами.

Приведенный выше пример с функцией chooseStepFunction(backward:) можно переписать со вложенными функциями:

```swift
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero теперь ссылается на вложенную функцию stepForward() 
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
// -4...
// -3...
// -2...
// -1...
// zero!
```
