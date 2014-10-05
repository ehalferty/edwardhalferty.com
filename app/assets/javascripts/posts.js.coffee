
# Necessary so that tinymce loads correctly with turbolinks.
$(document).on 'page:receive', ->
  tinymce.remove()
