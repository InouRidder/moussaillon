module PagesHelper

  def linkify_tag(tags)
    tag = tags.find { |tag| Product::CATEGORIES.include?(tag) }
    tag ? "?type=#{tag}" : ''
  end
end
