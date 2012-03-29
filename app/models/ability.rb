class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.role? :geek or user.role? :guest
      can :read, Question
    end

    if user.role? :moderator
      can [:read, :create], Question
    end

    if user.role? :admin
      can [:read, :create, :update], Question
    end

    if user.role? :superadmin
      can :manage, Question
    end
  end
end
