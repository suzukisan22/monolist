class Item < ActiveRecord::Base
  serialize :raw_info , Hash

  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  
  has_many :wamts  , foreign_key: "item_id" , dependent: :destroy
  has_many :want_users , through: :wants , source: :user
  
  has_many :haves  , foreign_key: "item_id" , dependent: :destroy
  has_many :have_users , through: :haved , source: :user
  
end
