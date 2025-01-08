gen-d:
	docker compose build --parallel
	docker compose up -d
	docker compose exec tex platex -output-directory=build zenkoku.tex
	docker compose exec tex platex -output-directory=build zenkoku.tex
	docker compose exec tex dvipdfmx -o build/zenkoku87.pdf build/zenkoku.dvi
clean:
	rm -rf build/zenkoku.aux
	rm -rf build/zenkoku.dvi
	rm -rf build/zenkoku.log
	rm -rf build/zenkoku87.pdf
