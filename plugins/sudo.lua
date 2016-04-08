local function run(msg, matches)
    if msg.text == "salam" then
      if is_sudo(msg) then
        return "💗سلام بابای💗"
      else
        return "salam mamani ^_^"
      end
    elseif msg.text == "بای" then
      if is_sudo(msg) then
        return "بای بابایی جونم "
      else
        return "خداحافظ"
      end
    elseif msg.text == "سلام" then
      if is_sudo(msg) then
        return "سلام بابای جونم فداتم☺ "
      else
        return "سلام"
        end
    elseif msg.text == "bye" then
      if is_sudo(msg) then
        return "^_^ اودافظ بابای جونم☺ "
      else
        return "خدا نگه دار"
      end
    end
end
return {
	patterns = {
"^salam",
"^بای",
"سلام",
"bye",
},
run = run,
}
