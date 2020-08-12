    func prepare(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([ ])
        .flatMap {
            self.notes().create(on: db) 
            self.noteFields().create(on: db) 
		}
    }
