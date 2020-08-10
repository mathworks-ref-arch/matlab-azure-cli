classdef open_port < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = open_port()
            % az vm open-port : Opens a VM to inbound traffic on specified ports.
            % Adds a security rule to the network security group (NSG) that is attached to the VM's
            % network interface (NIC) or subnet. The existing NSG will be used or a new one will be
            % created. The rule name is 'open-port-{port}' and will overwrite an existing rule with this
            % name. For multi-NIC VMs, or for more fine-grained control, use the appropriate network
            % commands directly (nsg rule create, etc).
            this.BaseCmd = 'az vm open-port ';
        end
        function this = port(this, varargin)
            % The port or port range (ex: 80-100) to open inbound traffic to. Use '*' to allow traffic to all ports.
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = apply_to_subnet(this, varargin)
            % Allow inbound traffic on the subnet instead of the NIC.
            this.Options = [this.Options, '--apply-to-subnet', varargin{:}];
        end

        function this = nsg_name(this, varargin)
            % The name of the network security group to create if one does not exist. Ignored if an NSG already exists.
            this.Options = [this.Options, '--nsg-name', varargin{:}];
        end

        function this = priority(this, varargin)
            % Rule priority, between 100 (highest priority) and 4096 (lowest priority). Must be unique for each rule in the collection.  Default: 900.
            this.Options = [this.Options, '--priority', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the virtual machine to open inbound traffic on.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az vm open-port : Opens a VM to inbound traffic on specified ports.')
            fprintf('%s\n', '        Adds a security rule to the network security group (NSG) that is attached to the VM''s')
            fprintf('%s\n', '        network interface (NIC) or subnet. The existing NSG will be used or a new one will be')
            fprintf('%s\n', '        created. The rule name is ''open-port-{port}'' and will overwrite an existing rule with this')
            fprintf('%s\n', '        name. For multi-NIC VMs, or for more fine-grained control, use the appropriate network')
            fprintf('%s\n', '        commands directly (nsg rule create, etc).')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --port   [Required] : The port or port range (ex: 80-100) to open inbound traffic to. Use ''*'' to')
            fprintf('%s\n', '                          allow traffic to all ports.')
            fprintf('%s\n', '    --apply-to-subnet   : Allow inbound traffic on the subnet instead of the NIC.')
            fprintf('%s\n', '    --nsg-name          : The name of the network security group to create if one does not exist.')
            fprintf('%s\n', '                          Ignored if an NSG already exists.')
            fprintf('%s\n', '    --priority          : Rule priority, between 100 (highest priority) and 4096 (lowest priority).')
            fprintf('%s\n', '                          Must be unique for each rule in the collection.  Default: 900.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The name of the virtual machine to open inbound traffic on.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Open all ports on a VM to inbound traffic.')
            fprintf('%s\n', '        az vm open-port -g MyResourceGroup -n MyVm --port ''*''')
            fprintf('%s\n', '    Open a range of ports on a VM to inbound traffic with the highest priority.')
            fprintf('%s\n', '        az vm open-port -g MyResourceGroup -n MyVm --port 80-100 --priority 100')
            fprintf('%s\n', '    Open all ports for all VMs in a resource group.')
            fprintf('%s\n', '        az vm open-port --ids $(az vm list -g MyResourceGroup --query "[].id" -o tsv) --port ''*''')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm open-port"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class open_port 
