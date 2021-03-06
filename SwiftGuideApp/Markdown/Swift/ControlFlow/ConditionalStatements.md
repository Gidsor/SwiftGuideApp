# Условные инструкции
Иногда бывает полезным исполнять различные куски кода в зависимости от условий. А может быть вы хотите запустить исполнение дополнительного кода, в случае возникновения ошибки или просто показать сообщение, когда значение какой-либо величины становится слишком большим. Чтобы сделать это, вы делаете ваш код условным.

Swift предоставляет нам два варианта добавить условные ответвления кода - это при помощи инструкции if и при помощи инструкции switch. Обычно мы используем инструкцию if, если наше условие достаточно простое и предусматривает всего несколько вариантов. А вот инструкция switch подходит для более сложных условий, с многими вариантами выбора, и очень полезна в ситуациях, где по найденному совпадению с условием и выбирается соответствующая ветка кода для исполнения.

## Инструкция if
В самой простой своей форме инструкция if имеет всего одно условие if. Эта инструкция выполняет установленные инструкции только в случае, когда условие true:

```swift
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print ("It's very cold. Consider wearing a scarf.")
}
// Выведет "It's very cold. Consider wearing a scarf.
```

В приведенном примере проверяется значение температуры, которая может быть ниже или 32 (0 по Цельсию) градусов по Фаренгейту либо равна или выше. Если она ниже, то выведется сообщение. В противном случае никакого сообщения не будет, и код продолжит свое выполнение после закрывающей фигурной скобки инструкции if.

Инструкция if может предусматривать еще один дополнительный набор инструкций в ветке известной как оговорка else, которая нужна в случае, если условие false. Эти инструкции указываются через ключевое слово else:

```swift
temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Выведет "It's not that cold. Wear a t-shirt."
```

В этом коде всегда будет выполняться код либо в первом, либо во втором ответвлении. Из-за того что температура выросла до 40 градусов Фаренгейта, значит больше не обязательно носить шарф, таким образом ответвление else выполняется.

Вы можете соединять инструкции if между собой, чтобы создать более сложные условия:

```swift
temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Выведет "It's really warm. Don't forget to wear sunscreen.
```

В приведенном коде была добавлена дополнительная инструкция if, для соответствия определенным температурам. Конечное условие else соответствует всем температурам, не соответствующим первым двум условиям.

Последняя else опциональна, однако она может быть удалена только в случае, если в ней нет необходимости:

```swift
temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}
```

В этом примере температура ни высокая, ни низкая, и вообще она не соответствует ни одному условию, так что никакого сообщения мы не увидим.

## Инструкция switch
Инструкция switch подразумевает наличие какого-то значения, которое сравнивается с несколькими возможными шаблонами. После того как значение совпало с каким-либо шаблоном, выполняется код, соответствующий ответвлению этого шаблона, и больше сравнений уже не происходит. Switch представляет собой альтернативу инструкции if, отвечающей нескольким потенциальным значениям.

В самой простой форме в инструкции switch значение сравнивается с одним или более значений того же типа:

```swift
switch значение для сопоставления {
    case значение 1: 
        инструкция для значения 1
    case значение 2, значение 3:
        инструкция для значения 2 или значения 3
    default: 
        инструкция, если совпадений с шаблонами не найдено
}
```

Каждая инструкция switch состоит из нескольких возможных случаев или cases, каждый из которых начинается с ключевого слова case. Помимо сравнения с конкретными значениями, Swift предлагает еще несколько опций для каждого случая для создания более сложных шаблонных сравнений. Об этих опциях мы поговорим далее в этой главе.

Тела каждого отдельного блока case в switch - это отдельная ветка исполнительного кода, что делает switch похожим на инструкцию if. Инструкция switch определяет какое ответвление должно быть выбрано. Это известно как переключение на значение, которое в настоящее время рассматривается.

Каждая инструкция switch должна быть исчерпывающей. То есть это значит, что каждое значение обязательно должно находить совпадение с шаблоном в каком-либо случае (case). Если неудобно вписывать все возможные варианты случаев, то вы можете определить случай по умолчанию, который включает в себя все значения, которые не были включены в остальные случаи. Такой случай по умолчанию называется default, и он всегда идет после всех остальных случаев.

