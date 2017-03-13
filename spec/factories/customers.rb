FactoryGirl.define do
  factory :customer do
    enrolment "12345"
    name "Nelson Gustavo"
    cpf "01369658141"
    email "nelsongborges@gmail.customer"
    address "quadra SQN 305,414 asa norte"
  end

  factory :customer_invalid, class: Customer do
    enrolment ""
    name ""
    cpf ""
    email ""
    address ""
  end
end