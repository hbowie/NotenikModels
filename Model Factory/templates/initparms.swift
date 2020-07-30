<?nextrec?>
<?definegroup 1 "=$Model$="?>
<?ifendgroup 1 ?>
<?trailing comma ) ?>
<?ifnewgroup 1 ?>
<?output "../includes/init-parms/=$Model$=.swift"?>
    init(id: UUID? = nil,
<?endif?>
<?if =$wrapper$= ?>
<?if =$wrapper$= eq "Field" ?>
    	=$field&clul$=: =$type$=, 
<?endif?>
<?if =$wrapper$= eq "Children" ?>
<?endif?>
<?if =$wrapper$= eq "Parent" ?>
		=$field&clul$=: =$type$=, 
<?endif?>
<?else?>
    	=$field&clul$=: =$type$=, 
<?endif?>
<?loop?>
