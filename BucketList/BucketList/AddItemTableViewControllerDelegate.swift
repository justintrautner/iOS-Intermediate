//
//  AddItemTableViewControllerDelegate.swift
//  BucketList
//
//  Created by Justin Trautner on 5/1/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
