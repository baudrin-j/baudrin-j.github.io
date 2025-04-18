require "bibtex"
require "pandoc-ruby"

class Pandoc < BibTeX::Filter
  def apply(value)
    value = value.to_s
    return value unless %w[\\ { } $ % ~].any? { |c| value.include?(c) }

    html = PandocRuby.convert(value, :mathjax, from: :latex, to: :html)
    html.gsub!(/<\/?p>/, "") if html.scan("<p>").size == 1
    html.strip
  end
end