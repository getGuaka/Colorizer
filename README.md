# Colorizer 🎨 [![Build Status](https://travis-ci.com/getGuaka/Colorizer.svg?branch=master)](https://travis-ci.com/getGuaka/Colorizer)

Colorizer helps adding colors to strings written to the terminal.

This package was extracted from the [Swiftline](https://github.com/nsomar/Swiftline) package.

## Usage

Colorizer helps styling the strings before printing them to the terminal.  You
can change the text color, the text background and the text style.  Colorizer
works by extending `String` struct to add styling to it.

To change the text color, use either `string.f` or `string.foreground`:

```swift
print("Red String".f.Red)
print("Blue String".foreground.Blue)
```

To change the text background color, use either `string.b` or `string.background`:

```swift
print("I have a white background".b.White)
print("My background color is green".background.Green)
```

To change the text background style, use either `string.s` or `string.style`:

```swift
print("I am a bold string".s.Bold)
print("I have an underline".style.Underline)
```

You can compose foreground, background, and style:
```swift
print("I am an underlined red on white string".s.Underline.f.Red.b.White)
```

## Installation

### Swift Package Manager
Add `Colorizer` as dependency in your `Package.swift`

```
  import PackageDescription

  let package = Package(name: "YourPackage",
    dependencies: [
      .package(url: "https://github.com/getGuaka/Colorizer.git", from: "0.0.0"),
    ]
  )
```

## License

MIT
