json.array! @votes do |vote|
  json.extract! vote, :votable_id, :votable_type, :voter_id, :voter_type, :vote_flag, :vote_scope, :vote_weight, :created_at, :updated_at

  end