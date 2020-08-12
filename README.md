Notenik Models
--------------

This is a separate project for maintaining data models for Notenik. 

## Folders

The `Diagrams` folder contains a data model diagram. 

The `Fields` folder contains a Notenik Collection with one Note for each field within each table/model. (More on this below.)

The `Model Factory` folder contains Notenik templates and scripts used to generate the resulting Swift Fluent code for defining the models. 

## Fields

The following fields are used for each Note within the `Fields` folder. 

**Title** - Enter the Model name followed by the Field name. Capitalize each word, and leave a space between words. 

**Tags** - Enter the name of the model, in all lower-case characters, and without any spacing or punctuation between words. 

**Module** - The name of the folder into which code related to this model should be placed. 

**Model** - Enter the Model name, capitalizing each word and leaving a space between words. The Model name should generally be a singular noun. It should not contain the word 'Model'. 

**Seq** - Enter a sequence number, used to keep the Notes in a logical sequence. The number to the left of the decimal point is used to keep the models in sequence, and the number to the right of the decimal point is used to keep the fields in sequence within a model. 

**Field** - Enter the name of the field. Capitalize each word, and leave a space between words. 

**Wrapper** - Enter the valid name of a property wrapper, without the leading '@' character. The `@ID` wrapper will automatically be generated for each model, with a field name of `id` and a field type of `UUID`, so that need never be specified. So the `Wrapper` field would normally contain a value of 'Field', 'Parent' or 'Children'. If this field is left blank, then a Wrapper value of 'Field' will be assumed. 

**Required** - Enter True or False via the supplied checkbox. This will determine whether the `.required` constraint is specified for this field when the schema is created in the generated Migration code. 

**Unique** - Enter True or False via the supplied checkbox. This will determine whether a `.unique` constraint is applied to the field when the schema is created in the generated Migration code. 

**Children for** - If this field is using a `@Children` wrapper, then you should specify here the name of the field in the Child Model that will be used to identify the appropriate parent in the current model. Do not include the word 'ID' in the name supplied here.  

**Child Model** - If this field is using a `@Children` wrapper, then you should specify here the name of the model that will be used as this field's children. Enter it with all capitalized words, with a space between words, to match the way it was entered on the field entries for that model.

**Type** - The data type for this field. 'String' is often specified here.  

**Body** - A description of what this field means and how it is to be used within the application.  


