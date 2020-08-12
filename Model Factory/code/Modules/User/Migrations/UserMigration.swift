//
//  UserMigration.swift
//
//  Generated by Notenik on 2020-08-11
//
//  Copyright © 2020 Herb Bowie (https://powersurgepub.com)
//
//  This programming code is published as open source software under the
//  terms of the MIT License (https://opensource.org/licenses/MIT).
//

import Vapor
import Fluent

struct UserMigration: Migration {

    func prepare(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
            db.schema(UserModel.schema)
                .id()
                .field(UserModel.FieldKeys.userId, 
					.string,
					.required)
                .field(UserModel.FieldKeys.email, 
					.string,
					.required)
                .field(UserModel.FieldKeys.password, 
					.string,
					.required)
                .field(UserModel.FieldKeys.firstName, 
					.string,
					.required)
                .field(UserModel.FieldKeys.fullName, 
					.string,
					.required)
                .create(),
        ])
    }

    func revert(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
            db.schema(UserModel.schema).delete(),
        ])
    }

}
