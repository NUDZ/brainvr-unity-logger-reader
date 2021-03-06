egoallobva_trial_info = function(test, trialID, dt_player){
  ls <- list()
  times <- get_trial_timewindow(test, trialID)
  ls$duration <- times$finish - times$start
  ls$distances <- egoallobva.get_trial_distance(dt_player, times, test = test, trialID = trialID)
  ls$point <- egoallobva.get_trial_pointing(dt_player, test = test, trialID = trialID)
  ls$type <- egoallobva.get_trial_type(test, trialID)
  return(ls)
}