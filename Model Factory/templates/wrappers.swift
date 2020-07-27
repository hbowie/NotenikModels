<?nextrec?>
<?definegroup 1 "=$Model$="?>
<?ifendgroup 1 ?>
<?ifnewgroup 1 ?>
<?output "../includes/wrappers/=$Model$=.swift"?>
    @ID() var id: UUID?
<?endif?>
<?if =$wrapper$= ?>
<?if =$wrapper$= eq "Field" ?>
    @Field(key: FieldKeys.=$field&clul$=) var =$field&clul$=: =$type$=
<?endif?>
<?if =$wrapper$= eq "Children" ?>
    @Children(for: \.$=$children-for$=) var =$field&clul$=: [=$type&cuul$=]
<?endif?>
<?if =$wrapper$= eq "Parent" ?>
    @Parent(key: FieldKeys.=$field&clul$=Id) var =$field&clul$=: =$type&cuul$=
<?endif?>
<?else?>
    @Field(key: FieldKeys.=$field&clul$=) var =$field&clul$=: =$type$=
<?endif?>
<?loop?>
