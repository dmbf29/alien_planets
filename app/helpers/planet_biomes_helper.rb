module PlanetBiomesHelper
  def biome_color(biome)
    case biome.name
    when 'forest'
      "green"
    when 'ocean'
      "blue"
    else
      "orange"
    end
  end

  def test_html
    "<h1>hello</h1>".html_safe
  end
end
