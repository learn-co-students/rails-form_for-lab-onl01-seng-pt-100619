class SchoolClass < ActiveRecord::Base
    def to_s
      self.title + " " + self.class_number
    end
  end