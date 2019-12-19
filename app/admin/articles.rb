ActiveAdmin.register Article do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :text, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :text, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
     
      column :id
      column :title
      column :text
      column "Image" do |article|
        if article.image.present?
          image_tag article.image_url, class: 'my_image_size'
        end  
      end
      column :created_at
      column :uploaded_at
       
    actions
  end
end
