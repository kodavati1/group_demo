class Address < ActiveRecord::Base



	default_scope { order('created_at DESC') }

  validates :Address, presence: true,
            length: { maximum: 150 }

 end