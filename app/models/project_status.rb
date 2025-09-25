class ProjectStatus < Status
  has_many :projects, foreign_key: "status_id", dependent: :nullify
end
