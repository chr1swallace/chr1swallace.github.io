module Jekyll
  class RenderGithubTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<a href=\"https://github.com/#{@text}\" rel=\"noopener noreferrer\" style=\"vertical-align:top;\"><img src=\"/assets/github16.png\" style=\"width:1em;margin-right:.5em;\" alt=\"github icon\"> </a>"
    end
  end
end

Liquid::Template.register_tag('render_github', Jekyll::RenderGithubTag)
