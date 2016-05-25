require 'rails_helper'

describe Review, type: :model do
  it "is not valid is the rating more then 5" do
    review = Review.new(rating: 10)
    expect(review).to have(1).error_on(:rating)
  end
end
