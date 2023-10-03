class CommentsController < ApplicationController
  def create
    new_comment_photo_id = params.fetch("input_photo_id")
    new_comment_author_id = params.fetch("input_author_id")
    new_comment_body = params.fetch("input_comment")

    matching_photos = Photo.where({ :id => new_comment_photo_id })

    @the_photo = matching_photos.at(0)

    new_comment = Comment.new
    new_comment.author_id = new_comment_author_id
    new_comment.photo_id = @the_photo.id
    new_comment.body = new_comment_body

    new_comment.save

    redirect_to("/photos/#{@the_photo.id}")
  end
end
