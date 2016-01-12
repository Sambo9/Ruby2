#!/usr/bin ruby

def display_yesterdays_time
  _currentTime = Time.now - (3600 * 24)
  print "Yesterday we were #{_currentTime.strftime('%A')} #{_currentTime.strftime('%d')} #{_currentTime.strftime('%B')} #{_currentTime.strftime('%Y')} and it was #{_currentTime.strftime('%H')} hours and #{_currentTime.strftime('%M')} minutes at the same time."
end
