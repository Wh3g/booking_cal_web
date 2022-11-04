module ApplicationHelper
    def current_user_is_admin?
        if current_user && current_user.admin
            true
        else
            false
        end
    end
end
