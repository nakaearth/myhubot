hellos = [
    "Well hello there, %",
    "Hey %, Hello!",
    "Marnin', %",
    "Good day, %",
    "Good 'aye!, %"
]
mornings = [
    "Good morning, %",
    "Good morning to you too, %",
    "Good day, %",
    "Good 'aye!, %"
]
module.exports = (robot) ->
    robot.hear /(hello|good( [d'])?ay(e)?)/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^(good )?m(a|o)rnin(g)?)/i, (msg) ->
        hello = msg.random mornings
        msg.send hello.replace "%", msg.message.user.name

