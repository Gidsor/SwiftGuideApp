# Комментарии
Используйте комментарии, чтобы добавить неисполняемый текст в коде, как примечание или напоминание самому себе. Комментарии игнорируются компилятором Swift во время компиляции кода.

Комментарии в Swift очень похожи на комментарии в C. Однострочные комментарии начинаются с двух слешей (//):

```swift
// это комментарий
```

Вы также можете написать многострочные комментарии, которые начинаются со слеша и звездочки (/*) и заканчиваются звездочкой, за которой следует слеш (*/):

```swift
/* это тоже комментарий,
но написанный на двух строках */
```

В отличие от многострочных комментариев в C, многострочные комментарии в Swift могут быть вложены в другие многострочные комментарии. Вы можете написать вложенные комментарии, начав многострочный блок комментариев, а затем, начать второй многострочный комментарий внутри первого блока. Затем второй блок закрывается, а за ним закрывается первый блок:

```swift
/* это начало первого многострочного комментария
/* это второго, вложенного многострочного комментария */
это конец первого многострочного комментария */
```

Вложенные многострочные комментарии позволяют закомментировать большие блоки кода быстро и легко, даже если код уже содержит многострочные комментарии.
