classdef rotate_disk_encryption_key < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = rotate_disk_encryption_key()
            % az hdinsight rotate-disk-encryption-key : Rotate the disk encryption key of the specified
            % HDInsight cluster.
            this.BaseCmd = 'az hdinsight rotate-disk-encryption-key ';
        end
        function this = name(this, varargin)
            % The name of the cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish. Customer Managed Key Arguments
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = encryption_key_name(this, varargin)
            % Key name that is used for enabling disk encryption.
            this.Options = [this.Options, '--encryption-key-name', varargin{:}];
        end

        function this = encryption_key_version(this, varargin)
            % Key version that is used for enabling disk encryption.
            this.Options = [this.Options, '--encryption-key-version', varargin{:}];
        end

        function this = encryption_vault_uri(this, varargin)
            % Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net.
            this.Options = [this.Options, '--encryption-vault-uri', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az hdinsight rotate-disk-encryption-key"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az hdinsight rotate-disk-encryption-key : Rotate the disk encryption key of the specified')
            fprintf('%s\n', '    HDInsight cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                [Required] : The name of the cluster.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --no-wait                           : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Customer Managed Key Arguments')
            fprintf('%s\n', '    --encryption-key-name    [Required] : Key name that is used for enabling disk encryption.')
            fprintf('%s\n', '    --encryption-key-version [Required] : Key version that is used for enabling disk encryption.')
            fprintf('%s\n', '    --encryption-vault-uri   [Required] : Base key vault URI where the customers key is located eg.')
            fprintf('%s\n', '                                          https://myvault.vault.azure.net.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az hdinsight rotate-disk-encryption-key"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class rotate_disk_encryption_key 
