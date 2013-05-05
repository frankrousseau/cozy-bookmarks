module.exports = class BookmarksCollection extends Backbone.Collection
    model: require '../models/bookmark'
    url: 'bookmarks/'
