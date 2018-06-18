//
//  Form.swift
//  VaporForms
//
//  Created by Mike Bronner on 6/17/18.
//

import Async
import Leaf

public final class EndFormTag: TagRenderer {
    public init() {}

    public func render(tag: TagContext) throws -> EventLoopFuture<TemplateData> {
        let html = "</form>"

        return Future.map(on: tag) {
            .string(html)
        }
    }
}
