pandoc book.md --toc --listings -o book.latex
pandoc book.latex -o book.pdf --template="layout.latex" --listings --toc
pdftk cover.pdf book.pdf cat output bookcover.pdf