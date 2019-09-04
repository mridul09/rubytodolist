class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, Todolist, user_id: user.id
    else
      can :read, :all
    end
  end
end