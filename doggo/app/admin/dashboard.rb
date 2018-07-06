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

def score_difference
  # Category.find_by_sql("SELECT source, s.final_feeling - s.initial_feeling as diff
  # FROM categories c LEFT JOIN surveys s
  # ON c.id = s.category_id").pluck(:source, :frequency, :diff) \
  # .map { |e|
  #   {name: e[0], data: {"score_difference" => e[1]}}

  # }
  Category.find_by_sql("SELECT s.final_feeling - s.initial_feeling AS diff, COUNT(s.id) as frequency
  FROM surveys s
  WHERE s.final_feeling IS NOT NULL AND s.initial_feeling IS NOT NULL
  GROUP BY diff ORDER BY diff").pluck(:diff, :frequency)
end 

def score_difference_stacked
  dataset = Category.find_by_sql("SELECT c.source, COUNT(s.id) as frequency, s.final_feeling - s.initial_feeling as diff
  FROM categories c LEFT JOIN surveys s
  ON c.id = s.category_id
  WHERE s.final_feeling IS NOT NULL AND s.initial_feeling IS NOT NULL
  GROUP BY c.source, diff ORDER BY diff").pluck(:source, :diff, :frequency)
  newdata = {}
  dataset.each do |datum|
    name = datum[0]
    delta = datum[1]
    freq = datum[2]
    newdata[name] ||= {}
    newdata[name][delta] = freq
  end
  finaldata = []
  newdata.each do |k, v|
    finaldata.push({name: k, data: v})
  end
  finaldata
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
          # column_chart score_difference
          column_chart score_difference_stacked, { stacked: true, xtype: "number" }
          # column_chart [
          #   {name: "breeder", data: {-1 => 3, 0 => 5, 1 => 2}},
          #   {name: "rescue", data: {-1 => 4, 0 => 4, 1 => 1}}
          # ], { stacked: true, xtype: "number" }
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
