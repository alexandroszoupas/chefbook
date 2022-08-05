class PostingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all

      # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
    end

    def show?
      true
    end

    def index?
      true
    end
  end
end
