class BoardController < ApplicationController
    def index
        @every= Post.all.order("id desc") #모든 게시물을 가져와
        
    end
    def show #게시글 상세보기
        @post=Post.find(params[:id])
        @comment=@post.comment
        
    end
    
    def new #사용자가 작성할 수 있도록 폼을 제공해주는 부분
    
    end
    
    def create #실제 디비에 저장되는 프로세스 
    #   @title=params[:title]
    #   @content=params[:content] #요롷게 변수를 만들면 
        
        
        new_post=Post.new 
        new_post.title=params[:title]  
        new_post.content=params[:content]
        new_post.image=params[:pic]
        new_post.save
        redirect_to '/'
        
    #   redirect_to "/index" #create하고 index파일로 가서 보여주세요
   
    end
    def destroy
        #특정게시글을 삭제하는 프로세스
        post=Post.find(params[:post_id])
        
        post.destroy!
        redirect_to '/'
    end
    
    def edit
        @post=Post.find(params[:post_id])    
    end
    def update
        post=Post.find(params[:post_id])
        post.title=params[:title]
        post.content=params[:content]
        post.save
        redirect_to '/'
    end
    
    

        
  
    
end
