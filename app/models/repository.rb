class Repository < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :full_name

  def self.save_repo_info(repos, id)
    repos.collect do |repo|
      create(
        owner: repo["owner"]["login"],
        name: repo["name"],
        description: repo["description"],
        full_name: repo["full_name"],
        repo_url: repo["html_url"],
        user_id: id
      )
    end
  end
end
