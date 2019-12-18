# frozen_string_literal: true

module ConstraintValidations
  class ApplicationMailer < ActionMailer::Base
    default from: 'from@example.com'
    layout 'mailer'
  end
end
