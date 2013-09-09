# usage:

# {% reference_item author names http://example.com % Title of the item %}
# This is an article about something
# {% endreference_item %}

=begin MEH

require 'uri'

module Jekyll
  class ReferenceItem < Liquid::Block
    MARKUP_REGEX = /(?:(?<byline>\S.*)?\s+|\s*)(?<source_url>https?:\/\/\S+)(?<title>\s+(.+))?/

    def initialize(tag_name, markup, tokens)
      components = markup.match(MARKUP_REGEX)
      @source_url = components[:source_url]
      @byline = components[:byline]
      @title = components[:title]

      super
    end

    def render(context)
      matter = paragraphize(super)
      base_host = URI.parse(@source_url).host
      source_host_link = %Q{[<a href="#{@source_url}">#{base_host}</a>]}
      
      byline_line = "#{"by #{@byline} " if @byline}#{source_host_link}"

      return %Q{
<div class="reference_item">
<div class="title"><a href="#{@source_url}">#{@title}</a></div>
<div class="byline">#{byline_line}</div>
#{matter}
</div>}
    end
    
    def paragraphize(input)
      "<p>#{input.lstrip.rstrip.gsub(/\n\n/, '</p><p>').gsub(/\n/, '<br/>')}</p>"
    end

  end
end

Liquid::Template.register_tag('reference_item', Jekyll::ReferenceItem)
=end