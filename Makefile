all: opensuse_usernames.pdf opensuse_usernames.html

.txt.pdf:
	a2x -v\
		--dblatex-opts="-P draft.mode=yes" \
		--dblatex-opts="-P draft.watermark=1" \
		--dblatex-opts="-P doc.publisher.show=0" \
		$<

.txt.html:
	a2x -f xhtml -v\
		--dblatex-opts="-P draft.mode=yes" \
		--dblatex-opts="-P draft.watermark=1" \
		--dblatex-opts="-P doc.publisher.show=0" \
		$<

clean:
	rm ebs.pdf

.PHONY: clean
.SUFFIXES: .pdf .txt .html
