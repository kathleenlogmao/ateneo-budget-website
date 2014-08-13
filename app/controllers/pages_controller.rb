class PagesController < ApplicationController
  def index
    @announcements = Announcement.all
  end

  def schedule

  end

  def downloadable_form

  end

  def guidelines

  end

  def upload_forms 

  end
end