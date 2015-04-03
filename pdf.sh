pandoc src/book.md --toc --listings -o src/book.tmp.latex
pandoc src/book.tmp.latex -o src/book.tmp.pdf --template="src/layout.latex" --listings --toc
pdftk src/cover.pdf src/book.tmp.pdf cat output pkg/book.pdf
rm src/book.tmp.pdf src/book.tmp.latex
