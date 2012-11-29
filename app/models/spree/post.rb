module Spree
  class Post < ActiveRecord::Base
    attr_accessible :title, :description, :published
    validates_presence_of :description
  #  validates_length_of :description, :maximum => 150

    scope :published, lambda { where(:published => true).order("created_at desc") }
  end
end
