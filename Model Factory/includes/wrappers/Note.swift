    @ID() var id: UUID?
    @Field(key: FieldKeys.title) var title: String
    @Field(key: FieldKeys.titleSort) var titleSort: String
    @Field(key: FieldKeys.localId) var localId: String
    @Field(key: FieldKeys.slug) var slug: String
    @Field(key: FieldKeys.seq) var seq: String
    @Field(key: FieldKeys.seqSort) var seqSort: String
    @Field(key: FieldKeys.date) var date: String
    @Field(key: FieldKeys.dateSort) var dateSort: String
    @Field(key: FieldKeys.status) var status: String
    @Field(key: FieldKeys.statusSort) var statusSort: String
    @Field(key: FieldKeys.statusDone) var statusDone: String
    @Field(key: FieldKeys.tags) var tags: String
    @Field(key: FieldKeys.link) var link: String
    @Field(key: FieldKeys.author) var author: String
    @Field(key: FieldKeys.authorSort) var authorSort: String
    @Field(key: FieldKeys.teaser) var teaser: String
    @Field(key: FieldKeys.teaserHtml) var teaserHtml: String
    @Field(key: FieldKeys.body) var body: String
    @Field(key: FieldKeys.bodyHtml) var bodyHtml: String
    @Children(for: \.$note) var fields: [NoteFieldModel]
