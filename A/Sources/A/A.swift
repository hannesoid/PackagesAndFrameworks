import Foundation;

public struct AStruct {
    public static var text = "Hello, World!"
}

@objc
public class AClass: NSObject {
    @objc public static var text = "Hello, World!"
}

@objc
public protocol AProtocol: AnyObject {
    var text: String { get }
}

@objc
public enum AEnum: Int {
    case A
    case B
    case C
}
