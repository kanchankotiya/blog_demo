
class Article < ApplicationRecord
  has_many :comments, inverse_of: :article, dependent: :destroy
  accepts_nested_attributes_for :comments, reject_if: :all_blank, allow_destroy: true
  validates :title, presence: true,
                    length: { minimum: 5 }
  mount_uploader :image, ImageUploader
 
 
   
end