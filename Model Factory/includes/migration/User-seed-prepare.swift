    func prepare(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([ ])
        .flatMap {
            self.users().create(on: db) 
		}
    }
