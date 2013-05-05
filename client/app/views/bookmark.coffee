# views/bookmark.jade
View = require '../lib/view'

module.exports = class BookmarkView extends View
    template: require './templates/bookmark'
    className: 'bookmark'

    events:
        'click .delete-button': 'onDeleteClicked'

    onDeleteClicked: ->
        @model.destroy
            success: => @destroy()
            error: => alert 'Server error occured'
