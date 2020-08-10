classdef backup < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = backup()
            % az apim backup : Creates a backup of the API Management service to the given Azure Storage
            % Account. This is long running operation and could take several minutes to complete.
            % Command group 'apim' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az apim backup ';
        end
        function this = backup_name(this, varargin)
            % The name of the backup file to create.
            this.Options = [this.Options, '--backup-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the api management service instance.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish. Storage Arguments
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = storage_account_container(this, varargin)
            % The name of the storage account container used to place the backup.
            this.Options = [this.Options, '--storage-account-container', varargin{:}];
        end

        function this = storage_account_key(this, varargin)
            % The access key of the storage account used to place the backup.
            this.Options = [this.Options, '--storage-account-key', varargin{:}];
        end

        function this = storage_account_name(this, varargin)
            % The name of the storage account used to place the backup.
            this.Options = [this.Options, '--storage-account-name', varargin{:}];
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
            fprintf('%s\n', '    az apim backup : Creates a backup of the API Management service to the given Azure Storage')
            fprintf('%s\n', '    Account. This is long running operation and could take several minutes to complete.')
            fprintf('%s\n', '        Command group ''apim'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --backup-name               [Required] : The name of the backup file to create.')
            fprintf('%s\n', '    --name -n                   [Required] : The name of the api management service instance.')
            fprintf('%s\n', '    --resource-group -g         [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                             group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --no-wait                              : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Storage Arguments')
            fprintf('%s\n', '    --storage-account-container [Required] : The name of the storage account container used to place')
            fprintf('%s\n', '                                             the backup.')
            fprintf('%s\n', '    --storage-account-key       [Required] : The access key of the storage account used to place the')
            fprintf('%s\n', '                                             backup.')
            fprintf('%s\n', '    --storage-account-name      [Required] : The name of the storage account used to place the')
            fprintf('%s\n', '                                             backup.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                            : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                             table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                             more information and examples.')
            fprintf('%s\n', '    --subscription                         : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                             default subscription using `az account set -s')
            fprintf('%s\n', '                                             NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                              : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                             logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a backup of the API Management service instance')
            fprintf('%s\n', '        az apim backup --name MyApim -g MyResourceGroup --backup-name myBackup')
            fprintf('%s\n', '        --storage-account-name mystorageaccount --storage-account-container backups')
            fprintf('%s\n', '        --storage-account-key Ay2ZbdxLnD4OJPT29F6jLPkB6KynOzx85YCObhrw==')
            fprintf('%s\n', 'For more specific examples, use: az find "az apim backup"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class backup 
