//
//  Routes.swift
//  VaporForms
//
//  Created by Mike Bronner on 6/17/18.
//

import Vapor
import Leaf

public func routes(_ router: Router) throws {
    let exampleController = ExampleController()
    router.get("vanilla", use: exampleController.index)
}
