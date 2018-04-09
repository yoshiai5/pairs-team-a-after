class GroupsController < ApplicationController
  def index
    @groups =[]

    current_user.matchers.each do |match_user|
      if MatchUser.find_by(before_user_id: current_user.id, after_user_id: match_user.id)
        @groups_matchuser = MatchUser.find_by(before_user_id: current_user.id, after_user_id: match_user.id)
        @groups << @groups_matchuser
      elsif MatchUser.find_by(after_user_id: current_user.id, before_user_id: match_user.id)
        @groups_matchuser = MatchUser.find_by(after_user_id: current_user.id, before_user_id: match_user.id)
        @groups << @groups_matchuser
      else
        @group = Group.new
        @group.save
        @groups_matchuser = MatchUser.create(before_user_id: current_user.id, after_user_id: match_user.id, group_id:@group.id)
        @groups << @groups_matchuser
      end
    end

  end
end
