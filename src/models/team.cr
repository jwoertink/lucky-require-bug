class Team < BaseModel
  table :teams do
    column name : String
    has_many team_roles : TeamRole
    has_many profiles : Profile
  end
end
