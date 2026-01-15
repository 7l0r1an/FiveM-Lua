RegisterCommand("help", function()
    msg("Server's Discord: discord.gg/example")
    msg("Website: www.example.com")
    msg("For support, contact an admin or visit our forums.")
    msg("Enjoy your stay!")
end, false)

function msg(text)
    TriggerEvent("chatMessage", "[Bot]", {255,0,0}, text)
end