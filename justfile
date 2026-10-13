standard := "ua-1,a-3a"
file := "Git_Masterclass.typ"

# Build pdf timestamped against latest git commit
pdf:
    @SOURCE_DATE_EPOCH=$(git log -1 --pretty=%ct) typst compile {{file}} --pdf-standard {{standard}} Git_Masterclass.pdf
# This ensures it's bit-for-bit the same

watch:
    @typst watch {{file}} --pdf-standard {{standard}}
