class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    
      user ||= User.new # guest user (not logged in)
      
      case user.role_name    
      when "superadmin"
        can :manage, :all
        can :dashboard
        when "admin"
        can [:read,:update], Organisation
        #can :read, Post
        #cannot [:destroy,:edit], Organisation do |organisation|
           # organisation.try(:user_id) != user.id
        #end
        when "user"
        #cannot :manage, Organisation
        cannot [:read,:destroy,:edit,:create], :all
      end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
