require 'jekyll/scholar'
module Jekyll
  class Scholar

    class AbstractTag < Liquid::Tag
      include Jekyll::Scholar::Utilities
      def initialize(tag_name, arguments, tokens)
        super
        @config = Jekyll::Scholar.defaults.dup
        @key, arguments = arguments.strip.split(/\s+/, 2)
        optparse(arguments)
      end

      def render(context)
        set_context_to context
        pub_id = context.environments.first['page']['pub_id']
        bibliography.entries[pub_id]['abstract'].to_s
      end
    end

  end
end

Liquid::Template.register_tag('abstract', Jekyll::Scholar::AbstractTag)