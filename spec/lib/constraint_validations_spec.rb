# frozen_string_literal: true

RSpec.describe ConstraintValidations do
  context 'with a NOT NULL constraint' do
    subject { build(:thing_with_not_null_field) }

    it { is_expected.to validate_presence_of(:field_with_constraint) }
    it { is_expected.not_to validate_presence_of(:field_without_constraint) }

    it { is_expected.not_to validate_presence_of(:id) }
    it { is_expected.not_to validate_presence_of(:created_at) }
    it { is_expected.not_to validate_presence_of(:updated_at) }
  end
end
