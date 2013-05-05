View = require '../lib/view'
BookmarksView = require './bookmarks'
Bookmark = require '../models/bookmark'

module.exports = class AppView extends View
    el: 'body'

    events:
       'click #create-button': 'onCreateClicked'

    template: -> require './templates/home'

    afterRender: ->
        @bookmarksView = new BookmarksView()
        @bookmarksView.collection.fetch()

    onCreateClicked: =>
        title = @$('.title-field').val()
        url = @$('.url-field').val()

        bookmark = new Bookmark title: title, url: url
        @bookmarksView.collection.create bookmark,
            success: => alert "bookmark added"
            error: => alert "Server error occured"
