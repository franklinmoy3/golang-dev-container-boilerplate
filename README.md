<div align="center">
    <h1>Golang Boilerplate With Dev Containers Config</h1>
</div>

This is a Go boilerplate project with some extra configs to bootstrap your next Go web service project.

## Table of Contents <!-- omit in toc -->

- [Stack](#stack)
- [Getting Started](#getting-started)
  - [Launching the Dev Container](#launching-the-dev-container)
    - [Note on Podman](#note-on-podman)
  - [Project Struture](#project-struture)
  - [Running the Server](#running-the-server)


## Stack

- **Go Dev Container** with `zsh` and `Oh My Zsh`
- Simple Makefile with essential build lifecycle commands
- EditorConfig file to synchronize code formatting
- [Air](https://github.com/air-verse/air) for hot-reloading of the web service during development

## Getting Started

### Launching the Dev Container

If you would like to use a dev container, first use your favorite editor/IDE to reopen the project in a dev container.
Learn more on the [official Development Containers website](https://containers.dev/supporting).

#### Note on Podman

Due to how Podman launches containers, your editor/IDE may face permission issues when configuring/attaching to the container.
To solve this, set the following in your containers config file (such as `$HOME/.config/containers/containers.conf`):

```ini
[containers]
label=false
userns="keep-id"
```

### Project Struture

This boilerplate follows the structure proposed in the
[golang-standards/project-layout GitHub repository](https://github.com/golang-standards/project-layout).
Note that this structure is not an official standard defined by the core Go team, but does follow many
of their principles from the [official documentation](https://go.dev/doc/modules/layout).

### Running the Server

To run the development server:

```bash
make run
```

The server is now running and listening to standard HTTP requests on port 8080.
Air will automatically build and hot-reload the server whenever any changes to your source code are saved.
