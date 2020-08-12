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
<?output "../includes/migration/=$module$=-seed-revert.swift"?>
    func revert(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
<?endif?>
<?ifnewgroup 2 ?>
            =$model&cuul$=Model.query(on: db).delete(),
<?endif?>
<?loop?>
