module ApplicationHelper
  def method_name(time)
    time.strftime('%F %R')
  end
end
