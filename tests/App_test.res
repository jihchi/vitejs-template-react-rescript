open Vitest
open TestHelpers

test("renders component without crashing", t => {
  open ReactTestingLibrary
  open JsDom

  t->assertions(1)
  render(<App />)
  screen->getByText("Hello Vite + React + ReScript!")->expect->toBeInTheDocument
})
