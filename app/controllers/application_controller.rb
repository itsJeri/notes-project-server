class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # HOME #
  get '/' do
    "Welcome! You can view data through these endpoints:
    /folders
    /notes"
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
  get '/notes' do # return all
    notes = Note.all.recently_changed
    notes.to_json
  end

  get '/notes/:id' do # return by ID
    note = Note.find(params[:id])
    note.to_json
  end

  post '/notes' do # create new
    note = Note.create(
      title: params[:title],
      body: params[:body],
      folder_id: params[:folder_id]
      )
    note.to_json
  end

  patch '/notes/:id' do # update note body
    note = Note.find(params[:id])
    note.update(
      title: params[:title],
      body: params[:body]
      )
    note.to_json
  end

  delete '/notes/:id' do # delete
    note = Note.find(params[:id])
    note.destroy
  end

end
