//
//  G.swift
//  G
//
//  Created by Hannes Oud on 05.06.20.
//  Copyright © 2020 IdeasOnCanvas GmbH. All rights reserved.
//

import Foundation
import A


// Class which is exposed to @objc and uses various A types
@objcMembers
public class GObjcClass: NSObject {

    // works because AObjc is forward declared with @class in G-Swift.h
    public func gConsumeAClass(_ obj: AClass) {
        print("works")
    }

    // works because AObjc is forward declared with @protocol in G-Swift.h
    public func gConsumeAProtocol(_ prot: AProtocol) {
        print(prot.text)
    }

    // doesn't work because enum cannot be forward declared in G-Swift.h -> changes forward declarations into @import A;
    public func gConsumeAEnum(_ enum: AEnum) {
        print("no work")
    }
}
