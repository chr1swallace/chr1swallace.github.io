module Jekyll
  class RenderOrcidTagSmall < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<a href=\"https://orcid.org/#{@text}\" target=\"orcid.widget\" rel=\"noopener noreferrer\" style=\"vertical-align:top;\"><img src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" style=\"width:1em;margin-right:.5em;\" alt=\"ORCID iD icon\"></a>"
    end
  end
end

Liquid::Template.register_tag('render_orcidsmall', Jekyll::RenderOrcidTagSmall)

module Jekyll
  class RenderOrcidTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<a href=\"https://orcid.org/#{@text}\" target=\"orcid.widget\" rel=\"noopener noreferrer\" style=\"vertical-align:top;\"><img src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" style=\"width:1em;margin-right:.5em;\" alt=\"ORCID iD icon\"> </a>"
    end
  end
end

Liquid::Template.register_tag('render_orcid', Jekyll::RenderOrcidTag)
