# Interface *for Azure CLI*

## Requirements

### MathWorks Products (https://www.mathworks.com)

Requires MATLAB R2016a or later.

### 3rd Party Products

* Microsoft Azure™ command line client, [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest).


## Introduction

This software is a very thin wrapper on top of the Azure command line client.
It allows interacting with Azure resources, from within MATLAB, similarly to the way
it's done from the command line.

It's very easy to shell out and do a system command in MATLAB,
e.g. `[r, s] = system('az acr list')` would perform an Azure CLI command and return
both the status of the command and the command line output, typically JSON. This is,
in fact, the exact way that this package uses the Azure CLI.

This motivation for creating this package can be summarized as follows:
* The MATLAB package provides tab completion, for easily creating command sequences.
* Tab completion is also provided for command options/parameters.
* Help is available (locally, without shelling out to the CLI) for all groups, subgroups
and commands
* The return values, in JSON, is decoded into MATLAB variables, making it easy to use
the information in subsequent commands.

## Installation

Make sure to have the Azure CLI installed for the operating system being used.
Further information can be found here:
[https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli?view=azure-cli-latest](https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli?view=azure-cli-latest)

Run the `startup.m` file provided with this package.

**Note:** The Azure CLI must already have been installed before MATLAB is started, to ensure it can be found on the path.

## Usage

This package is a thin wrapper around the Azure CLI commands. The Azure CLI is
split into a large number of groups, subgroups and commands, and the MATLAB 
implementation maps each group and subgroup to a package, and each command to a class.

*All examples here refer to *the current subscription(s) used*, i.e. only resources for these
subscriptions are visible.*

### Login
To use the Azure CLI, the user must be logged in first. If logged in through the terminal or command window, this login can be used. If not logged in, this can
be done explicitly by
```matlab
az.login().run();
```
which will open a browser and prompt for login there. If the session is unable to
open a browser window, instead run
```matlab
logIn = az.login();
logIn.use_device_code();
logIn.run();
```
and follow the instructions.

If logging in with username and password as arguments, consider
[deleting command history entries](https://www.mathworks.com/help/matlab/ref/commandhistory.html) after this.

### Simple commands
For example, to list all Azure Container Registries, run the following on the command line:
```bash
$ az acr list
```
To do this in MATLAB, first instantiate the command, optionally add options,
and then run it:

```matlab
a = az.acr.list();  % Instantiate command
a.run();            % Run the command
```
This can also be done in a single line of code, i.e.
```matlab
a = az.acr.list().run()
```

The commands also take parameters, which can be added as follows

```matlab
RGc = az.group.create();
RGc.tags('app=server');
RGc.location('eastus');
RGc.name('Server-RG');

RG = RGc.run()
Executing: az group create --tags app=server --location eastus --name Server-RG 
RG = 
  struct with fields:

            id: '/subscriptions/0<REDACTED>4/resourceGroups/Server-RG'
      location: 'eastus'
     managedBy: []
          name: 'Server-RG'
    properties: [1×1 struct]
          tags: [1×1 struct]
          type: 'Microsoft.Resources/resourceGroups'
>> 
```

As seen by the output, when there is JSON output, it will be converted to a MATLAB structure.

The different parameters are methods of the class, so tab completion will work. The 
interface is also fluent, so that it's possible to chain commands together like below. In this
case, however, the tab completion will not work except for the first method.


```matlab
RG = az.group.create() ...
    .tags('app=server') ...
    .location('eastus') ...
    .name('Server-RG') ...
    .run();
```

The Azure CLI furthermore provides help, which has been duplicated in MATLAB. To see the
help for a group, subgroup or command, just add `.help` to it, e.g.
```matlab
az.group.help()

Q = az.account.list();
Q.help
```

Please see the [documentation](Documentation/README.md) for more examples.


## License
The license for the Interface *for Azure CLI* is available in the [LICENSE.md](LICENSE.md) file in this GitHub repository.

This package uses the Microsoft Azure CLI which is licensed under a separate
[Azure CLI License](./Azure-CLI-LICENSE).
This package also contains help files that reproduce the help from the Azure CLI,
which is also licensed under the same Azure CLI license.

## Enhancement Requests

Provide suggestions for additional features or capabilities using the following link:
https://www.mathworks.com/products/reference-architectures/request-new-reference-architectures.html

## Support

Email: mwlab@mathworks.com

[//]: #  (Copyright 2019-2020 The MathWorks, Inc.)
