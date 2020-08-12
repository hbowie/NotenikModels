<?nextrec?>
<?definegroup 1 "=$Module$="?>
<?definegroup 2 "=$Model$="?>
<?ifendgroup 2 ?>
<?endif?>
<?ifendgroup 1 ?>
		}
    }
<?endif?>
<?ifnewgroup 1 ?>
<?output "../includes/migration/=$module$=-seed-prepare.swift"?>
    func prepare(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([ ])
        .flatMap {
<?endif?>
<?ifnewgroup 2 ?>
            self.=$model&clul$=s().create(on: db) 
<?endif?>
<?loop?>
