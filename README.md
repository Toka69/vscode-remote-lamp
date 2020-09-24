# Development Containers: LAMP

This is a project to build a lamp server in a remote container linked to VSCode. It is as simple as possible, so KISS. Based on the VSCode container examples https://github.com/microsoft/vscode-dev-containers/tree/master/containers/php and the Mattrayner's project : https://github.com/mattrayner/docker-lamp

> **Note:** If you're following the quick start, you can jump to the [Things to try](#things-to-try) section.

## Setting up the development container

Follow these steps to open this sample in a container:

1. If this is your first time using a development container, please follow the [getting started steps](https://aka.ms/vscode-remote/containers/getting-started).

2. To use this repository, you can either open the repository in an isolated Docker volume:

   open a locally cloned copy of the code:

   - Clone this repository to your local filesystem.
   - Press <kbd>F1</kbd> and select the **Remote-Containers: Open Folder in Container...** command.
   - Select the cloned copy of this folder, wait for the container to start
   - From the terminal, run `bash /scripts/onBoot.sh`
   - And try things out!

## Things to try

Once you have this sample opened in a container, you'll be able to work with it like you would locally.

> **Note:** This container runs as a non-root user with sudo access by default. Comment out `"remoteUser": "vscode"` in `.devcontainer/devcontainer.json` if you'd prefer to run as root.

Some things to try:

1. **Edit:**
   - Open `index.php`
   - Try adding some code and check out the language features.
2. **Terminal:** Press <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>\`</kbd> and type `uname` and other Linux commands from the terminal window.
3. **Run and Debug:**
   - Open `index.php`
   - Add a breakpoint (e.g. on line 4).
   - Press <kbd>F5</kbd> to launch the app in the container.
   - Once the breakpoint is hit, try hovering over variables, examining locals, and more.
4. **Running a server:**
   - From the terminal, run `bash /scripts/onBoot.sh`
   - Open your browser and go to `http://localhost` and `http://localhost/phpMyAdmin`.
   - Look back at the terminal, and you should see the output from your site navigations
5. **Attach debugger to the server:**
   - Press <kbd>F1</kbd> and select the **View: Show Debug** command
   - Pick "Listen for XDebug" from the dropdown
   - Press <kbd>F5</kbd> to attach the debugger
   - Add a breakpoint to `index.php` if you haven't already
   - Reload your browser window
   - Once the breakpoint is hit, try hovering over variables, examining locals, and more.

## Contributing

This project welcomes contributions and suggestions. Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## License

Copyright © Microsoft Corporation All rights reserved.<br />
Licensed under the MIT License. See LICENSE in the project root for license information.
