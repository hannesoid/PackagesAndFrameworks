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
