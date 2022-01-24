class Folder < ActiveRecord::Base
    has_many :documents

    def rename(new_name)
        self.update(name: new_name)
    end
end