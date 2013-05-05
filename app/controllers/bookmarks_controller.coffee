action 'all', ->
    Bookmark.all (err, bookmarks) ->
        if err then send 500
        else send bookmarks

action 'create', ->
    Bookmark.create req.body, (err, bookmark) =>
        if err then send 500
        else send bookmark

action 'destroy', ->
    Bookmark.find req.params.id, (err, bookmark) =>
        if err then send 500
        else if not bookmark then send error: 'not found', 404
        else
            bookmark.destroy (err) ->
            if err then send 500
            else send success: true, 204
