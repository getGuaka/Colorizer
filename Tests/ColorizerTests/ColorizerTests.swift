import XCTest
@testable import Colorizer

class ColorizerTests: XCTestCase {
    func testForegroundExtension() {
        XCTAssertEqual("the string".f.Black, "\u{001B}[30mthe string\u{001B}[0m", "returns a black string")
        XCTAssertEqual("the string".f.Black, "\u{001B}[30mthe string\u{001B}[0m", "returns a black string")
        XCTAssertEqual("the string".f.Red, "\u{001B}[31mthe string\u{001B}[0m", "returns a red string")
        XCTAssertEqual("the string".f.Green, "\u{001B}[32mthe string\u{001B}[0m", "returns a green string")
        XCTAssertEqual("the string".f.Yellow, "\u{001B}[33mthe string\u{001B}[0m", "returns a yellow string")
        XCTAssertEqual("the string".f.Blue, "\u{001B}[34mthe string\u{001B}[0m", "returns a blue string")
        XCTAssertEqual("the string".f.Magenta, "\u{001B}[35mthe string\u{001B}[0m", "returns a magenta string")
        XCTAssertEqual("the string".f.Cyan, "\u{001B}[36mthe string\u{001B}[0m", "returns a cyan string")
        XCTAssertEqual("the string".f.White, "\u{001B}[37mthe string\u{001B}[0m", "returns a white string")
    }

    func testBackgroundExtension() {
        XCTAssertEqual("the string".b.Black, "\u{001B}[40mthe string\u{001B}[0m", "returns a black string")
        XCTAssertEqual("the string".b.Red, "\u{001B}[41mthe string\u{001B}[0m", "returns a red string")
        XCTAssertEqual("the string".b.Green, "\u{001B}[42mthe string\u{001B}[0m", "returns a green string")
        XCTAssertEqual("the string".b.Yellow, "\u{001B}[43mthe string\u{001B}[0m", "returns a yellow string")
        XCTAssertEqual("the string".b.Blue, "\u{001B}[44mthe string\u{001B}[0m", "returns a blue string")
        XCTAssertEqual("the string".b.Magenta, "\u{001B}[45mthe string\u{001B}[0m", "returns a magenta string")
        XCTAssertEqual("the string".b.Cyan, "\u{001B}[46mthe string\u{001B}[0m", "returns a cyan string")
        XCTAssertEqual("the string".b.White, "\u{001B}[47mthe string\u{001B}[0m", "returns a white string")
    }

    func testStyleExtension() {
        XCTAssertEqual("the string".s.Bold, "\u{001B}[1mthe string\u{001B}[0m", "returns a bold string")
        XCTAssertEqual("the string".s.Italic, "\u{001B}[3mthe string\u{001B}[0m", "returns an italic string")
        XCTAssertEqual("the string".s.Underline, "\u{001B}[4mthe string\u{001B}[0m", "returns an underline string")
        XCTAssertEqual("the string".s.Inverse, "\u{001B}[7mthe string\u{001B}[0m", "returns an inverse string")
        XCTAssertEqual("the string".s.Strikethrough, "\u{001B}[9mthe string\u{001B}[0m", "returns a strikethrough string")
        XCTAssertEqual("the string".s.BoldOff, "\u{001B}[22mthe string\u{001B}[0m", "returns a boldoff string")
        XCTAssertEqual("the string".s.ItalicOff, "\u{001B}[23mthe string\u{001B}[0m", "returns an italic off string")
        XCTAssertEqual("the string".s.UnderlineOff, "\u{001B}[24mthe string\u{001B}[0m", "returns an underline off string")
        XCTAssertEqual("the string".s.InverseOff, "\u{001B}[27mthe string\u{001B}[0m", "returns an inverse off string")
        XCTAssertEqual("the string".s.StrikethroughOff, "\u{001B}[29mthe string\u{001B}[0m", "returns a strikethrough off string")
        XCTAssertEqual("the string".s.Reset, "\u{001B}[0mthe string\u{001B}[0m", "returns a reset style string")
    }

    func testMixingStylesExtension() {
        XCTAssertEqual("the string".s.Bold.f.Red.b.White, "\u{001B}[47;31;1mthe string\u{001B}[0m", "returns a bold red with white foreground string ")
    }
}
