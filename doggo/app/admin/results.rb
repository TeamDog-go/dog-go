def shelter
  data = Category.find_by_sql("SELECT c.source, s.color, COUNT(s.id) as count,
  CASE
    WHEN s.color = 'red' THEN 'high risk'
    WHEN s.color = 'yellow' THEN 'medium risk'
    WHEN s.color = 'green' THEN 'low risk'
    ELSE 'There are null color values'
  END
  FROM categories c 
  LEFT JOIN surveys s 
  ON c.id = s.category_id
  WHERE s.color IS NOT NULL AND c.source = 'shelter'
  GROUP BY c.source, s.color
  ORDER BY s.color DESC
  ").pluck(:case, :count)
end

def breeder
  data = Category.find_by_sql("SELECT c.source, s.color, COUNT(s.id) as count,
  CASE
    WHEN s.color = 'red' THEN 'high risk'
    WHEN s.color = 'yellow' THEN 'medium risk'
    WHEN s.color = 'green' THEN 'low risk'
    ELSE 'There are null color values'
  END
  FROM categories c 
  LEFT JOIN surveys s 
  ON c.id = s.category_id
  WHERE s.color IS NOT NULL AND c.source = 'breeder'
  GROUP BY c.source, s.color
  ORDER BY s.color DESC
  ").pluck(:case, :count)
end

def individual
  data = Category.find_by_sql("SELECT c.source, s.color, COUNT(s.id) as count,
  CASE
    WHEN s.color = 'red' THEN 'high risk'
    WHEN s.color = 'yellow' THEN 'medium risk'
    WHEN s.color = 'green' THEN 'low risk'
    ELSE 'There are null color values'
  END
  FROM categories c 
  LEFT JOIN surveys s 
  ON c.id = s.category_id
  WHERE s.color IS NOT NULL AND c.source = 'individual'
  GROUP BY c.source, s.color
  ORDER BY s.color DESC
  ").pluck(:case, :count)
end

ActiveAdmin.register_page "Result" do
  menu priority: 2
  content do
    columns do
      column do
        panel "Shelter Results" do
          pie_chart shelter, donut: true
        end
      end
      column do
        panel "Breeder Results" do
          pie_chart breeder, donut: true
        end
      end
    end
    columns do
      column do
        panel "Individual Results" do
          pie_chart individual, donut: true
        end
      end
      column do
      end
    end
  end
end
