class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    user ||= User.home # guest user (not logged in)
    can :manage, Group, user: user
    can :manage, Operation, user: user
  end
end
