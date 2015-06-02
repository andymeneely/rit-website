require 'jekyll/scholar'
module Jekyll
  class Scholar

    class ShowBibtex < Liquid::Tag
      include Jekyll::Scholar::Utilities
      def initialize(tag_name, arguments, tokens)
        super
        @config = Jekyll::Scholar.defaults.dup
        @key, arguments = arguments.strip.split(/\s+/, 2)
        optparse(arguments)
      end

      def render(context)
        set_context_to context
        bibliography[@key].to_s
      end
    end

  end
end

Liquid::Template.register_tag('show_bibtex', Jekyll::Scholar::ShowBibtex)