//
//  Form.swift
//  VaporForms
//
//  Created by Mike Bronner on 6/17/18.
//

import Async
import Leaf

public final class FormTag: TagRenderer {
    public func render(tag: TagContext) throws -> EventLoopFuture<TemplateData> {
        var paramters = tag.context.data.dictionary ?? [:]
        var html = "<form>"

        return Future.map(on: tag) {
            .string(html)
        }
    }
}
