class Project < ApplicationRecord
	belongs_to :user
	has_one :mvc
	has_many :filedets
	has_many :repositories
	validates :name, presence:true
	validates :github_url, presence:true
	# validates :name, uniqueness: true
	validates_uniqueness_of :name
	# validates :github_url, :format => { :with =>/^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix,:multiline => true, :message => "invalid git_hub url" }
end
