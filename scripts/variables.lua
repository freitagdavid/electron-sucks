local var_templates = {
    ["{{closed_source}}"]="❌ ${\\small{\\textsf{\\color{red}[Closed Source]}}}$",
    ["{{open_source}}"]="✅ ${\\small{\\textsf{\\color{green}[Open Source]}}}$",
    ["{{osx}}"]="![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white)",
    ["{{windows}}"]="![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)",
    ["{{linux}}"]="![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)",
}

  
function Str(s)
    if var_templates[s.text] then
        return pandoc.RawInline('markdown', var_templates[s.text])
    end
    -- if s.text == "{{closed_source}}" then
    --   return pandoc.Str("[Closed Source]")
    -- elseif s.text == "{{open_source}}" then
    --   return pandoc.Str("[Open Source]")
    -- end
    return s
  end