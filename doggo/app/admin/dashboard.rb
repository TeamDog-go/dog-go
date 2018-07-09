def scatter
  dataset = Category.find_by_sql("SELECT c.source, COUNT(s.id) as frequency, s.final_feeling - s.initial_feeling as diff, AVG(s.final_score) as avg_final_score
  FROM categories c LEFT JOIN surveys s
  ON c.id = s.category_id
  WHERE s.final_feeling IS NOT NULL AND s.initial_feeling IS NOT NULL
  GROUP BY c.source, diff
  ORDER BY diff").pluck(:source, :diff, :avg_final_score)
  newdata = {}
  dataset.each do |datum|
    name = datum[0]
    score = datum[2]
    diff = datum[1]
    newdata[name] ||= {}
    newdata[name][diff] = score
  end
  finaldata = []
  newdata.each do |k, v|
    finaldata.push({name: k, data: v})
  end
  finaldata
end

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

def visit_data 
  Category.find_by_sql("SELECT o.o_color, COUNT(o.id) as count, (count * 100) /  
  FROM questions q LEFT JOIN options o
  ON q.id = o.question_id LEFT JOIN answers a
  ON o.id = a.option_id
  WHERE q.content = 'Will they let you vist the dogs?'
  GROUP BY o.o_color")
end

def line_data
 dataset = Category.find_by_sql("SELECT source, COUNT(surveys.id) as surveys, date_trunc('day', surveys.created_at) as day
 FROM categories LEFT JOIN surveys
 ON categories.id = surveys.category_id
 WHERE surveys.created_at IS NOT NULL
 GROUP BY day, source").pluck(:source, :surveys, :day)
  newdata = {}
  dataset.each do |datum|
    name = datum[0]
    surveys = datum[1]
    day = datum[2].strftime('%b %d')
    newdata[name] ||= {}
    newdata[name][day] = surveys
  end
  finaldata = []
  newdata.each do |k, v|
    finaldata.push({name: k, data: v})
  end
  finaldata
end

def pie_categories
  pie = Category.find_by_sql("SELECT source, COUNT(surveys.id) as surveys
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

def avg_final_score 
  Category.find_by_sql("SELECT c.source, AVG(s.final_score) as avg_final_score
  FROM categories c LEFT JOIN surveys s
  ON c.id = s.category_id
  WHERE s.final_score IS NOT NULL
  GROUP BY c.source, s.final_score
  ORDER BY s.final_score DESC").pluck(:source, :avg_final_score)
end

ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Surveys Taken per Day by Source" do
          line_chart line_data, discrete: true, xtitle: "Date", ytitle: "Total Surveys Taken"
        end

        
        panel "Number of Surveys Reporting a Feeling Change by Source " do
          # column_chart score_difference
          column_chart score_difference_stacked, { xtitle: "Change in Final Feeling", ytitle: "Total Surveys Taken", stacked: true, xtype: "number" }
          # column_chart [
          #   {name: "breeder", data: {-1 => 3, 0 => 5, 1 => 2}},
          #   {name: "rescue", data: {-1 => 4, 0 => 4, 1 => 1}}
          # ], { stacked: true, xtype: "number" }
        end
      end

      column do
        panel "Percentage of Surveys Taken by Source" do
          pie_chart pie_categories
        end

        panel "Average Final Score vs. Change in Feeling by Source" do
          # column_chart avg_final_score, xtitle: "Source", ytitle: "Average Final Score"
          scatter_chart scatter, xtitle: "Average Score", ytitle: "Change in Feeling About Source"
        end
      end
    end
  
  
  end # content
end
