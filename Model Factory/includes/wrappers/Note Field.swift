    @ID() var id: UUID?
    @Field(key: FieldKeys.label) var label: String
    @Field(key: FieldKeys.value) var value: String
    @Parent(key: FieldKeys.noteId) var note: NoteModel
