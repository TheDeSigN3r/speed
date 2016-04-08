do

function run(msg, matches)
send_contact(get_receiver(msg), "+989212715410", "KING", "BOT", ok_cb, false)
end

return {
patterns = {
"^botnumber$"

},
run = run
}

end
