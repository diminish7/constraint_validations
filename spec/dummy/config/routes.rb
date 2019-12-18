# frozen_string_literal: true

Rails.application.routes.draw do
  mount ConstraintValidations::Engine => '/constraint_validations'
end
