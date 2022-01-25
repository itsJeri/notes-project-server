class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # HOME #
  get '/' do
    "Welcome! You can view data through these endpoints:
    /folders
    /documents"
  end


  # FOLDERS #
  get '/folders' do # return all
    folders = Folder.all
    folders.to_json
  end

  get '/folders/:id' do # return by ID
    folder = Folder.find(params[:id])
    folder.to_json
  end

  post '/folders' do # create new
    folder = Folder.create(name: params[:name])
    folder.to_json
  end

  patch '/folders/:id' do # rename
    folder = Folder.find(params[:id])
    folder.update(name: params[:name])
    folder.to_json
  end

  delete '/folders/:id' do # delete
    folder = Folder.find(params[:id])
    folder.destroy
  end


  # DOCUMENTS #
  get '/documents' do # return all
    documents = Document.all
    documents.to_json
  end

  get '/documents/:id' do # return by ID
    document = Document.find(params[:id])
    document.to_json
  end

  post '/documents' do # create new
    document = Document.create(
      title: params[:title],
      folder_id: params[:folder_id]
      )
    document.to_json
  end

  patch '/documents/:id' do # update doc body
    document = Document.find(params[:id])
    document.update(body: params[:body])
    document.to_json
  end

  delete '/documents/:id' do # delete
    document = Document.find(params[:id])
    document.destroy
  end

end
