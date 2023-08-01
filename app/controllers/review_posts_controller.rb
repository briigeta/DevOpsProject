# frozen_string_literal: true

# This is the ReviewPostsController class.
class ReviewPostsController < ApplicationController
  before_action :set_review_post, only: %i[show edit update destroy]

  # GET /review_posts or /review_posts.json
  def index
    @review_posts = ReviewPost.all
  end

  # GET /review_posts/1 or /review_posts/1.json
  def show; end

  # GET /review_posts/new
  def new
    @review_post = ReviewPost.new
  end

  # GET /review_posts/1/edit
  def edit; end

  # POST /review_posts or /review_posts.json
  def create
    @review_post = ReviewPost.new(review_post_params)

    respond_to do |format|
      if @review_post.save
        format.html { redirect_to review_post_url(@review_post), notice: 'Review post was successfully created.' }
        format.json { render :show, status: :created, location: @review_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_posts/1 or /review_posts/1.json
  def update
    respond_to do |format|
      if @review_post.update(review_post_params)
        format.html { redirect_to review_post_url(@review_post), notice: 'Review post was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_posts/1 or /review_posts/1.json
  def destroy
    @review_post.destroy

    respond_to do |format|
      format.html { redirect_to review_posts_url, notice: 'Review post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review_post
    @review_post = ReviewPost.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def review_post_params
    params.require(:review_post).permit(:title, :body, :rating)
  end
end
