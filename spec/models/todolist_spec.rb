require "rails_helper"

RSpec.describe Todolist, type: :model do
    it { should belong_to(:user) }
end