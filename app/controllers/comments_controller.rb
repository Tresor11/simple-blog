# frozen_string_literal: true

class CommentsController < ApplicationController
  include CommentsHelper
  def create
    @comment = Comment.new(comments_params)
    @comment.article_id = params[:article_id]
    @comment.save
    redirect_to article_path(@comment.article)
  end
end
