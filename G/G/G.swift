//
//  G.swift
//  G
//
//  Created by Hannes Oud on 05.06.20.
//  Copyright © 2020 IdeasOnCanvas GmbH. All rights reserved.
//

import Foundation
import A
import B
import C
import F

public struct G {
    public static var text = "Hello World"
    public static var textA: String { A.text }
    public static var textB: String { B.text }
    public static var textC: String { C.text }
    public static var textF: String { FStruct.text }
}

// Class which is exposed to @objc and uses various A types
@objcMembers
public class GObjcClass: NSObject {

    // works because AObjc is forward declared with @class in G-Swift.h
    public func aClassWorks(_ obj: AObjC) {
        print("works")
    }

    // works because AObjc is forward declared with @protocol in G-Swift.h
    public func aProtocolWorks(_ prot: AProtObjc) {
        print(prot.text)
    }

    // doesn't work because enum cannot be forward declared in G-Swift.h -> changes forward declarations into @import A;
    public func aEnumDoesntWork(_ enum: AEnumObjc) {
        print("no work")
    }
}
