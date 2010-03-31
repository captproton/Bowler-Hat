class User < ActiveRecord::Base
  has_one :note
  has_many :tasks, :dependent => :destroy
  has_many :projects, :dependent => :destroy
  has_many :locations, :dependent => :destroy
end
