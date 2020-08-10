## Interface *for Azure CLI*

## Contents:

1. Requirements
2. Introduction
2. Installation
3. Basic Usage
4. Further examples
5. Rebuilding the API

## Requirements

### MathWorks Products (http://www.mathworks.com)
Requires MATLAB R2016a or later. No special toolboxes necessary.

### 3rd Party Products
* Microsoft Azure™ command line client, [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest).


## Introduction
This software is a very thin wrapper on top of the Azure command line client.
It allows interacting with Azure resources, from within MATLAB, similarly to the way
it's done from the command line.

## Installation

Make sure to have the Azure CLI installed for the operating system being used.
Further information can be found here:
[https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli?view=azure-cli-latest](https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli?view=azure-cli-latest)

Run the `startup.m` file provided with this package.

## Basic usage
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


## Further examples
The examples shown so far are very straightforward, and do not provide a big advantage compared
to a simple system command, e.g. `[r, s] = system('az group list')`.
If setting up a more complex system, however, and relying on values from previous 
steps for what to do next, using this package can make those tasks easier.

Here follows a few simple example, that can be a starting point for building more 
complex workflows.

### Create a new resource group if it doesn't already exist
The following is a simple function that given a name, a location and a tag, will
create a resource group. If the group already exists, it will just `show` this group.
The group structure, converted from the JSON output, will be returned to the user.

```matlab
function RG = resourceGroupCreateIfNotExists(rgName, location, tags)
    rge = az.group.exists();
    rge.name(rgName);
    ok = rge.run();
    if ok
        % The resource group already exists
        rgs = az.group.show();
        rgs.name(rgName);
        RG = rgs.run();
    else
        % The group doesn't exist - create it
        rgc = az.group.create();
        rgc.name(rgName);
        rgc.location(location);
        if nargin > 2
            rgc.tags(tags);
        end
        RG = rgc.run();
    end
end
```

### Create a Kubernetes cluster (AKS)
The following example is present in `Software/MATLAB/public/examples` as a live script,
but is also described shortly here.

#### Create some variables
First, create some basic variables for names to use
```matlab
LOCATION='westeurope';
RESGROUP='myaks2-rg';
CLUSTERNAME='aks2';
TAG='owner=''somer:user''';
ACR='adpftwesteu';
STORAGE='storagemyaks2';
```

#### Create the Resource Group
```matlab
agc = az.group.create();
agc.location(LOCATION);
agc.name(RESGROUP);
agc.tags(TAG);
S.RG = agc.run();
```

#### Create a service principal
A service principal can be created automatically by the cluster creation command,
but sometimes the propagation of the service principal is too slow, and the cluster
cannot be created. To prevent this, create the service principal explicitly, and
wait a little before creating the cluster.
```matlab
ascfr = az.ad.sp.create_for_rbac();
ascfr.skip_assignment();
ascfr.name(CLUSTERNAME);
S.SP = ascfr.run();
fprintf('Pausing, waiting for this service principal to propagate ...');
pause(20);
fprintf(' done!\n');
```

#### Create the cluster
This operation runs for a rather long time, as many resources must be set up. It's also an example with many options for scale,
security, etc., so this will vary strongly for different users.
```matlab
aksc = az.aks.create();
aksc.resource_group(RESGROUP);
aksc.name(CLUSTERNAME);
aksc.enable_cluster_autoscaler();
aksc.min_count(2);
aksc.max_count(4);
aksc.tags(TAG);
aksc.service_principal(S.SP.appId);
aksc.client_secret(S.SP.password);
S.AKS = aksc.run();
```

#### Get the credentials 
Get the credentials from Azure to make kubectl work from the commandline
```matlab
ak8sgc = az.aks.get_credentials();
ak8sgc.resource_group(S.RG.name);
ak8sgc.name(S.AKS.name);
Q = ak8sgc.run();
```

#### Create a storage in the same resource group
Create a storage account in the same resource group to use from Kubernetes. Note that the nodes of the Kubernetes cluster runs in a specific resource group, that is automatically created. It can be found in
`S.AKS.nodeResourceGroup`.
Now create the storage
```matlab
storage = az.storage.account.create();
storage.name(STORAGE);
storage.resource_group(S.AKS.nodeResourceGroup);
storage.tags(TAG);
storage.sku('Standard_RAGRS');
storage.kind('StorageV2');
S.Storage = storage.run();
```

#### Create a share in the storage
A share can be created in the storage. A volume can be mounted through this share
```matlab
% Create ctf share
ctf = az.storage.share.create();
ctf.account_name(STORAGE);
ctf.name('apps');
ctf.quota('16'); % 16GB
S.StorageApps = ctf.run();
```
#### Accessing the storage from the cluster
In order to access the storage in the Kubernetes deployment, some access
information is needed, which is typically stored as secrets in a cluster. This can be done automatically from here. This assumes that kubectl is installed on the machine.
First retrieve the storage keys
```matlab
sakl=az.storage.account.keys.list();
sakl.account_name(STORAGE);
S.StorageKeys = sakl.run();
```
After this, execute the code for creating a secret with this information
```matlab
str=sprintf(['kubectl create secret generic myappstorage', ...
    ' --from-literal=azurestorageaccountname=%s', ...
    ' --from-literal=azurestorageaccountkey=%s'], ...
    STORAGE, S.StorageKeys(1).value);
[r,s] = system(str)
```
There is now a secret in the cluster, that can be used by deployments to access the share.

## Verbosity
The results from the Azure CLI can be rather lengthy and verbose, but the default setting
is to not show the output. If there is a need to show the output in the MATLAB command window,
e.g. if there is a command that requires an interactive answer to a question, it can be turned on.

To check the verbosity:
```
>> azure.verbose
ans =
  logical
   0
```

To set verbosity:
```
>> azure.verbose(1)
>> azure.verbose
ans =
  logical
   1
```

The verbosity can only be on or off.

## Rebuilding
The Azure CLI gets updated every now and then, so to keep this library up to date with the current version, the MATLAB code has to
be regenerated.

The process consists of two steps. 
* Create a MATLAB structure from all `az` help
* Generate MATLAB packages, classes and functions that use the Azure CLI.

To create the MATLAB structure, simply run the command
```matlab
S = azure.parseHelpContent;
```

This is a rather lengthy operation, between 40 minutes and 2 hours, so let it run in
the background, and save the results to a MATLAB `.MAT` file afterwards, if
there should be a need to reuse this information.

The structure may contain errors, so it's a good idea to search for errors in the generated
structure `S`. This can be done like this in MATLAB:
```matlab
>> E = azure.findErrorEntries(S)
E =
  0×0 empty cell array
```
If `E` is empty, as in the description above, the parsing was without (known) 
issues, and the MATLAB code can now be generated. If `E` wasn't empty, there is 
probably an error with changed output from the Azure
help commands.

To generate the MATLAB code, simply run the command
```matlab
azure.generate.generateCode(S);
```
This should be done in about 20 seconds, and will generate all
needed code.

**Note** The Azure CLI does change now and then, and this can break
the functionality of the parsing/file generation tools. Please report this if there are any issues.

[//]: #  (Copyright 2020 The MathWorks, Inc.)
