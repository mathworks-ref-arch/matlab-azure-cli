classdef approve < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = approve()
            % az storage account private-endpoint-connection approve : Approve a private endpoint connection
            % request for storage account.
            % Command group 'storage account private-endpoint-connection' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az storage account private-endpoint-connection approve ';
        end
        function this = account_name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = description(this, varargin)
            % Comments for approve operation.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = id(this, varargin)
            % The ID of the private endpoint connection associated with the Storage Account. You can get it using `az storage account show`.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the private endpoint connection associated with the Storage Account.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % The resource group name of specified storage account.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az storage account private-endpoint-connection approve : Approve a private endpoint connection')
            fprintf('%s\n', '    request for storage account.')
            fprintf('%s\n', '        Command group ''storage account private-endpoint-connection'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name      : The storage account name.')
            fprintf('%s\n', '    --description       : Comments for approve operation.')
            fprintf('%s\n', '    --id                : The ID of the private endpoint connection associated with the Storage')
            fprintf('%s\n', '                          Account. You can get it using `az storage account show`.')
            fprintf('%s\n', '    --name -n           : The name of the private endpoint connection associated with the Storage')
            fprintf('%s\n', '                          Account.')
            fprintf('%s\n', '    --resource-group -g : The resource group name of specified storage account.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Approve a private endpoint connection request for storage account by ID.')
            fprintf('%s\n', '        az storage account private-endpoint-connection approve --id "/subscriptions/0000-0000-0000-0')
            fprintf('%s\n', '        000/resourceGroups/MyResourceGroup/providers/Microsoft.Storage/storageAccounts/mystorageacco')
            fprintf('%s\n', '        unt/privateEndpointConnections/mystorageaccount.b56b5a95-0588-4f8b-b348-15db61590a6c"')
            fprintf('%s\n', '    Approve a private endpoint connection request for storage account by ID.')
            fprintf('%s\n', '        id = (az storage account show -n mystorageaccount --query')
            fprintf('%s\n', '        "privateEndpointConnections[0].id")')
            fprintf('%s\n', '        az storage account private-endpoint-connection approve --id $id')
            fprintf('%s\n', '    Approve a private endpoint connection request for storage account using account name and')
            fprintf('%s\n', '    connection name.')
            fprintf('%s\n', '        az storage account private-endpoint-connection approve -g myRg --account-name')
            fprintf('%s\n', '        mystorageaccount --name myconnection')
            fprintf('%s\n', '    Approve a private endpoint connection request for storage account using account name and')
            fprintf('%s\n', '    connection name.')
            fprintf('%s\n', '        name = (az storage account show -n mystorageaccount --query')
            fprintf('%s\n', '        "privateEndpointConnections[0].name")')
            fprintf('%s\n', '        az storage account private-endpoint-connection approve -g myRg --account-name')
            fprintf('%s\n', '        mystorageaccount --name $name')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account private-endpoint-connection')
            fprintf('%s\n', 'approve"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class approve 
