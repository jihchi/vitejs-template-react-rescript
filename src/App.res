@module("./logo.svg") external logo: string = "default"
%%raw(`import './App.css'`)

let generateRandom = async base => {
  let random = await Promise.make((resolve, _reject) => {
    Js.Global.setTimeout(() => {
      resolve(. Js.Math.random_int(1, 100))
    }, Js.Math.random_int(1, 3) * 1000)->ignore
  })
  base * random
}

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  React.useEffect0(() => {
    generateRandom(1000)
    ->Promise.then(random => {
      setCount(count => count + random)
      Promise.resolve(count)
    })
    ->ignore

    None
  })

  <div className="App">
    <header className="App-header">
      <img src={logo} className="App-logo" alt="logo" />
      <p> {"Hello Vite + React + ReScript!"->React.string} </p>
      <p>
        <button onClick={_e => setCount(count => count + 1)}>
          {`count is: ${count->Belt.Int.toString}`->React.string}
        </button>
      </p>
      <p>
        {"Edit "->React.string}
        <code> {"App.res"->React.string} </code>
        {" and save to test HMR updates."->React.string}
      </p>
      <p>
        <a
          className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">
          {"Learn React"->React.string}
        </a>
        {" | "->React.string}
        <a
          className="App-link"
          href="https://vitejs.dev/guide/features.html"
          target="_blank"
          rel="noopener noreferrer">
          {"Vite Docs"->React.string}
        </a>
        {" | "->React.string}
        <a
          className="App-link"
          href="https://rescript-lang.org/docs/react/latest/introduction"
          target="_blank"
          rel="noopener noreferrer">
          {"ReScript Docs"->React.string}
        </a>
      </p>
    </header>
  </div>
}
