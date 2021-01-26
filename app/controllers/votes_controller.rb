class VotesController < ApplicationController
    def create
        article = Article.find(params[:article_id])
        current_user.up_vote(article)
        redirect_back fallback_location: root_path
    end
    
    def destroy
        article = Article.find(params[:article_id])
        vote = Vote.find(params[:id])
        vote.destroy
        redirect_back fallback_location: root_path
    end
end
