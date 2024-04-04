# Easy in-class Quiz

This repo shows how to make a 1-page multiple choice quiz in Markdown. The quiz is designed to be printed on a single sheet of paper, front and back. The front side has the instructions and the back side has the questions.
See [this example output](https://github.com/kljensen/easy-in-class-quiz/blob/main/docs/example-output.pdf)

## Motivation

1. I'm giving more in-class quizzes these days due to the prevalence
   of generative AI. 
2. I want to use as few trees as possible.
3. I want to write my quiz questions in Markdown but typeset them in LaTeX.

Markdown is better than
LaTeX because it makes it easier for me, TAs, and AI to write my
quiz questions.

## Requirements

You'll need `latex`, `pandoc`, `grep`, and `make` on your system.

## Running

Customize `quiz.md` with your own questions. These look like this:

```markdown
8. What is common about git and blockchains? 
- They both use a Merkle tree. (*)
- They both use a linked list.
- They both are implemented in Python.
- They both use SQL under the hood.
```

The correct answer is marked with `(*)`.

Customize your instructions in `instructions.md`. This can be 
whatever you want in valid markdown, though the template assumes
it will fit in about a a quarter of a page.

To generate the PDF, run `make`. The output will be in `quiz.pdf`.

Obviously, you should customize the LaTeX template to your liking.
This is just an example of how to get started. Good luck!
