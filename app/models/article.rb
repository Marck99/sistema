class Article
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :publication, type: String

  validates :title, :content, :publication, :presence => { message: "No puede ser vacio" }

  has_many :comments, :dependent => :destroy
  accepts_nested_attributes_for :comments

end