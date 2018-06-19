//
//  BaseTag.swift
//  VaporForms
//
//  Created by Mike Bronner on 6/18/18.
//

import Async
import Leaf

public final class BaseTag: TagRenderer {
    var tagName = ""
    var isSelfClosing = true

    public init() {
        self.tagName = String(describing: self)
    }

    public func render(tag: TagContext) throws -> EventLoopFuture<TemplateData> {
        var paramters = tag.context.data.dictionary ?? [:]
        var html = "<form>"

        return Future.map(on: tag) {
            .string(html)
        }
    }
}
