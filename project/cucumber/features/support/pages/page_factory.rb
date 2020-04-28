# frozen_string_literal: true

require_relative 'women_page'
require_relative 'dresses_page'
require_relative 't_shirts_page'

# Manages PageFactory pages.
class PageFactory

  # Gets page instance by name.
  # @param name value.
  # @return selected class instance.
  def get_page(name)
    if name.eql? 'Women'
      women_page
    elsif name.eql? 'Dresses'
      dresses_page
    else
      t_shirts_page
    end
  end
end
