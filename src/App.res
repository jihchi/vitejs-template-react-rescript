@module("./logo.svg") external logo: string = "default"
%%raw(`import './App.css'`)

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  <div className="App">
    <header className="App-header">
      <img src={logo} className="App-logo" alt="logo" />
      <p> {"Hello Vite + React + ReScript!"->React.string} </p>
      <p className="my-6">
        // the button style comes from https://tailwind-elements.com/docs/standard/components/buttons/#neutral
        <button className="inline-block rounded bg-neutral-50 px-6 pb-2 pt-2.5 text-sm font-medium uppercase leading-normal text-neutral-800 shadow-[0_4px_9px_-4px_#cbcbcb] transition duration-150 ease-in-out hover:bg-neutral-100 hover:shadow-[0_8px_9px_-4px_rgba(203,203,203,0.3),0_4px_18px_0_rgba(203,203,203,0.2)] focus:bg-neutral-100 focus:shadow-[0_8px_9px_-4px_rgba(203,203,203,0.3),0_4px_18px_0_rgba(203,203,203,0.2)] focus:outline-none focus:ring-0 active:bg-neutral-200 active:shadow-[0_8px_9px_-4px_rgba(203,203,203,0.3),0_4px_18px_0_rgba(203,203,203,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(251,251,251,0.3)] dark:hover:shadow-[0_8px_9px_-4px_rgba(251,251,251,0.1),0_4px_18px_0_rgba(251,251,251,0.05)] dark:focus:shadow-[0_8px_9px_-4px_rgba(251,251,251,0.1),0_4px_18px_0_rgba(251,251,251,0.05)] dark:active:shadow-[0_8px_9px_-4px_rgba(251,251,251,0.1),0_4px_18px_0_rgba(251,251,251,0.05)]" onClick={_e => setCount(count => count + 1)}>
          {`count is: ${count->Int.toString}`->React.string}
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
