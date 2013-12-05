prettyTime = (time) ->
  "#{time.getHours()}:#{time.getMinutes()}:#{time.getSeconds()}"

updateTime = (time) ->
  $("#time").text prettyTime(time)

currentTime = null

initialSetup = ->
  currentTime = new Date()
  updateTime currentTime

incrementTime = (seconds) ->
  currentTime = new Date(currentTime.getTime() + seconds*1000);

showTimeOnce = ->
  incrementTime 1
  updateTime currentTime

showTime = ->
  setInterval showTimeOnce,1000

setupClickEvent = ->
  $("a#add-minute").click ->
    incrementTime 60

$(initialSetup)
$(showTime)
$(setupClickEvent)