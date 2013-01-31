class Spree::Admin::PostsController < Spree::Admin::ResourceController
  def destroy
    @post = Spree::Post.find(params[:id])
    @post.delete

    flash.notice = I18n.t('notice_messages.post_deleted')

    respond_with(@object) do |format|
      format.html { redirect_to collection_url }
      format.js  { render_js_for_destroy }
    end
  end
end
