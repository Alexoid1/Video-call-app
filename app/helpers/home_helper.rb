module HomeHelper
    if user_signed_in?
        'home/partials/developers'
    else
        'home/partials/empty'
    end
end
