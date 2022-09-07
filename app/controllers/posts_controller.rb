class PostsController < ApplicationController
def index
	@posts = Post.all
end
def show
	@post= Post.find(params[:id])
end

def new
	@post = Post.new

end

def create
	@post = Post.new(post_params)
	@post.comments.build(post_params[:comments_attributes]["0"])
	@post.save
	redirect_to posts_url
end

def edit
	@post = Post.find(params[:id])
end

def update
	# debugger
	@post = Post.find(params[:id])
	@post.update(post_params)
	redirect_to posts_url
end

def destroy
	@post = Post.find(params[:id])
	@post.destroy
	redirect_to posts_url

end


private
def post_params
	params.require(:post).permit(:pname,comments_attributes: [:commenter, :body, :post_id, filenames:[]])
	
end

end
