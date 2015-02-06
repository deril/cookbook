module RecipesHelper
  def cooking_time_formater(minutes)
    hh, mm = minutes.divmod(60)
    time = String.new
    time << "#{hh} hour" if hh > 0
    time << "#{mm} minutes" if mm > 0
    time
  end
end
