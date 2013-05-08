
FactoryGirl.define do
  factory :catalog, :class => Refinery::Catalogs::Catalog do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

