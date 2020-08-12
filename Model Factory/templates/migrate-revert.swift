<?nextrec?>
<?definegroup 1 "=$Module$="?>
<?definegroup 2 "=$Model$="?>
<?ifendgroup 2 ?>
<?endif?>
<?ifendgroup 1 ?>
        ])
    }
<?endif?>
<?ifnewgroup 1 ?>
<?output "../includes/migration/=$module$=-revert.swift"?>
    func revert(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
<?endif?>
<?ifnewgroup 2 ?>
            db.schema(=$model&cuul$=Model.schema).delete(),
<?endif?>
<?loop?>
