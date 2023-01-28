# mockoon-all-status-environment
A Mockoon environment with all available HTTP status.

<img width="1680" alt="Mockoon All Status Environment" src="https://user-images.githubusercontent.com/4432100/215292678-55bfec15-7472-4fc1-98c1-632d7ede2286.png">

## Usage

Just open `All Status.json` environment file in Mockoon app.

Start server for the environment and visit `http://localhost:3005/status/xxx` where `xxx` is the expected status code.

For example, if you wish to get a 500 Internal Server Error, visit `http://localhost:3005/status/500`

You can change the port from `3005` to something else from environment settings.

## Modifying the Environment.

`Mockoon Status Environment.swift` is a swift program file that can be used to generate more or fewer routes.

The program will generate `folders`, `routes` and `rootChildren` key-values based on the specified input. You can replace these key-values in the environment `.json` file.
