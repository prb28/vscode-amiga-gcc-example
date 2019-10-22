# vscode-amiga-gcc-example
Workspace to build and debug C programs with the bebbo's [amiga-gcc](https://github.com/bebbo/amiga-gcc) build tools.

![Debug example](images/debug.gif)

The tools are expected to be installed in the workspace in the folder *amiga-gcc*.

Please configure the Makefile, and all vscode files in .vscode to change it.

## Getting started
### Preparing the workspace
- Install Visual Studio Code
- Install C/C++ extension and amiga assembly extension.
- Clone this project: https://github.com/prb28/vscode-amiga-gcc-example
- add all the bebbo's gcc binaries in the **build-gcc** directory: https://github.com/bebbo/amiga-gcc
- Get the **bin** dir from the latest release of amiga assembly https://github.com/prb28/vscode-amiga-assembly/releases, select it according to you os.
- Build your workspace with ctrl (or cmd) / shift / B -> it runs the makefile. You'll have a new amiga binary in the fs-uae dir : fs-uae/hd0/hello.
- Place a breakpoint in the hello.c file.

### Running the test
- Run the `Run` debug configuration: FS_UAE starts and waits for debugging with `bgdbserver` command.
- Launch the `Debug` to connect and start debugging
