CollectionView = require '../lib/view_collection'
BookmarksCollection = require '../collections/bookmarks'
BookmarkView = require './bookmark'

module.exports = class BookmarkVsView extends CollectionView
    el: '#bookmarks'

    collection: new BookmarksCollection()
    view: BookmarkView

    initialize: ->
        @collection.on 'reset', =>
            @renderAll()
        @collection.on 'add', (model) =>
            @renderOne model
