//
//  Provider.swift
//  Async
//
//  Created by Mike Bronner on 6/17/18.
//

import Core
import Leaf
import Service
import TemplateKit
import Vapor

public final class VaporFormsProvider: Provider {
    /// Set Service.Provider.repositoryName
    public static let repositoryName = "vapor-form"

    public init() {}

    /// See Service.Provider.Register
    public func register(_ services: inout Services) throws {
        let router = EngineRouter.default()
        try routes(router)
        services.register(router, as: Router.self)

        var tags = LeafTagConfig.default()
        tags.use(FormTag(), as: "Form")
        tags.use(EndFormTag(), as: "EndForm")

        services.register(tags)
    }

    /// See Service.Provider.boot
    public func didBoot(_ container: Container) throws -> Future<Void> {
        return .done(on: container)
    }
}
