# frozen_string_literal: true

module CommentsHelper
  def comments_params
    params.require(:comment).permit(:author_name, :body, :tag_list)
  end
end
