# Обработка ошибок
Вы используете обработку ошибок в ответ на появление условий возникновения ошибок во время выполнения программы.

В отличие от опционалов, которые могут использовать наличие или отсутствие значения для сообщения об успехе или неудаче функции, обработка ошибок позволяет определить причину сбоя, и, при необходимости, передать ошибку в другую часть вашей программы.

Когда функция обнаруживает условие ошибки, она выдает сообщение об ошибке. Тот, кто вызывает функцию, может затем поймать ошибку и среагировать соответствующим образом.

```swift
func canThrowAnError() throws {
// эта функция может сгенерировать ошибку
}
```

Функция сообщает о возможности генерации ошибки, включив ключевое слово throw в сообщение. Когда вы вызываете функцию, которая может выбросить ошибку, вы добавляете ключевое слово try в выражение. Swift автоматически передает ошибки из их текущей области, пока они не будут обработаны условием catch.

```swift
do {
try canThrowAnError()
    // ошибка не была сгенерирована
} catch {
    // ошибка сгенерирована
}
```

Выражение do создает область, содержащую объект, которая позволяет ошибкам быть передаными в одно или несколько условий catch.

Вот пример того, как обработка ошибок может быть использована в ответ на различные условия возникновения ошибок:

```swift
func makeASandwich() throws {
    // ...
}

do {
try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
```

В этом примере, функция makeASandwich() генерирует ошибку, если нет чистых тарелок или если отсутствуют какие-либо ингредиенты. Так как makeASandwich() может выдавать ошибку, то вызов функции заворачивают в выражении try. При заворачивании вызова функции в выражение do, генерация каких-либо ошибок, будет передаваться на предусмотренные условия catch.

Если ошибка не генерируется, то вызывается функция eatASandwich(). Если ошибка все таки генерируется, и она соответствует SandwichError.outOfCleanDishes, то вызывается функция washDishes(). Если генерируется ошибка, и она соответствует SandwichError.missingIngredients , то функция buyGroceries(_:) вызывается с соответствующим значением [String], захваченным шаблоном catch.
