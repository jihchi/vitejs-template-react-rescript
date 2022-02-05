open Vitest
open TestHelpers
open TestHelpers.ReactTestingLibrary;

describe("App", () => {
  test("renders component without crashing", t => {
    t->hasAssertions(1)
    render(<App />)
    screen->getByText("Hello Vite + React + ReScript!")->expect->JsDom.toBeInTheDocument
  })
})
