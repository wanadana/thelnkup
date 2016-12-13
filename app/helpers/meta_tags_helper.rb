MetaTagsHelper Module
  def meta_title
    content_for? ( : Meta_title ) ? content_for ( : meta_title ) : DEFAULT_META [ 'meta_title' ]
  end

  def meta_description
    content_for? ( : Meta_description ) ? content_for ( : meta_description ) : DEFAULT_META [ 'meta_description' ]
  end

  def meta_image
    content_for? ( : Meta_image ) ? content_for ( : meta_image ) : DEFAULT_META [ 'meta_image' ]
  end
end