В следующем примере switch рассматривает единичный символ в нижнем регистре, который называется someCharacter:

```swift
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Выведет "The last letter of the alphabet"
```

Первый кейс инструкции switch соответствует первой букве английского алфавита - a, второй кейс соответствует последней букве - z. Так как switch должна иметь кейс для каждого возможного символа, а не просто для каждой буквы алфавита, то в инструкции switch предусмотрен дефолтный кейс, который звучит как default, в который входят все символы кроме a и z. Как раз это условие гарантирует, что инструкция switch будет исчерпывающей.

## Отсутствие case-провалов
Большое отличие инструкции switch в языке Swift от инструкции switch в C и Objective-C составляет отсутствие провалов через условия. Вместо этого инструкция switch прекращает выполнение после нахождения первого соответствия с case и выполнения соответствующего кода в ветке, без необходимости явного вызова break. Это делает инструкцию switch более безопасным и простым для использования, чем в C, и исключает исполнение кода более чем одного случая.

    Хотя break не требуются в Swift, вы все равно можете его использовать для соответствия и для игнорирования конкретного случая или просто для выхода из конкретного случая, еще до того, как исполнится код.

Тело каждого случая должно включать в себя хотя бы одно исполняемое выражение. Код не будет исполнен и выдаст ошибку компиляции, если написать его следующим образом:

```swift
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a":  // ошибка, так как кейс имеет пустое тело
case "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// ошибка компиляции
```

В отличии от инструкции switch в языке C, switch в Swift не соответствует ни "a", ни "A". Но зато вы получите ошибку компиляции о том, что case "a": не содержит ни одного исполняемого выражения. Такой подход исключает случайные "проваливания" из одного случая в другой, что делает код безопаснее и чище своей краткостью.

Для того, чтобы switch с одним кейсом подходил под "a" и "A",объедините два значения в один составной кейс, разделив значения запятыми.

```swift
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// Выведет "The letter A"
```

Для того, чтобы составной кейс удобно было читать, он может быть написан несколькими строчками.

    Для того, чтобы у вас появилась возможность проваливаться в конце конкретного switch кейса, используйте ключевое слово fallthrough, как описано в следующих главах.

## Соответствие диапазону
Значения в кейсах switch могут быть проверены на их вхождение в диапазон. Пример ниже использует целочисленные диапазоны для описания любых значений художественным языком:

```swift
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Выводит "There are dozens of moons orbiting Saturn."
```

В приведенном выше примере, approximateCount оценивается в инструкции switch. Каждый кейс сравнивает это значение с числом или интервалом. Поскольку значение approximateCount попадает на диапазон от 12 до 100, naturalCount присваивается значение "dozens of", и исполнение перемещается из инструкции switch.

## Кортежи
Вы можете использовать кортежи для тестирования нескольких значений в одной и той же инструкции switch. Каждый элемент кортежа может быть протестирован с любой величиной или с диапазоном величин. Так же вы можете использовать идентификатор подчеркивания (_) для соответствия любой возможной величине.

Пример ниже берет точку с координатами (x, y), выраженную в виде кортежа (Int, Int) и относит к соответствующей категории как следует из примера ниже:

```swift
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}
// Выведет "(1, 1) is inside the box"
```

