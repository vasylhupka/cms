ActiveAdmin.register Article do

permit_params :title, :body, :image, :tag_list, category_ids: []

  form do |f|
    f.inputs 'Деталі статті' do
      f.input :title
      f.input :body, :as => :ckeditor, label: false
      f.input :image
      f.input :tag_list
      f.input :categories,
                as: :select,
                :multiple => :true,
                collection: Category.select(:id,:title).all,
                include_blank: false
    end
    f.actions
  end
end
