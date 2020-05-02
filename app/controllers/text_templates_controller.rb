class TextTemplatesController < ApplicationController

  def index
    @text_templates = current_user.text_templates
  end

  def new
  end

  def preview
    @text_template = current_user.text_templates.new

    @text_template.body = params[:text_template][:body]
    @text_template.send_at = params[:text_template][:send_at] + " EST"
  end

  def create
  end

  def destroy
  end

  private

  def text_template_params
    params.require(:text_template).permit(:body, :send_at)
  end
end
