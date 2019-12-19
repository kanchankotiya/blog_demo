ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :desc, :date, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :desc, :date, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
     
      column :title
      column :desc
      column :date
      column "Image" do |article|
        if article.image.present?
          image_tag article.image_url, class: 'my_image_size'
        end  
      end
       
    actions
  end
end
