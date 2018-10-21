# Сравнение строк
Swift предусматривает три способа сравнения текстовых значений: равенство строк и символов, равенство префиксов, и равенство суффиксов.

## Равенство строк и символов
Равенство строк и символов проверяется оператором "равенства" (==) и оператором "неравенства" (!=):

```swift
let quotation = "Мы с тобой похожи"
let sameQuotation = "Мы с тобой похожи"
if quotation == sameQuotation {
    print("Эти строки считаются равными")
}
// Выведет "Эти строки считаются равными"
```

Два String значения (или два Character значения) считаются равными, если их расширенные наборы графем канонически эквивалентны . Расширенные наборы графем канонически эквивалентны, если они имеют один и тот же языковой смысл и внешний вид, даже если они изначально состоят из разных скалярных величин Юникода.

Например, LATIN SMALL LETTER E WITH ACUTE (U+00E9) канонически эквивалентна LATIN SMALL LETTER E(U+0065) , если за ней следует COMBINING ACUTE ACCENT (U+0301) . Оба этих расширенных набора графем являются допустимыми вариантами представления символа é , и поэтому они считаются канонически эквивалентными:

```swift
// "Voulez-vous un café?" используем LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
// "Voulez-vous un café?" используем LATIN SMALL LETTER E и COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    print("Эти строки считаются равными")
}
// Выведет "Эти строки считаются равными"
```

Наоборот, LATIN CAPITAL LETTER A (U+0041 или "A") , используемый в английском языке, не является эквивалентом CYRILLIC CAPITAL LETTER A (U+0410, или "А"), используемой в русском языке. Символы визуально похожи, но имеют разный языковой смысл:

```swift
let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("Эти строки считаются не равными")
}
// Выведет "Эти строки считаются не равными"
```

    Сравнение строк и символов в Swift не зависит от локализации.

## Равенство префиксов и суффиксов
Чтобы проверить, имеет ли строка определенный строковый префикс или суффикс, вызовите hasPrefix( _: ) и hasSuffix( _: ) методы, оба из которых принимают единственный аргумент типа String, и возвращают логическое значение.

В приведенных ниже примерах рассмотрим массив строк, представляющих местоположение сцены в первых двух актах Ромео и Джульетты Шекспира:

```swift
let romeoAndJuliet = [
"Act 1 Scene 1: Verona, A public place",
"Act 1 Scene 2: Capulet's mansion",
"Act 1 Scene 3: A room in Capulet's mansion",
"Act 1 Scene 4: A street outside Capulet's mansion",
"Act 1 Scene 5: The Great Hall in Capulet's mansion",
"Act 2 Scene 1: Outside Capulet's mansion",
"Act 2 Scene 2: Capulet's orchard",
"Act 2 Scene 3: Outside Friar Lawrence's cell",
"Act 2 Scene 4: A street in Verona",
"Act 2 Scene 5: Capulet's mansion",
"Act 2 Scene 6: Friar Lawrence's cell"
]
```

Вы можете использовать hasPrefix( _: ) метод с массивом romeoAndJuliet для подсчета количества сцен в первом акте пьесы:

```swift
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("Всего \(act1SceneCount) сцен в Акте 1")
// Выведет "Всего 5 сцен в Акте 1"
```

Точно так же, использование hasSuffix( _: ) метода для подсчета количества сцен, которые происходят внутри или вокруг особняка Капулетти и клетки монаха Лоренцо:

```swift
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) сцен в особняке; \(cellCount) тюремные сцены")
// выводит "6 сцен в особняке; 2 тюремные сцены"
```

    hasPrefix(_:) и hasSuffix(_:) методы используются для символ-к-символу канонического эквивалентного сравнения между расширенными наборами графем в каждой строке.
