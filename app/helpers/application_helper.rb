module ApplicationHelper
  def default_meta_tags
    {
      title: 'app_title',
      description: 'app_description',
      keywords: 'app_keyword1,app_keyword2',
      icon: [
        { href: 'favicon.ico' }
      ],
      noindex: !Rails.env.production?,
      charset: 'UTF-8',
      og: {
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        locale: 'ja_JP'
      }
    }
  end
end
