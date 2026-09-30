standard := "ua-1,a-3a"
file := "Git_Masterclass.typ"

watch:
    @typst watch {{file}} --pdf-standard {{standard}}
