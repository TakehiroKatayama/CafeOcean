# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = 'http://www.example.com'

SitemapGenerator::Sitemap.create do
  add root_path, priority: 0.8
  add reservations_path
  add menus_path
  add shop_path
  add contacts_path
  add new_user_path
  add login_path

  News.all.find_each do |news|
    add news_path(news), changefreq: 'monthly', lastmod: news.updated_at
  end
end
