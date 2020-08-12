<?nextrec?>
<?definegroup 1 "=$Module$="?>
<?definegroup 2 "=$Model$="?>
<?ifendgroup 2 ?>
                .create(),
<?endif?>
<?ifendgroup 1 ?>
        ])
    }
<?endif?>
<?ifnewgroup 1 ?>
<?output "../includes/migration/=$module$=-prepare.swift"?>
    func prepare(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
<?endif?>
<?ifnewgroup 2 ?>
            db.schema(=$model&cuul$=Model.schema)
                .id()
<?endif?>
<?if =$wrapper$= eq "Parent" ?>
                .field(=$model&cuul$=Model.FieldKeys.=$field&clul$=Id, .uuid, 
<?if =$required$= eq "true" ?>
					.required,
<?endif?>
<?trailing comma ) ?>
                .foreignKey(=$model&cuul$=Model.FieldKeys.=$field&clul$=Id,
                            references: =$type&cuul$=.schema, .id,
                            onDelete: .cascade,
                            onUpdate: .cascade)
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
