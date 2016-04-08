local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_pars'] == 'yes' then


if not is_momod(msg) then


chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msg = 'You cannot use PARS words here . Bye ! '
   local receiver = msg.to.id
    send_large_msg('chat#id'..receiver, msgads.."\n", ok_cb, false)

      end
   end


return {
patterns = {
"[ص](.*)",
"[ث](.*)",
"[ق](.*)",
"[ف](.*)",
"[ع](.*)",
"[ه](.*)",
"[خ](.*)",
"[ح](.*)",
"[ج](.*)",
"[چ](.*)",
"[ش](.*)",
"[س](.*)",
"[ی](.*)",
"[ب](.*)",
"[ل](.*)",
"[ا](.*)",
"[ت](.*)",
"[ن](.*)",
"[م](.*)",
"[پ](.*)",
"[ط](.*)",
"[ز](.*)",
"[ر](.*)",
"[د](.*)",
"[و](.*)",
"[ک](.*)",
"[گ](.*)",
}, 
run = run
}
end
