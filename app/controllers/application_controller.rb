class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    { message: "Welcome!" }.to_json
  end

  get '/folders' do
    folders = Folder.all
    folders.to_json
  end

  get '/folders/:id' do
    folder = Folder.find(params[:id])
    folder.to_json
  end

  get '/documents' do
    documents = Document.all
    documents.to_json
  end

  get '/documents/:id' do
    document = Document.find(params[:id])
    document.to_json
  end

end
