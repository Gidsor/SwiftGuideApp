# Xcode

<b>Xcode</b> — интегрированная среда разработки (IDE) программного обеспечения для платформ macOS, iOS, watchOS и tvOS, разработанная корпорацией Apple.

## Тест кода

```swift
let path = Bundle.main.path(forResource: name, ofType: "md")!
let url = URL(fileURLWithPath: path)
let markdown = try! String(contentsOf: url, encoding: String.Encoding.utf8)
md.load(markdown: markdown, enableImage: true)
```
