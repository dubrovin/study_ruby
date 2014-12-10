class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :post, counter_cache: true

    def author_name
        if user
            user.full_name
        else
            "unknown"
        end
    end
end