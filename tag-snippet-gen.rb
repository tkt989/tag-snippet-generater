
noClosingTag = [
                "area",
                "base",
                "br",
                "col",
                "command",
                "embed",
                "hr",
                "img",
                "input",
                "link",
                "meta",
                "param",
                "source"
               ]

template = IO.read("template")
templateNoClosingTag = IO.read("templateNoClosingTag")

IO.read("tags").lines do |tag|
  tag.chomp!
  temp = template
  if noClosingTag.include? tag then
    temp = templateNoClosingTag
  end
  IO.write("html-mode/#{tag}", temp.gsub("%s", tag))
end
