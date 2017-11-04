FactoryBot.define do
  factory :note, class: Note do
    title "First"
    content "This is a note."
  end

  factory :tag, class: Tag do
    name "This is a tag."
  end
end