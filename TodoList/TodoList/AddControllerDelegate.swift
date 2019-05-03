//
//  ListControllerDelegate.swift
//  TodoList
//
//  Created by Justin Trautner on 5/2/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

protocol AddControllerDelegate: class {
    func addItemPressed(by controller: AddController, title: String, info: String, date: Date)
    func cancelButtonPressed(by controller: AddController)
}
