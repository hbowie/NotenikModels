<?nextrec?>
<?definegroup 1 "=$Model$="?>
<?ifendgroup 1 ?>
    }
<?ifnewgroup 1 ?>
<?output "../includes/field-keys/=$Model$=.swift"?>
    struct FieldKeys {
<?endif?>
<?if =$wrapper$= ?>
<?if =$wrapper$= eq "Field" ?>
        static var =$field&clul$=: FieldKey { "=$field&c_lll$=" }
<?endif?>
<?if =$wrapper$= eq "Parent" ?>
		static var =$field&clul$=Id: FieldKey { "=$field&c_lll$=_id" }
<?endif?>
<?else?>
        static var =$field&clul$=: FieldKey { "=$field&c_lll$=" }
<?endif?>
<?loop?>
