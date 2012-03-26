class Post < ActiveRecord::Base
  validates :name, :presence => true
  validates :title, :presence => true, :length => { :minimum => 5}
  
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags
  
  accepts_nested_attributes_for :tags, allow_destroy: :true, 
    reject_if: proc{ |attrs| attrs.all?{|k,v| v.blank? } }
    
  def list_tags
    self.tags.map { |t| t.name }.join(", ") if not self.tags.nil?
  end
end
