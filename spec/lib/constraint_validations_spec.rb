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

  context 'with an integer' do
    subject(:model) { build(:thing_with_integer_field) }

    it 'validates numericality on an integer field' do
      expect(model).to validate_numericality_of(
        :field_with_integer_constraint
      ).only_integer
        .is_greater_than_or_equal_to(-2_147_483_648)
        .is_less_than_or_equal_to(2_147_483_648)
    end

    it 'validates numericality on a big integer field' do
      expect(model).to validate_numericality_of(
        :field_with_big_integer_constraint
      ).only_integer
        .is_greater_than_or_equal_to(-9_223_372_036_854_775_808)
        .is_less_than_or_equal_to(9_223_372_036_854_775_808)
    end

    it 'validates numericality on an integer field with an explicit limit' do
      expect(model).to validate_numericality_of(
        :field_with_small_integer_constraint
      ).only_integer
        .is_greater_than_or_equal_to(-32_768)
        .is_less_than_or_equal_to(32_768)
    end
  end
end
