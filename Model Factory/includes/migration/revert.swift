    func revert(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
            db.schema(NoteModel.schema).delete(),
            db.schema(NoteFieldModel.schema).delete(),
        ])
    }
