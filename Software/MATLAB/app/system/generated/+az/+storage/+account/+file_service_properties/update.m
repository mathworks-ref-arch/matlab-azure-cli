classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage account file-service-properties update : Update the properties of file service in
            % storage account.
            % Update the properties of file service in storage account.
            % Command group 'storage account file-service-properties' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az storage account file-service-properties update ';
        end
        function this = account_name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`. Delete Retention Policy Arguments
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = delete_retention_days(this, varargin)
            % Indicate the number of days that the deleted item should be retained. The minimum specified value can be 1 and the maximum value can be 365.
            this.Options = [this.Options, '--delete-retention-days', varargin{:}];
        end

        function this = enable_delete_retention(this, varargin)
            % Enable file service properties for share soft delete.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-delete-retention', varargin{:}];
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
            fprintf('%s\n', '    az storage account file-service-properties update : Update the properties of file service in')
            fprintf('%s\n', '    storage account.')
            fprintf('%s\n', '        Update the properties of file service in storage account.')
            fprintf('%s\n', '        Command group ''storage account file-service-properties'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -n [Required] : The storage account name.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Delete Retention Policy Arguments')
            fprintf('%s\n', '    --delete-retention-days      : Indicate the number of days that the deleted item should be')
            fprintf('%s\n', '                                   retained. The minimum specified value can be 1 and the maximum')
            fprintf('%s\n', '                                   value can be 365.')
            fprintf('%s\n', '    --enable-delete-retention    : Enable file service properties for share soft delete.  Allowed')
            fprintf('%s\n', '                                   values: false, true.')
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
            fprintf('%s\n', '    Enable soft delete policy and set delete retention days to 100 for file service in storage')
            fprintf('%s\n', '    account.')
            fprintf('%s\n', '        az storage account file-service-properties update --enable-delete-retention true --delete-')
            fprintf('%s\n', '        retention-days 100 -n mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', '    Disable soft delete policy for file service.')
            fprintf('%s\n', '        az storage account file-service-properties update --enable-delete-retention false -n')
            fprintf('%s\n', '        mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account file-service-properties update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
