classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az lab vm create : Create a VM in a lab.
            % Command group 'lab' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az lab vm create ';
        end
        function this = lab_name(this, varargin)
            % Name of the lab.
            this.Options = [this.Options, '--lab-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the virtual machine.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = allow_claim(this, varargin)
            % Flag indicating if the VM should be created as claimable.
            this.Options = [this.Options, '--allow-claim', varargin{:}];
        end

        function this = artifacts(this, varargin)
            % JSON encoded array of artifacts to be applied. Use '@{file}' to load from a file.
            this.Options = [this.Options, '--artifacts', varargin{:}];
        end

        function this = disk_type(this, varargin)
            % Storage type to use for virtual machine.
            this.Options = [this.Options, '--disk-type', varargin{:}];
        end

        function this = expiration_date(this, varargin)
            % The expiration date in UTC(yyyy-MM-ddTHH:mm:ss) for the VM.
            this.Options = [this.Options, '--expiration-date', varargin{:}];
        end

        function this = formula(this, varargin)
            % Name of the formula. Use `az lab formula list` for available formulas. Use `az lab formula` with the `--export-artifacts` flag to export and update artifacts, then pass the results via the `--artifacts` argument.
            this.Options = [this.Options, '--formula', varargin{:}];
        end

        function this = generate_ssh_keys(this, varargin)
            % Generate SSH public and private key files if missing.
            this.Options = [this.Options, '--generate-ssh-keys', varargin{:}];
        end

        function this = image(this, varargin)
            % The name of the operating system image (gallery image name or custom image name/ID). Use `az lab gallery-image list` for available gallery images or `az lab custom-image list` for available custom images.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = image_type(this, varargin)
            % Type of the image. Allowed values are: gallery, custom.
            this.Options = [this.Options, '--image-type', varargin{:}];
        end

        function this = notes(this, varargin)
            % Notes for the virtual machine.
            this.Options = [this.Options, '--notes', varargin{:}];
        end

        function this = size_(this, varargin)
            % The size of the VM to be created. See https://azure.microsoft.com/pricing/details/virtual-machines/ for size info.
            this.Options = [this.Options, '--size', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags in `key[=value]` format. Tags may be cleared by assigning the empty value "" to them. Authentication Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = admin_password(this, varargin)
            % Password for the VM admin.
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = admin_username(this, varargin)
            % Username for the VM admin.  Default: <username>.
            this.Options = [this.Options, '--admin-username', varargin{:}];
        end

        function this = authentication_type(this, varargin)
            % Type of authentication allowed for the VM. Allowed values are: password, ssh.  Default: password.
            this.Options = [this.Options, '--authentication-type', varargin{:}];
        end

        function this = saved_secret(this, varargin)
            % Name of the saved secret to be used for authentication. When this value is provided, it is used in the place of other authentication methods.
            this.Options = [this.Options, '--saved-secret', varargin{:}];
        end

        function this = ssh_key(this, varargin)
            % The SSH public key or public key file path. Use `--generate- ssh-keys` to generate SSH keys. Network Arguments
            this.Options = [this.Options, '--ssh-key', varargin{:}];
        end

        function this = ip_configuration(this, varargin)
            % Type of IP configuration to use for the VM. Allowed values are: shared, public, private. If omitted, will be selected based on the VM's vnet.
            this.Options = [this.Options, '--ip-configuration', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name of the subnet to add the VM to.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % Name of the virtual network to add the VM to.
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = debug(this, varargin)
            % Increase logging verbosity to show all debug logs.
            this.Options = [this.Options, '--debug', varargin{:}];
        end

        function this = only_show_errors(this, varargin)
            % Only show errors, suppressing warnings.
            this.Options = [this.Options, '--only-show-errors', varargin{:}];
        end

        function this = output(this, varargin)
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.  Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az lab vm create : Create a VM in a lab.')
            fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lab-name          [Required] : Name of the lab.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the virtual machine.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --allow-claim                  : Flag indicating if the VM should be created as claimable.')
            fprintf('%s\n', '    --artifacts                    : JSON encoded array of artifacts to be applied. Use ''@{file}'' to')
            fprintf('%s\n', '                                     load from a file.')
            fprintf('%s\n', '    --disk-type                    : Storage type to use for virtual machine.')
            fprintf('%s\n', '    --expiration-date              : The expiration date in UTC(yyyy-MM-ddTHH:mm:ss) for the VM.')
            fprintf('%s\n', '    --formula                      : Name of the formula. Use `az lab formula list` for available')
            fprintf('%s\n', '                                     formulas.')
            fprintf('%s\n', '        Use `az lab formula` with the `--export-artifacts` flag to export and update artifacts, then')
            fprintf('%s\n', '        pass the results via the `--artifacts` argument.')
            fprintf('%s\n', '    --generate-ssh-keys            : Generate SSH public and private key files if missing.')
            fprintf('%s\n', '    --image                        : The name of the operating system image (gallery image name or')
            fprintf('%s\n', '                                     custom image name/ID).')
            fprintf('%s\n', '        Use `az lab gallery-image list` for available gallery images or `az lab custom-image list`')
            fprintf('%s\n', '        for available custom images.')
            fprintf('%s\n', '    --image-type                   : Type of the image. Allowed values are: gallery, custom.')
            fprintf('%s\n', '    --notes                        : Notes for the virtual machine.')
            fprintf('%s\n', '    --size                         : The size of the VM to be created. See')
            fprintf('%s\n', '                                     https://azure.microsoft.com/pricing/details/virtual-machines/')
            fprintf('%s\n', '                                     for size info.')
            fprintf('%s\n', '    --tags                         : Space-separated tags in `key[=value]` format.')
            fprintf('%s\n', '        Tags may be cleared by assigning the empty value "" to them.')
            fprintf('%s\n', 'Authentication Arguments')
            fprintf('%s\n', '    --admin-password               : Password for the VM admin.')
            fprintf('%s\n', '    --admin-username               : Username for the VM admin.  Default: <username>.')
            fprintf('%s\n', '    --authentication-type          : Type of authentication allowed for the VM. Allowed values are:')
            fprintf('%s\n', '                                     password, ssh.  Default: password.')
            fprintf('%s\n', '    --saved-secret                 : Name of the saved secret to be used for authentication.')
            fprintf('%s\n', '        When this value is provided, it is used in the place of other authentication methods.')
            fprintf('%s\n', '    --ssh-key                      : The SSH public key or public key file path. Use `--generate-')
            fprintf('%s\n', '                                     ssh-keys` to generate SSH keys.')
            fprintf('%s\n', 'Network Arguments')
            fprintf('%s\n', '    --ip-configuration             : Type of IP configuration to use for the VM. Allowed values are:')
            fprintf('%s\n', '                                     shared, public, private.')
            fprintf('%s\n', '        If omitted, will be selected based on the VM''s vnet.')
            fprintf('%s\n', '    --subnet                       : Name of the subnet to add the VM to.')
            fprintf('%s\n', '    --vnet-name                    : Name of the virtual network to add the VM to.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a VM in the lab from a gallery image.')
            fprintf('%s\n', '        az lab vm create --lab-name {LabName} -g {ResourceGroup} --name {VMName} --image "Ubuntu')
            fprintf('%s\n', '        Server 16.04 LTS" --image-type gallery --size Standard_DS1_v2')
            fprintf('%s\n', '    Create a VM in the lab from a gallery image with SSH authentication.')
            fprintf('%s\n', '        az lab vm create --lab-name {LabName} -g {ResourceGroup} --name {VMName} --image "Ubuntu')
            fprintf('%s\n', '        Server 16.04 LTS" --image-type gallery --size Standard_DS1_v2 --authentication-type ssh')
            fprintf('%s\n', '    Create a claimable VM in the lab from a gallery image with password authentication.')
            fprintf('%s\n', '        az lab vm create --lab-name {LabName} -g {ResourceGroup} --name {VMName} --image "Ubuntu')
            fprintf('%s\n', '        Server 16.04 LTS" --image-type gallery --size Standard_DS1_v2 --allow-claim')
            fprintf('%s\n', '    Create a windows VM in the lab from a gallery image with password authentication.')
            fprintf('%s\n', '        az lab vm create --lab-name {LabName} -g {ResourceGroup} --name {VMName} --image "Windows')
            fprintf('%s\n', '        Server 2008 R2 SP1" --image-type gallery --size Standard_DS1_v2')
            fprintf('%s\n', '    Create a VM in the lab from a custom image.')
            fprintf('%s\n', '        az lab vm create --lab-name {LabName} -g {ResourceGroup} --name {VMName} --image')
            fprintf('%s\n', '        "jenkins_custom" --image-type custom --size Standard_DS1_v2')
            fprintf('%s\n', '    Create a VM in the lab with a public IP.')
            fprintf('%s\n', '        az lab vm create --lab-name {LabName} -g {ResourceGroup} --name {VMName} --image "Ubuntu')
            fprintf('%s\n', '        Server 16.04 LTS" --image-type gallery --size Standard_DS1_v2 --ip-configuration public')
            fprintf('%s\n', '    Create a VM from a formula.')
            fprintf('%s\n', '        az lab vm create --lab-name {LabName} -g {ResourceGroup} --name {VMName} --formula MyFormula')
            fprintf('%s\n', '        --artifacts ''@artifacts.json''')
            fprintf('%s\n', 'For more specific examples, use: az find "az lab vm create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
