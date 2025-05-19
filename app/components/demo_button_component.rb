# frozen_string_literal: true

class DemoButtonComponent < ViewComponent::Base
  SIZES = {
    small: "text-xs px-2 py-1 h-8",
    medium: "text-sm px-4 py-2 h-10",
    large: "text-base px-6 py-3 h-12"
  }.freeze

  STYLES = {
    normal: "bg-none bg-gray-800 hover:bg-gray-700 active:bg-gray-900",
    primary: "bg-none bg-blue-600 hover:bg-blue-800 active:bg-blue-700 focus:ring-blue-500 border-[#1F51FF]",
    text: "bg-none bg-transparent hover:bg-gray-100 active:bg-gray-200 text-black"
  }.freeze

  COLORS = {
    primary: "bg-none bg-blue-600 hover:bg-blue-800 focus:ring-blue-500 active:bg-blue-700",
    green: "bg-none bg-green-600 hover:bg-green-500 focus:ring-green-500 active:bg-green-700",
    yellow: "bg-none bg-yellow-500 hover:bg-yellow-400 focus:ring-yellow-500 active:bg-yellow-600",
    red: "bg-none bg-red-600 hover:bg-red-500 focus:ring-red-500 active:bg-red-700"
  }.freeze

  def initialize(label:, size: nil, style: :nil, color: :nil, type: :button)
    @label = label
    @size = size
    @style = style
    @color = color
    @type = type
  end

  def classes
    base_class = "save-theme-btn"
    size_classes = SIZES[@size]
    style_classes = STYLES[@style]
    color_classes = COLORS[@color]

    [base_class, size_classes, style_classes, color_classes].join(" ")
  end
end
