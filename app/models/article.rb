class Article
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :publication, type: String

  attr_accessible :title,
  				  :content,
  				  :publication,
  				  :author_id

  validates_presence_of :title,
  						:content,
  						:publication,
  						:author_id

  embeds_many :comments
  accepts_nested_attributes_for :comments

  belongs_to :author

end