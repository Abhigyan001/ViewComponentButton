# frozen_string_literal: true

class DemoButtonComponent < ViewComponent::Base
  SIZES = {
    small: "text-xs px-2 py-1 h-8",
    medium: "text-sm px-4 py-2 h-10",
    large: "text-base px-6 py-3 h-12"
  }.freeze

  STYLES = {
    normal: "bg-none bg-gray-800 shadow-none border-gray-800",
    primary: "bg-none bg-blue-600 border-[#1F51FF] shadow-none",
    text: "bg-none bg-transparent text-black border-gray-500 shadow-none"
  }.freeze

  COLORS = {
    primary: "bg-none bg-blue-600 border-blue-500 shadow-none",
    green: "bg-none bg-green-500  border-green-500 shadow-none",
    yellow: "bg-none bg-yellow-500 border-yellow-500 shadow-none",
    red: "bg-none bg-red-500 border-red-500 shadow-none"
  }.freeze

  STATES = {
    focus: "focus:outline-4 focus:outline-offset-2",
    hover: "cursor-pointer",
    active: "active:animate-bounce",
    disabled: "opacity-50 pointer-events-none"
  }.freeze

  def initialize(label:, size: '', style: '', color: '', state: '', icon: nil, icon_position: :left, type: :solid, custom_classes: '')
    @label = label
    @size = size
    @style = style
    @color = color
    @state = state
    @icon = icon
    @icon_position = icon_position
    @type = type
    @custom_classes = custom_classes
  end

  def classes
    base_class = "save-theme-btn"
    size_classes = SIZES[@size]
    style_classes = STYLES[@style]
    color_classes = COLORS[@color]
    state_classes = STATES[@state]

    [base_class, size_classes, style_classes, color_classes, state_classes, @custom_classes].compact.join(" ")
  end

  def icon_classes
    case @size
    when :small
      "h-4 w-4"
    when :large
      "h-6 w-6"
    else
      "h-5 w-5"
    end
  end

  def icon_margin
    return "" unless @icon

    if @icon_position == :left
      case @size
      when :small
        "mr-1"
      when :large
        "mr-3"
      else
        "mr-2"
      end
    else
      case @size
      when :small
        "ml-1"
      when :large
        "ml-3"
      else
        "ml-2"
      end
    end
  end

  def icon_size
    case @size
    when :small
      :small
    when :large
      :large
    else
      :medium
    end
  end
end
