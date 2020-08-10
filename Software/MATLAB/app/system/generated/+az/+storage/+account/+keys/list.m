classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az storage account keys list : List the access keys or Kerberos keys (if active directory
            % enabled) for a storage account.
            this.BaseCmd = 'az storage account keys list ';
        end
        function this = account_name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = expand_key_type(this, varargin)
            % Specify the expanded key types to be listed.  Allowed values: kerb. Argument '--expand-key-type' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--expand-key-type', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
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
            fprintf('%s\n', '    az storage account keys list : List the access keys or Kerberos keys (if active directory')
            fprintf('%s\n', '    enabled) for a storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -n [Required] : The storage account name.')
            fprintf('%s\n', '    --expand-key-type  [Preview] : Specify the expanded key types to be listed.  Allowed')
            fprintf('%s\n', '                                   values: kerb.')
            fprintf('%s\n', '        Argument ''--expand-key-type'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List the access keys for a storage account.')
            fprintf('%s\n', '        az storage account keys list -g MyResourceGroup -n MyStorageAccount')
            fprintf('%s\n', '    List the access keys and Kerberos keys (if active directory enabled) for a storage account.')
            fprintf('%s\n', '        az storage account keys list -g MyResourceGroup -n MyStorageAccount --expand-key-type kerb')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account keys list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 