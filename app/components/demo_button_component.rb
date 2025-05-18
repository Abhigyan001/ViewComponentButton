# frozen_string_literal: true

class DemoButtonComponent < ViewComponent::Base
  def initialize(label:, type: :button)
    @label = label
    @type = type
  end
end
