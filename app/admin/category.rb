ActiveAdmin.register Category do

  permit_params :title, :description, :parent_id

  remove_filter :parent, :children, :ancestor_hierarchies,
    :self_and_ancestors, :descendant_hierarchies, :self_and_descendants

end
