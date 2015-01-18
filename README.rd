== README
Purpose : To Manage chronic pain

to do:

set up devise to register users
check pain types and places -> fill select fields
build the User Moods Form
build the User conditions form
set up assotiations for models
progress uml diagram for painmanager
refactor gemfile
add kickcharts to gemfile

pain placement and other actions to relieve pain name field add javascript to add more fields

Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

form fields for pain records
==================================
      xxxxxxxxxxxxx
      <tr>
        <td><%= f.label  :did_you_have_pain_today? %></td>
        <td><%= f.label  :did_you_have_pain_today? , "Yes", :value => "Yes" %><%= f.radio_button :had_pain_today, "Had Pain"  %><br>
          <%= f.label  :did_you_have_pain_today? , "No" , :value => "Yes" %></bt><%= f.radio_button :had_pain_today, "No Pain",  :checked => true   %></td>
      </tr>
      <tr>
        <td><%= f.label  :limited_activities,
                         'Did you avoid or limit any of your activities or cancel plans today
                          because of pain or changes in your pain?' %><br></td>
        <td><%= f.label  :limited_activities? , "Yes", :value => "Yes" %><%= f.radio_button :limited_activities, "Limited"  %><br>
          <%= f.label  :limited_activities? , "No" %></bt><%= f.radio_button :limited_activities, "Not limited ",  :checked => true   %></td>
      </tr>
      <tr>
        <td></td>
      </tr>
      <tr>
        <td> <%= f.label  :all_medicines_taken,
                          'Did you take all your pain medicine today according to
                          instructions?' %><br></td>
        <td><%= f.label  :all_medicines_taken? , "Yes", :value => "Yes" %><%= f.radio_button :all_medicines_taken, "Taken"  %><br>
          <%= f.label  :all_medicines_taken? , "No" %></bt><%= f.radio_button :all_medicines_taken, "Missed",  :checked => true   %></td>
      </tr>
      <tr>
        <td><%= f.label  :unrelieved_pain,
                         'Even though you took your pain medicine for persistent pain on
                          schedule , were there times during the day that you experienced
                          unrelieved breakthrough pain? ' %></td>
        <td><%= f.label  :unrelieved_pain? , "Yes", :value => "Yes" %><%= f.radio_button :unrelieved_pain, "Unrelieved"  %><br>
          <%= f.label  :unrelieved_pain? , "No" %></bt><%= f.radio_button :unrelieved_pain, "No",  :checked => true   %></td>
      </tr>
      <tr>
        <td></td>
        <td><%= f.label  :how_often_unrelieved_pain,'How many times did this happen today?' %><br><%= f.select :how_often_unrelieved_pain, [['1','1'],
                                                                                                                                            ['2','2'],
                                                                                                                                            ['3','3'],
                                                                                                                                            ['4','4'],
                                                                                                                                            ['5','5'],
                                                                                                                                            ['6','6'],
                                                                                                                                            ['7','7'],
                                                                                                                                            ['8','8'],
                                                                                                                                            ['9','9'],
                                                                                                                                            ['10','10'],
                                                                                                                                            ['more than 10','11']


        ]  %></td>
      </tr>
      <tr>
        <td><%= f.label  :is_activity_starting_pain,
                         'Did any specic activity start your breakthrough pain?' %></td>
        <td><%= f.label  :is_activity_starting_pain? , "Yes", :value => "Yes" %><%= f.radio_button :is_activity_starting_pain, "Yes"  %><br>
          <%= f.label  :is_activity_starting_pain? , "No" %></bt><%= f.radio_button :is_activity_starting_pain, "No",  :checked => true   %></td>
      </tr>
      <tr>
        <td></td>
        <td><%= f.label :activity_starting_pain_name,'What activity?' %><br>
          <%= f.text_field :activity_starting_pain_name %></td>
      </tr>
      <tr>
        <td>
          <%= f.label  :average_pain_level,'What was your average level of pain today?' %><br>


        </td>
        <td>
          <%= f.select :average_pain_level, [['1','1'],
                                             ['2','2'],
                                             ['3','3'],
                                             ['4','4'],
                                             ['5','5'],
                                             ['6','6'],
                                             ['7','7'],
                                             ['8','8'],
                                             ['9','9'],
                                             ['10','10']



          ]  %>
        </td>
      </tr>
      <tr>
        <td><%= f.label  :used_other_actions_to_relieve_pain,
                         'Other than prescription medicine, did you do anything else today
                          to relieve the pain? ' %></td>
        <td><%= f.label  :used_other_actions_to_relieve_pain? , "Yes", :value => "Yes" %><%= f.radio_button :used_other_actions_to_relieve_pain, "Yes"  %><br>
          <%= f.label  :used_other_actions_to_relieve_pain? , "No" %></bt><%= f.radio_button :used_other_actions_to_relieve_pain, "No",  :checked => true   %></td>
      </tr>
      <tr>
        <td></td>
        <td><%= f.label :other_actions_to_relieve_pain_name, 'Note any that you used.' %><br>
          <%= f.text_area :other_actions_to_relieve_pain_name %></td>
      </tr>
      <tr>
        <td><%= f.label :pain_placement, 'Where did you have pain?' %></td>
        <td><%= f.text_field :pain_placement %></td>
      </tr>
      <tr>
        <td><%= f.label :side_effects_after_pain_medicine, 'Select any of these common side effects that you’ve noticed
