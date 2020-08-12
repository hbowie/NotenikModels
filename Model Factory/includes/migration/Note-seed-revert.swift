    func revert(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
            NoteModel.query(on: db).delete(),
            NoteFieldModel.query(on: db).delete(),
        ])
    }
