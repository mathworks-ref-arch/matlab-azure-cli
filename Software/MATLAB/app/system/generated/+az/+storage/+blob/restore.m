classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az storage blob restore : Restore blobs in the specified blob ranges.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az storage blob restore ';
        end
        function this = account_name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = time_to_restore(this, varargin)
            % Restore blob to the specified time, which should be UTC datetime in (Y-m-d'T'H:M:S'Z').
            this.Options = [this.Options, '--time-to-restore', varargin{:}];
        end

        function this = blob_range(this, varargin)
            % Blob ranges to restore. You need to two values to specify start_range and end_range for each blob range, e.g. -r blob1 blob2. Note: Empty means account start as start range value, and means account end for end range.
            this.Options = [this.Options, '--blob-range', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            fprintf('%s\n', '    az storage blob restore : Restore blobs in the specified blob ranges.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -n    [Required] : The storage account name.')
            fprintf('%s\n', '    --time-to-restore -t [Required] : Restore blob to the specified time, which should be UTC')
            fprintf('%s\n', '                                      datetime in (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --blob-range -r                 : Blob ranges to restore. You need to two values to specify')
            fprintf('%s\n', '                                      start_range and end_range for each blob range, e.g. -r blob1')
            fprintf('%s\n', '                                      blob2. Note: Empty means account start as start range value,')
            fprintf('%s\n', '                                      and means account end for end range.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --resource-group -g             : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Restore blobs in two specified blob ranges. For examples, (container1/blob1, container2/blob2)')
            fprintf('%s\n', '    and (container2/blob3..container2/blob4).')
            fprintf('%s\n', '        az storage blob restore --account-name mystorageaccount -g MyResourceGroup -t')
            fprintf('%s\n', '        2020-02-27T03:59:59Z -r container1/blob1 container2/blob2 -r container2/blob3')
            fprintf('%s\n', '        container2/blob4')
            fprintf('%s\n', '    Restore blobs in the specified blob ranges from account start to account end.')
            fprintf('%s\n', '        az storage blob restore --account-name mystorageaccount -g MyResourceGroup -t')
            fprintf('%s\n', '        2020-02-27T03:59:59Z -r "" ""')
            fprintf('%s\n', '    Restore blobs in the specified blob range.')
            fprintf('%s\n', '        time=`date -u -d "30 minutes" ''+%Y-%m-%dT%H:%MZ''`')
            fprintf('%s\n', '        az storage blob restore --account-name mystorageaccount -g MyResourceGroup -t $time -r')
            fprintf('%s\n', '        container0/blob1 container0/blob2')
            fprintf('%s\n', '    Restore blobs in the specified blob range without wait and query blob restore status with ''az')
            fprintf('%s\n', '    storage account show''.')
            fprintf('%s\n', '        time=`date -u -d "30 minutes" ''+%Y-%m-%dT%H:%MZ''`')
            fprintf('%s\n', '        az storage blob restore --account-name mystorageaccount -g MyResourceGroup -t $time -r')
            fprintf('%s\n', '        container0/blob1 container0/blob2 --no-wait')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
