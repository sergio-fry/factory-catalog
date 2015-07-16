module FactoriesHelper
  def factory_site_link(factory)
    text = URI(factory.site).host rescue factory.site

    link_to  text, factory.site, :title => "Официальный сайт #{factory.title }", :target => "_blank"
  end
end
