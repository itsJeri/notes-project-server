class Document < ActiveRecord::Base
    belongs_to :folder

    def retitle(new_title)
        self.update(title: new_title)
    end
end