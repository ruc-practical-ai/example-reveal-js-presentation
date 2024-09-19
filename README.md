# Example Presentations with Reveal.js

This repository shows how to create presentations in [reveal.js](https://revealjs.com/) and serve them locally or via codespaces.

## Installation and Usage

### Installation and Use via Github Codespaces (Recommended)

To use this repository via codespaces simply click on the `code` &rarr; `codespaces` &rarr; `create codespace on main` buttons.

Optionally, if it is desired to work in desktop VS Code, once the codespace is open in the browser, click the three bars in the top left corner and select `Open in VS Code Desktop`.

Navigate to the `presentations` folder.

```bash
cd presentations
```

Start an http-server.

```bash
bash ../scripts/start_server.sh
```

### Dependencies for Local Installation

This project is built on [reveal.js](https://revealjs.com/). All reveal.js dependencies are included in the repository. The repository itself is a modified [basic setup](https://revealjs.com/installation/#basic-setup) of reveal.js.

### Local Installation

To install locally, first install the required dependencies (Poetry and texlive), then clone the repository and navigate to its directory.

```bash
git clone https://github.com/ruc-practical-ai/example-reveal-js-presentation.git
cd example-reveal-js-presentation
```

#### Viewing HTML Pages Directly in a Browser

To view HTML pages directly in a browser, simply navigate to the pages of interest and open them with a preferred web browser.

## License

This repository is provided with an MIT license. See the `LICENSE` file.

## Contributing

Please email Mauro Sanchirico at ms3978@camden.rutgers.edu (academic) or sanchirico.mauro@gmail.com (personal) with questions, comments, bug reports, or suggestions for improvement.
