//
//  Provider.swift
//  Async
//
//  Created by Mike Bronner on 6/17/18.
//

import Leaf
import Service
import Vapor

public final class VaporFormsProvider: Provider {
    public init() {}

    public func register(_ services: inout Services) throws {
        let router = EngineRouter.default()
        try routes(router)
        services.register(router, as: Router.self)

        var tags = LeafTagConfig.default()
        tags.use(FormTag(), as: "Form")
        tags.use(EndFormTag(), as: "EndForm")
        services.register(tags)
    }

    public func didBoot(_ container: Container) throws -> Future<Void> {
        return .done(on: container)
    }
}
