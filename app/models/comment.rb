class Comment
  include Mongoid::Document
  field :content, type: String
  field :date, type: Date

  attr_accessible :content

  validates :content, :presence => { message: "No se acepta vacio" }

  belongs_to :article
end
