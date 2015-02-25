class UserPdf < Prawn::Document
  def initialize(user, view)
    super()
    @user = user
    @view = view
    text "Painrecord for  #{@user.user_name.capitalize}"
    diary_report
  end

  def diary_report
    @user.diaries.each do |diary|
      y_position = cursor - 50
      bounding_box([0, y_position], :width => 500, :height => 350) do
        transparent(0.5) { stroke_bounds }
        move_down 10
        text "NR: #{diary.id} created at: #{diary.created_at.strftime("%d/%m/%Y")}",
             indent_paragraphs: 10
        move_down 15
        y_position = cursor - 10
        bounding_box([10, y_position], :width => 100, :height => 150) do
          transparent(0.5) { stroke_bounds }
          move_down 20
          diary.pain_onset_trackers.each do |pain_onset|
            text "Pain Onset Speed #{pain_onset.pain_onset_speed}",
                 indent_paragraphs: 10
          end
        end
      end
    end
  end
end