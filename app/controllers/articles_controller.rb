require_relative '../../config/environment'

class ArticlesController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/article' do
    @articles=Article.all
  end
  
  get '/articles/new' do
    erb :new
  end
  
  post 'articles' do
    @articles = articles.create(params)
    redirect_to "/articles/#{articles.id}"
  end
  
  get 'articles' do
    @articles=Article.all
    erb :index
  end
  
  get 'articles/:id' do
    @article = Article.find_(params[:id])
    erb :show
  end
end