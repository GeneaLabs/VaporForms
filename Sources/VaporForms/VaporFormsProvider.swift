//
//  Provider.swift
//  Async
//
//  Created by Mike Bronner on 6/17/18.
//

import Core
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
    }

    /// See Service.Provider.boot
    public func didBoot(_ container: Container) throws -> Future<Void> {
        return .done(on: container)
    }
}
