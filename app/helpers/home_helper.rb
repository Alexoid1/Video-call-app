module HomeHelper
    if user_signed_in?
        'home/partials/developers'
    else
        'home/partials/empty'
    end
end

def links
    if user_signed_in?
    'home/partials/nav/dropdown'
    else
    'home/partials/nav/auth_links'
    end
end
