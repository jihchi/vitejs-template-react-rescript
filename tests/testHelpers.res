module ReactTestingLibrary = {
  @module("@testing-library/react")
  external render: React.element => unit = "render"

  type renderResult
  @module("@testing-library/react")
  external screen: renderResult = "screen"

  @send external getByText: (renderResult, string) => Webapi.Dom.Element.t = "getByText"
}

module JsDom = {
  @send
  external toBeInTheDocument: Vitest.expected<Webapi.Dom.Element.t> => unit = "toBeInTheDocument"
}
