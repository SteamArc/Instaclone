class PostsController < ActionController::Base

    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def create 
       @post = Post.create(post_params)
       @post.user_id = current_user.id
       if @post.save
           redirect_to @post 
           flash[:notice] = "Post Created!"
       end
     
    end
    
    def show 
        @post = Post.find(params[:id])
    end
    
    def user_index
        @user = User.find(params[:user_id])
    end
    
    private 
    def post_params
    params.require(:post).permit(:caption, :pic)
    end
    
end
