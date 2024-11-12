local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  print("Couldn't find comments plugin!")
  return
end

comment.setup{}

