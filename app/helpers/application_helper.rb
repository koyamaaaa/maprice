module ApplicationHelper
  def default_meta_tags
    {
      title: "maprice",
      description: "価格の地図",
      noindex: ! Rails.env.production?,
      charset: "UTF-8",
      og: {
        title: :title,
        description: :description,
        type: "website",
        url: request.original_url,
        site_name: "maprice",
        local: "ja_JP"
      },
      twitter: {
        card: "summary"
      }
    }
  end
end