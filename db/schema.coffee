Note = define 'Template', ->
    property 'title', String
    property 'content', String

Bookmark = describe 'Bookmark', ->
    property 'title', String
    property 'url', String
    set 'restPath', pathTo.bookmarks