![image](https://user-images.githubusercontent.com/16274235/47933490-8638f180-def6-11e8-8d50-b34575102d9a.png)

Инструкции switch определяет: находится ли точка в начале отсчета (0,0), на красной оси x, на оранжевой оси y, внутри синего квадрата 4х4, в котором точка отсчета находится в центре или находится вне этого квадрата.

В отличии от C, инструкция switch в Swift позволяет множественное совпадение или пересечение значений нескольких случаев. Это факт, что точка (0, 0) соответствует всем четырем условиям в этом примере. Однако, если возможно совпадение сразу с несколькими шаблонами, то в расчет принимается только первое из них. То есть точка (0, 0) будет удовлетворять случаю case (0, 0):, а остальные случаи будут проигнорированы.

## Привязка значений
Кейс в инструкции switch может связывать значение или значения, с которыми сравнивается, с временными константами или переменными. Это известно как связывание значений, потому что значения "связаны" с временными константами или переменным внутри тела кейса.

Пример ниже берет точку с координатами (x, y), представленной в виде кортежа (Int, Int) и определяет ее позицию на графике, который представлен ниже:

```swift
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
// Выведет "on the x-axis with an x value of 2
```

![image](https://user-images.githubusercontent.com/16274235/47933554-b08aaf00-def6-11e8-8970-7955d9597370.png)

Инструкция switch определяет лежит ли точка на красной оси x или оранжевой оси y, а может быть она не будет ни на одной из осей.

Три случая в инструкции switch объявляют константы x, y, которым временно присваиваются значения одного или обоих элементов из кортежа anotherPoint. В первом кейсе (let x, 0): подойдет любая точка со значением y равным 0, а в константу x запишется значение координаты x нашей точки. Аналогично и во втором случае, когда case (0, let y), этот кейс включает все точки при значении их координаты x равной 0, и происходит присваивание значения координаты y в временную константу y.

Объявленная константа может быть использована внутри блока кейса. Здесь мы их используем как сокращенный вариант для вывода сообщения с помощью функции print.

Заметьте, что инструкция switch не имеет случая default. Последний кейс let (x, y) объявляет кортеж двух констант плейсхолдеров, которые могут соответствовать абсолютно любому значению. Так как anotherPoint это кортеж с двумя значениями, этот кейс подходит под все возможные оставшиеся значения, и кейс default уже не нужен, так как инструкция switch исчерпывающая.

## Where
В кейсе инструкции switch мы так же можем использовать дополнительное условие с помощью ключевого слова where.

Пример ниже размещает точку (x, y) на приведенном рисунке:

```swift
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// Выведет "(1, -1) is on the line x == -y"
```

![image](https://user-images.githubusercontent.com/16274235/47933603-cef0aa80-def6-11e8-99a5-4e4765e04fd4.png)

Инструкция switch определяет лежит ли точка на зеленой диагонали, где x == y, или фиолетовой диагонали, где x == -y, или ни на одной и ни на другой.

Три кейса объявляют константы x, y, которые временно берут значения из кортежа yetAnotherPoint. Эти константы используются как часть условия where, для создания динамического фильтра. Кейс switch совпадает с текущим значением point только в том случае, если условие оговорки where возвращает true для этого значения.

Как и в предыдущем примере, последний кейс включает в себя все возможные оставшиеся варианты, так что default тут так же не нужен, так как и без него инструкция switch является исчерпывающей.

## Составные кейсы
Если несколько кейсов инструкции switch содержат один и тот же код для исполнения, то шаблоны этих кейсов можно обьединить через запятую после ключевого слова case. Если хотя бы один из шаблонов кейса соответствует сравниваемому значению, то значит и сам кейс соответствует сравниваемому значению. Шаблоны в кейсе могут быть записаны на несколько строк, если их очень много. Например:

```swift
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}
// Напечатает "e is a vowel"
```

В примере выше первый кейс инструкции switch включает в себя сразу все пять гласных английского языка записанных в нижнем регистре. Аналогично второй кейс содержит все согласные английского языка в нижнем регистре. И, наконец, дефолтный кейс содержит в себе все оставшиеся символы.

Составные кейсы так же могут включать в себя привязку значения. Все шаблоны составных кейсов должны включать в себя тот же самый набор значений и каждая связка должна быть одного и того же типа из всех шаблонов составного кейса. Это гарантирует тот факт, что независимо от того, какая часть составного кейса совпала со сравниваемым значением, код в теле всегда получит доступ к значению  привязки и это значение всегда будет одного типа.

```swift
let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}
// Напечатает "On an axis, 9 from the origin"
```


Кейс выше имеет два шаблона: (let distance, 0), который соответсвует любой точке на оси x, и (0, let distance), что соответствует точке на оси y. И тот и другой шаблон включают в себя привязку для distance и distance является целочисленным значением для двух этих шаблонов, что значит, что код внутри тела кейса всегда будет иметь доступ к значению distance.
