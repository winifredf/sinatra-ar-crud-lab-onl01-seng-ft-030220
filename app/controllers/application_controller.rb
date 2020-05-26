require_relative '../../config/environment'

class ArticlesController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    
  end
  
  get '/articles/new' do
    erb :new
  end
  
  post 'articles' do
    @articles = Articles.create(params)
    redirect to "/articles/#{articles.id}"
  end
  
  get '/articles' do
    @articles = Article.all
    erb :index
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