after taking your pain medicine.' %></td>
        <td> <%= f.select :side_effects_after_pain_medicine,
                          [
                                  ['Drowsiness, sleepiness','1'],
                                  ['Nausea, vomiting, upset stomach','2'],
                                  ['Constipation ','3'],
                                  ['Lack of appetite','4'],
                                  ['Other ','5'],
                                  ['None ','6']


                          ], { :multiple => true, :size => 5 } %></td>
      </tr>
      <tr>
        <td><%= f.label  :skipped_medicines,
                         'Did you skip any of your scheduled pain medicines today? ' %></td>
        <td><%= f.label  :skipped_medicines? , "Yes", :value => "Yes" %><%= f.radio_button :skipped_medicines, "Yes"  %><br>
          <%= f.label  :skipped_medicines? , "No" %></bt><%= f.radio_button :skipped_medicines, "No",  :checked => true   %></td>
      </tr>
      <tr>
        <td></td>
        <td><%= f.label :skipped_medicines_why, 'Why?' %><br>
          <%= f.text_area :skipped_medicines_why %></td>
      </tr>
      <tr>
        <td><%= f.label  :called_doctor_because_of_pain,
                         'Did you call your doctor’s ofce or clinic between visits because
                          of pain?  ' %></td>
        <td> <%= f.label  :called_doctor_because_of_pain? , "Yes", :value => "Yes" %><%= f.radio_button :called_doctor_because_of_pain, "Yes"  %><br>
          <%= f.label  :called_doctor_because_of_pain? , "No" %></bt><%= f.radio_button :called_doctor_because_of_pain, "No",  :checked => true   %></td>
      </tr>
      <tr>
        <td><%= f.label  :slept_through_night,
                         'Did you sleep through the night? ' %></td>
        <td><%= f.label  :slept_through_night? , "Yes", :value => "Yes" %><%= f.radio_button :slept_through_night, "Yes"  %><br>
          <%= f.label  :slept_through_night? , "No" %></bt><%= f.radio_button :slept_through_night, "No",  :checked => true   %></td>
      </tr>
      <tr>
        <td></td>
        <td><%= f.label  :slept_through_night_disrupted_times,'If not, how many times was your sleep disrupted?' %><br>

          <%= f.select :slept_through_night_disrupted_times, [['1','1'],
                                                              ['2','2'],
                                                              ['3','3'],
                                                              ['4','4'],
                                                              ['5','5'],
                                                              ['6','6'],
                                                              ['7','7'],
                                                              ['8','8'],
                                                              ['9','9'],
                                                              ['10','10']



          ]  %></td>
      </tr>
      <tr>
        <td></td>
        <td> <%= f.label  :slept_hours_night,'How many hours did you sleep during the night??' %><br>

          <%= f.select :slept_hours_night, [['1','1'],
                                            ['2','2'],
                                            ['3','3'],
                                            ['4','4'],
                                            ['5','5'],
                                            ['6','6'],
                                            ['7','7'],
                                            ['8','8'],
                                            ['9','9'],
                                            ['10','10']



          ]  %></td>
      </tr>
      <tr>
        <td><%= f.label  :satisfied_with_pain_management,
                         'Overall, are you satisfied with your pain management?' %></td>
        <td><%= f.label  :satisfied_with_pain_management? , "Yes", :value => "Yes" %><%= f.radio_button :satisfied_with_pain_management, "Yes"  %><br>
          <%= f.label  :satisfied_with_pain_management? , "No" %></bt><%= f.radio_button :satisfied_with_pain_management, "No",  :checked => true   %></td>
      </tr>
      <tr>
        <td><%= f.label :why_satisfied_or_not, '(Explain what makes you satisfed or not satised.
                                               Use Log section.' %></td>
        <td><%= f.text_area :why_satisfied_or_not %></td>
      </tr>
      <tr>
        <td></td>
        <td> <%= f.label  :acceptable_pain_level,'What pain level overall would you find acceptable?' %><br>

          <%= f.select :acceptable_pain_level, [['1','1'],
                                                ['2','2'],
                                                ['3','3'],
                                                ['4','4'],
                                                ['5','5'],
                                                ['6','6'],
                                                ['7','7'],
                                                ['8','8'],
                                                ['9','9'],
                                                ['10','10']



          ]  %></td>
      </tr>
      =======================================================
