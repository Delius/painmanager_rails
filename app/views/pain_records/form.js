$("#new_painrecord").on('page:load',function() {
    $form = $(this);
    $input_value = $form.children("#painrecord_average_pain_level").val();
    $label = $form.children("#painrecord_average_pain_level").siblings("label");
    $label.text("Current Value = " + $input_value);
})