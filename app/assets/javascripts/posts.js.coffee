# Contrary to what one would expect from Rails, this file gets run on
# all pages, not just things in the /posts views directory!

# Necessary so that tinymce loads correctly with turbolinks.
$(document).on 'page:receive', ->
  tinymce.remove()
