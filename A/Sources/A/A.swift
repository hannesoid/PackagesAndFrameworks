import Foundation;

public struct A {
    public static var text = "Hello, World!"
}

@objc
public class AObjC: NSObject {
    @objc public static var text = "Hello, World!"
}

@objc
public protocol AProtObjc: AnyObject {
    var text: String { get }
}

@objc
public enum AEnumObjc: Int {
    case A
    case B
    case C
}
