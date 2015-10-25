class Repository < ActiveRecord::Base
  belongs_to :user

  def self.save_repo_info(repo)
    repo.each do |el|
      create(
        owner: el["owner"]["login"],
        name: el["name"],
        description: el["description"],
        full_name: el["full_name"],
        repo_url: el["html_url"]
      )
    end
  end
end
