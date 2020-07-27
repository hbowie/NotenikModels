<?nextrec?>
<?definegroup 1 "=$Model$="?>
<?ifendgroup 1 ?>
) 
<?ifnewgroup 1 ?>
<?output "../includes/init-parms/=$Model$=.swift"?>
    init(id: UUID? = nil,
<?endif?>
<?if =$wrapper$= ?>
<?if =$wrapper$= eq "Field" ?>
    	=$field&clul$=: =$type&,$= =$nobr$=
<?endif?>
<?if =$wrapper$= eq "Children" ?>
<?endif?>
<?if =$wrapper$= eq "Parent" ?>
		=$field&clul$=: =$type&,$= =$nobr$=
<?endif?>
<?else?>
    	=$field&clul$=: =$type&,$= =$nobr$=
<?endif?>
<?loop?>
