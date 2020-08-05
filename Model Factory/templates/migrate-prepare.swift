<?output "../includes/migration/prepare.swift"?>
    func prepare(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
<?nextrec?>
<?definegroup 1 "=$Model$="?>
<?ifendgroup 1 ?>
                .create(),
<?ifnewgroup 1 ?>
            db.schema(=$model&cuul$=Model.schema)
                .id()
<?endif?>
<?if =$wrapper$= eq "Field" ?>
                .field(=$model&cuul$=Model.FieldKeys.=$field&clul$=, 
<?if =$type$= eq "String" ?>
					.string,
<?endif?>
<?if =$required$= eq "true" ?>
					.required,
<?endif?>
<?trailing comma ) ?>
<?endif?>
<?if =$wrapper$= ?>
<?else?>
                .field(=$model&cuul$=Model.FieldKeys.=$field&clul$=, 
<?if =$type$= eq "String" ?>
					.string,
<?endif?>
<?if =$required$= eq "true" ?>
					.required,
<?endif?>
<?trailing comma ) ?>
<?endif?>
<?loop?>
        ])
    }
