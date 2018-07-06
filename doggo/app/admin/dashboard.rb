def effectiveness
  Category.find_by_sql("
    SELECT source, COUNT(initial_feeling) as initial_feeling, 
    COUNT(final_feeling) as final_feeling
    FROM categories LEFT JOIN surveys
    ON categories.id = surveys.category_id
    GROUP BY source").pluck(:source, :initial_feeling, :final_feeling) \
  .map { |e| 
    {name: e[0], data: {"initial" => e[1], "final" => e[2]}}
  }
end

def pie_categories
  Category.find_by_sql("SELECT source, COUNT(surveys.id) as surveys
  FROM categories LEFT JOIN surveys
  ON categories.id = surveys.category_id
  GROUP BY source").pluck(:source, :surveys)
end

ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "App Usage" do
          line_chart Survey.group_by_day(:created_at).count
        end
        panel "Categories" do
          column_chart effectiveness
        end
      end

      column do
        panel "Categories by Source" do
          pie_chart pie_categories
        end
      end
    end
  
  
  end # content
end
