FactoryGirl.define do
  factory :investment do
    term 1
    interest_rate "9.99"
    minimum_order 1
    denomination 1
    maturity_date "2014-12-02"
    issue_date "2014-12-02"
    offer_start_period "2014-12-02"
    offer_end_period "2014-12-02"
  end

end
