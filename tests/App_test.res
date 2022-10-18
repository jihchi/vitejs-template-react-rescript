open Vitest
open TestHelpers
open ReactTestingLibrary
open JsDom

test("renders component without crashing", t => {
  t->assertions(1)
  render(<App />)
  screen->getByText("Hello Vite + React + ReScript!")->expect->toBeInTheDocument
})

testPromise("generate a random number", async t => {
  t->assertions(1)
  render(<App />)
  let v = await findByText(screen, "count is ")
  v->expect->toBeInTheDocument
})
