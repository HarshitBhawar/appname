class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy
    after_commit :user

    def user
      puts "After commit" 
    end
    # validates :title, presence: true
    # validates :body, presence: true, length: { minimum: 10 }
  end
  