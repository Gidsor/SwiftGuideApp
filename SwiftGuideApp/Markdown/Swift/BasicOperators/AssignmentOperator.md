# Оператор присваивания
Оператор присваивания (a = b) инициализирует или изменяет значение переменной a на значение b:

```swift
let b = 10
var a = 5
a = b
// теперь a равно 10
```

Если левая часть выражения является кортежем с несколькими значениями, его элементам можно присвоить сразу несколько констант или переменных:

```swift
let (x, y) = (1, 2)
// x равно 1, а y равно 2
```

В отличие от C и Objective-C оператор присваивания в Swift не может возвращать значение. К примеру, следующее выражение недопустимо:

```swift
if x = y {
    // это неверно, так как x = y не возвращает никакого значения
}
```

Эта особенность не позволяет разработчику спутать оператор присваивания (=) с оператором проверки на равенство (==). Благодаря тому, что выражения типа if x = y некорректны, подобные ошибки при программировании на Swift не произойдут.
