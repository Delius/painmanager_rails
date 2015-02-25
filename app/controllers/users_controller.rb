class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @pain_records = @user.pain_records.paginate(page: params[:page])
    @diaries  = @user.diaries.order('created_at asc').all


    # @pain_intensity_levels = @user.pain_intensity_levels.all
    # @activity_levels = @user.activity_levels.all
    respond_to do |format|
      format.html


    format.pdf do

      render :pdf => "Pain_Records_for_#{@user.user_name}_created_at_#{@user.created_at.strftime("%d/%m/%Y")}.pdf",
             :template => 'users/show.html.erb'

end
  end
    # respond_to do |format|
    #   format.html
    #
    #
    #     # format.pdf {
    #     #   html = render_to_string(:layout => 'application' , :action => "show.html.erb");
    #     #   kit = PDFKit.new(html);
    #     #   kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/application.css.scss";
    #     #   send_data(kit.to_pdf, :filename => "some_name.pdf", :type => 'application/pdf')
    #     # }
    #
    #   format.pdf  do
    #     render pdf :"test",layout:'application',template:'users/show.html.erb'
    #   end

      # html = render_to_string(:action => "show.html.erb")
        # kit = PDFKit.new(html)
        # kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/application.css.scss"
        # send_data(kit.to_pdf, :filename => 'repot.pdf', :type => 'application/pdf', :disposition => 'inline')


#         @example_text = "some text"
#         render pdf: "Pain_Records_for_#{@user.user_name}_created_at_#{@user.created_at.strftime("%d/%m/%Y")}.pdf", type: "application/pdf",
#                layout: 'show.html.erb'
#         # pdf = UserPdf.new(@user, view_context)
#         # send_data pdf.render,
#         #           filename: "Pain_Records_for_#{@user.user_name}_created_at_#{@user.created_at.strftime("%d/%m/%Y")}.pdf",
#         #           type: "application/pdf",
#         #               disposition: "inline"
# end

   end



  def user_params
    params.require(:user).permit(:user_name, :tag_list)
    end
end
