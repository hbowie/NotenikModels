    func revert(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
            UserModel.query(on: db).delete(),
        ])
    }
