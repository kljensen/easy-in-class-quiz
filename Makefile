
all: quiz.pdf

instructions.tex: instructions.md
	pandoc instructions.md -t latex -o instructions.tex

quiz.tex: quiz.md pandoc-quiz-template.tex quiz-filter.lua instructions.tex
	$(eval QUESTION_COUNT=$(shell grep -cE '^[0-9]+\.' quiz.md))
	pandoc quiz.md -o quiz.tex \
		--metadata=total_questions:${QUESTION_COUNT} \
		--lua-filter=./quiz-filter.lua \
		--template=./pandoc-quiz-template.tex --pdf-engine=lualatex

quiz.pdf: quiz.tex
	latex quiz.tex
	latex quiz.tex
