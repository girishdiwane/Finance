ActiveAdmin.register_page "Dashboard" do
  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div id:"orders_chart" , style: "width:660px; height:300px" do
      if current_user.role? :superadmin
      render "/graph" 
      elsif   current_user.role? :admin
        render "/admin"
       end
    end
  end
end 