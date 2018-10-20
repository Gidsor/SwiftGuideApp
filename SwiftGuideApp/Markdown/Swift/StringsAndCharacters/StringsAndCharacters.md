# Строки и символы
Строка представляет собой совокупность символов, например "hello, world" или "albatross". Строки в Swift представлены типом String. К значению типа String можно получить доступ различными способами, включая и коллекцию значений типа Character.

Типы String и Character в Swift предусматривают быстрый, Unicode-совместимый способ работы с текстом в вашем коде. Синтаксис для создания и манипулирования строками легкий и читабельный, он включает синтаксис строковых литералов похожий на С. Конкатенация строк так же проста, как сложение двух строк с помощью оператора + , а изменчивостью строки можно управлять выбирая к чему присваивать значение, константе или переменной, также как в случае с любым другим значением в Swift. Вы также можете использовать строки для вставки констант, переменных, литералов и выражений в более длинные строки- процесс, известный как интерполяция строк. Это позволяет легко создавать пользовательские значения строк для отображения, хранения и вывода информации.

Несмотря на эту простоту синтаксиса, тип String в Swift имеет быструю и современную реализацию. Каждая строка состоит из независимых от кодировки символов Unicode, и обеспечивает поддержку доступа к этим символам в различных Unicode представлениях.

    Тип String в Swift бесшовно сшит с классом NSString из Foundation. Если вы работаете с фреймворком Foundation в Cocoa или Cocoa Touch, то весь API NSString доступен для каждого значения типа String создаваемого вами в Swift, включая все возможности String, которые описываются в этой главе. Вы также можете использовать значение с типом String для любых API, в которых используется NSString.