do
local function run(msg, matches)
if msg.to.type == 'chat' then
  if is_momod(msg) then -- Ignore mods,owner,admins
    return
  end
  local data = load_data(_config.moderation.data)
  if data[tostring(msg.to.id)]['settings']['lock_english'] then
    if data[tostring(msg.to.id)]['settings']['lock_english'] == 'yes' then
      if antienglish[msg.from.id] == true then 
        return
      end
      send_large_msg("chat#id".. msg.to.id , "به دلیل استفاده از زبان انگلیسی از گروه حذف میشوید❎")
      local name = user_print_name(msg.from)
      savelog(msg.to.id, name.." ["..msg.from.id.."] kicked (english was locked) ")
      chat_del_user('chat#id'..msg.to.id,'user#id'..msg.from.id,ok_cb,false)
		  antienglish[msg.from.id] = true
      return
    end
  end
  return
end
end
local function cron()
  antienglish = {} -- Clear antienglish table 
end
return {
  patterns = {
    "(Q)",
"(W)",
"(E)",
"(R)",
"(T)",
"(Y)",
"(U)",
"(I)",
"(O)",
"(P)",
"(A)",
"(S)",
"(D)",
"(F)",
"(G)",
"(H)",
"(J)",
"(K)",
"(L)",
"(Z)",
"(X)",
"(C)",
"(V)",
"(B)",
"(N)",
"(M)",
"(q)",
"(w)",
"(e)",
"(r)",
"(t)",
"(y)",
"(u)",
"(i)",
"(o)",
"(p)",
"(a)",
"(s)",
"(d)",
"(f)",
"(g)",
"(h)",
"(j)",
"(k)",
"(l)",
"(z)",
"(x)",
"(c)",
"(v)",
"(b)",
"(n)",
"(m)",
    },
  run = run,
	cron = cron
}

end

