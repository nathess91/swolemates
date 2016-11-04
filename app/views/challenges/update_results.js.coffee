$("#challenge_result_id").empty()
  .append("<%= escape_javascript(render(:partial => @results)) %>")