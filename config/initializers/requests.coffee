module.exports = (compound) ->

    Bookmark = compound.models.Bookmark

    all = (doc) -> emit doc.title, doc

    Bookmark.defineRequest "all", all, (err) ->
        console.log 'request all created' unless err
