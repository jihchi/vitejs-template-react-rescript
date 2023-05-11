open Vitest
open Bindings
open ReactTestingLibrary
open JsDom

testAsync("renders component without crashing", async t => {
  t->assertions(1)
  render(<App />)
  (await screen->findByText("Hello Vite + React + ReScript!"))->ignore
  screen->getByText("count is: 0")->expect->toBeInTheDocument
})
