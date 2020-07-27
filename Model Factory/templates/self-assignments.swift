<?nextrec?>
<?definegroup 1 "=$Model$="?>
<?ifendgroup 1 ?>
	} 
<?ifnewgroup 1 ?>
<?output "../includes/self-assignments/=$Model$=.swift"?>
	{
		self.id = id
<?endif?>
<?if =$wrapper$= ?>
<?if =$wrapper$= eq "Field" ?>
    	self.=$field&clul$= = =$field&clul$=
<?endif?>
<?if =$wrapper$= eq "Children" ?>
<?endif?>
<?if =$wrapper$= eq "Parent" ?>
		self.$=$field&clul$=.id = =$field&clul$=Id
<?endif?>
<?else?>
    	self.=$field&clul$= = =$field&clul$=
<?endif?>
<?loop?>
