class Post < ApplicationRecord
    has_many :replies
    belongs_to :user, optional: true
    has_many :interactions

    def self.order_by_time 
        Post.all.sort_by(&:created_at)
    end

    def self.dynamic_ordering
        post_array = Post.order_by_time
        post_array.each do |post| 
            counter = 0
            # byebug
            post.interactions.each do |interaction|
                
                if interaction.occured == "like"
                    counter += 1
                elsif interaction.occured == "reply"
                    counter += 2
                end
            # byebug
            end 
            post.score = counter
            post.save
            # byebug
            
        end
        # byebug
        Post.all.sort_by(&:score)
    end

end
