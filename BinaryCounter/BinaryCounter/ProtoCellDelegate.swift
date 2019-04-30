//
//  ProtoCellDelegate.swift
//  BinaryCounter
//
//  Created by Justin Trautner on 4/30/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import Foundation
import UIKit
protocol ProtoCellDelegate: class {
    func addOperation(from cell: ProtoCell)
    func subtractOperation(from cell: ProtoCell)
}
