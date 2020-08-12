<?nextrec?>
<?definegroup 1 "=$Module$="?>
<?ifendgroup 1 ?>
}
<?endif?>
<?ifnewgroup 1 ?>
<?output "../code/Modules/=$module$=/Migrations/=$module$=MigrationSeed.swift"?>
//
//  =$module$=MigrationSeed.swift
//
//  Generated by Notenik on =$today$=
//
//  Copyright © 2020 Herb Bowie (https://powersurgepub.com)
//
//  This programming code is published as open source software under the
//  terms of the MIT License (https://opensource.org/licenses/MIT).
//

import Vapor
import Fluent

struct =$module$=MigrationSeed: Migration {

<?include "../includes/migration/=$module$=-seed-initial-data.swift" ?>

<?include "../includes/migration/=$module$=-seed-prepare.swift" ?>

<?include "../includes/migration/=$module$=-seed-revert.swift" ?>

<?endif?>
<?loop?>