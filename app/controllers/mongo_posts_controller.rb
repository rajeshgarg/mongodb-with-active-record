class MongoPostsController < ApplicationController
  # GET /mongo_posts
  # GET /mongo_posts.json
  def index
    @mongo_posts = MongoPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mongo_posts }
    end
  end

  # GET /mongo_posts/1
  # GET /mongo_posts/1.json
  def show
    @mongo_post = MongoPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mongo_post }
    end
  end

  # GET /mongo_posts/new
  # GET /mongo_posts/new.json
  def new
    @mongo_post = MongoPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mongo_post }
    end
  end

  # GET /mongo_posts/1/edit
  def edit
    @mongo_post = MongoPost.find(params[:id])
  end

  # POST /mongo_posts
  # POST /mongo_posts.json
  def create
    @mongo_post = MongoPost.new(params[:mongo_post])

    respond_to do |format|
      if @mongo_post.save
        format.html { redirect_to @mongo_post, notice: 'Mongo post was successfully created.' }
        format.json { render json: @mongo_post, status: :created, location: @mongo_post }
      else
        format.html { render action: "new" }
        format.json { render json: @mongo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mongo_posts/1
  # PUT /mongo_posts/1.json
  def update
    @mongo_post = MongoPost.find(params[:id])

    respond_to do |format|
      if @mongo_post.update_attributes(params[:mongo_post])
        format.html { redirect_to @mongo_post, notice: 'Mongo post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mongo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mongo_posts/1
  # DELETE /mongo_posts/1.json
  def destroy
    @mongo_post = MongoPost.find(params[:id])
    @mongo_post.destroy

    respond_to do |format|
      format.html { redirect_to mongo_posts_url }
      format.json { head :ok }
    end
  end
end
