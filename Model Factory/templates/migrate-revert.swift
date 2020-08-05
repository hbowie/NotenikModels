<?output "../includes/migration/revert.swift"?>
    func revert(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
<?nextrec?>
<?definegroup 1 "=$Model$="?>
<?ifendgroup 1 ?>
<?ifnewgroup 1 ?>
            db.schema(=$model&cuul$=Model.schema).delete(),
<?endif?>
<?loop?>
        ])
    }
