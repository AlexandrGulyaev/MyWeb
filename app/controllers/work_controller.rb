class WorkController < ApplicationController
  include WorkHelper
  include WorkImage
  # require 'json'

  def index
    @images_count = Image.all.count
    @selected_theme = t('work.index.def_select_theme')
    @selected_image_name = 'Постер к эпизоду 4 "Новая надежда"'
    @values_qty = Value.all.count
    @current_locale = I18n.locale
    @themes = Theme.all.pluck(:name)

    session[:selected_theme_id] = @selected_theme # to display nothing
  end

  def choose_theme
    @themes = Theme.all.pluck(:name)
    respond_to do |format|
      format.js
      format.html
      format.json
    end
  end

  # @note: first display_theme and show first image from image array
  def display_theme
    @image_data = {}
    I18n.locale = session[:current_locale]

    current_user_id = current_user.id
    if params[:theme] == "-----"
      #theme = "Select theme to leave your answer"
      theme = t('.select_theme')
      theme_id = 1
      values_qty = Value.all.count.round
      data = { index: 0, name: 'Постер к эпизоду 4 "Новая надежда"', values_qty: values_qty,
               file: 'Poster_Episode_4.jpg', image_id: 4,
               current_user_id: current_user_id, user_valued: false,
               common_ave_value: 0, value: 0 }
    else
      theme = params[:theme]
      theme_id = Theme.find_theme_id(theme)
      data = show_image(theme_id, 0)
    end
    session[:selected_theme_id] = theme_id

    image_data(theme, data)
  end
end
