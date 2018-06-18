//
//  Example.swift
//  VaporForms
//
//  Created by Mike Bronner on 6/17/18.
//

import Leaf
import Vapor

final class ExampleController {
    func index(_ request: Request) throws -> Future<View> {
        let leaf:ViewRenderer = try request.make(LeafRenderer.self)

        return leaf.render("../Vanilla/index")
    }
}
