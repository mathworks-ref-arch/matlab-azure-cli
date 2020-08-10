classdef reset < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reset()
            % az batch pool reset : Update the properties of a Batch pool. Unspecified properties which can be
            % updated are reset to their defaults.
            this.BaseCmd = 'az batch pool reset ';
        end
        function this = pool_id(this, varargin)
            % The ID of the pool to update.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = json_file(this, varargin)
            % The file containing pool update properties parameter specification in JSON(formatted to match REST API request body). If this parameter is specified, all 'Pool Update Properties Parameter Arguments' are ignored.
            this.Options = [this.Options, '--json-file', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch pool reset"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_endpoint(this, varargin)
            % Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT.
            this.Options = [this.Options, '--account-endpoint', varargin{:}];
        end

        function this = account_key(this, varargin)
            % The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Pool Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = application_package_references(this, varargin)
            % Required. The list of Application Packages to be installed on each Compute Node in the Pool. The list replaces any existing Application Package references on the Pool. Changes to Application Package references affect all new Compute Nodes joining the Pool, but do not affect Compute Nodes that are already in the Pool until they are rebooted or reimaged. There is a maximum of 10 Application Package references on any given Pool. If omitted, or if you specify an empty collection, any existing Application Packages references are removed from the Pool. A maximum of 10 references may be specified on a given Pool.
            this.Options = [this.Options, '--application-package-references', varargin{:}];
        end

        function this = certificate_references(this, varargin)
            % Required. A list of Certificates to be installed on each Compute Node in the Pool. This list replaces any existing Certificate references configured on the Pool. If you specify an empty collection, any existing Certificate references are removed from the Pool. For Windows Nodes, the Batch service installs the Certificates to the specified Certificate store and location. For Linux Compute Nodes, the Certificates are stored in a directory inside the Task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the Task to query for this location. For Certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and Certificates are placed in that directory.
            this.Options = [this.Options, '--certificate-references', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Required. A list of name-value pairs associated with the Pool as metadata. This list replaces any existing metadata configured on the Pool. If omitted, or if you specify an empty collection, any existing metadata is removed from the Pool. Pool: Start Task Arguments
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = start_task_command_line(this, varargin)
            % The command line of the start task. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux.
            this.Options = [this.Options, '--start-task-command-line', varargin{:}];
        end

        function this = start_task_environment_settings(this, varargin)
            % A list of environment variable settings for the start task. Space-separated values in 'key=value' format.
            this.Options = [this.Options, '--start-task-environment-settings', varargin{:}];
        end

        function this = start_task_max_task_retry_count(this, varargin)
            % The maximum number of times the task may be retried.
            this.Options = [this.Options, '--start-task-max-task-retry-count', varargin{:}];
        end

        function this = start_task_wait_for_success(this, varargin)
            % Whether the Batch service should wait for the start task to complete successfully (that is, to exit with exit code 0) before scheduling any tasks on the compute node. True if flag present, otherwise defaults to False.
            this.Options = [this.Options, '--start-task-wait-for-success', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch pool reset : Update the properties of a Batch pool. Unspecified properties which can be')
            fprintf('%s\n', '    updated are reset to their defaults.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --pool-id              [Required] : The ID of the pool to update.')
            fprintf('%s\n', '    --json-file                       : The file containing pool update properties parameter')
            fprintf('%s\n', '                                        specification in JSON(formatted to match REST API request')
            fprintf('%s\n', '                                        body). If this parameter is specified, all ''Pool Update')
            fprintf('%s\n', '                                        Properties Parameter Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint                : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                     : The Batch account key. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                    : The Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pool Arguments')
            fprintf('%s\n', '    --application-package-references  : Required. The list of Application Packages to be installed')
            fprintf('%s\n', '                                        on each Compute Node in the Pool. The list replaces any')
            fprintf('%s\n', '                                        existing Application Package references on the Pool. Changes')
            fprintf('%s\n', '                                        to Application Package references affect all new Compute')
            fprintf('%s\n', '                                        Nodes joining the Pool, but do not affect Compute Nodes that')
            fprintf('%s\n', '                                        are already in the Pool until they are rebooted or reimaged.')
            fprintf('%s\n', '                                        There is a maximum of 10 Application Package references on')
            fprintf('%s\n', '                                        any given Pool. If omitted, or if you specify an empty')
            fprintf('%s\n', '                                        collection, any existing Application Packages references are')
            fprintf('%s\n', '                                        removed from the Pool. A maximum of 10 references may be')
            fprintf('%s\n', '                                        specified on a given Pool.')
            fprintf('%s\n', '    --certificate-references          : Required. A list of Certificates to be installed on each')
            fprintf('%s\n', '                                        Compute Node in the Pool. This list replaces any existing')
            fprintf('%s\n', '                                        Certificate references configured on the Pool. If you')
            fprintf('%s\n', '                                        specify an empty collection, any existing Certificate')
            fprintf('%s\n', '                                        references are removed from the Pool. For Windows Nodes, the')
            fprintf('%s\n', '                                        Batch service installs the Certificates to the specified')
            fprintf('%s\n', '                                        Certificate store and location. For Linux Compute Nodes, the')
            fprintf('%s\n', '                                        Certificates are stored in a directory inside the Task')
            fprintf('%s\n', '                                        working directory and an environment variable')
            fprintf('%s\n', '                                        AZ_BATCH_CERTIFICATES_DIR is supplied to the Task to query')
            fprintf('%s\n', '                                        for this location. For Certificates with visibility of')
            fprintf('%s\n', '                                        ''remoteUser'', a ''certs'' directory is created in the user''s')
            fprintf('%s\n', '                                        home directory (e.g., /home/{user-name}/certs) and')
            fprintf('%s\n', '                                        Certificates are placed in that directory.')
            fprintf('%s\n', '    --metadata                        : Required. A list of name-value pairs associated with the')
            fprintf('%s\n', '                                        Pool as metadata. This list replaces any existing metadata')
            fprintf('%s\n', '                                        configured on the Pool. If omitted, or if you specify an')
            fprintf('%s\n', '                                        empty collection, any existing metadata is removed from the')
            fprintf('%s\n', '                                        Pool.')
            fprintf('%s\n', 'Pool: Start Task Arguments')
            fprintf('%s\n', '    --start-task-command-line         : The command line of the start task. The command line does')
            fprintf('%s\n', '                                        not run under a shell, and therefore cannot take advantage')
            fprintf('%s\n', '                                        of shell features such as environment variable expansion. If')
            fprintf('%s\n', '                                        you want to take advantage of such features, you should')
            fprintf('%s\n', '                                        invoke the shell in the command line, for example using "cmd')
            fprintf('%s\n', '                                        /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux.')
            fprintf('%s\n', '    --start-task-environment-settings : A list of environment variable settings for the start task.')
            fprintf('%s\n', '                                        Space-separated values in ''key=value'' format.')
            fprintf('%s\n', '    --start-task-max-task-retry-count : The maximum number of times the task may be retried.')
            fprintf('%s\n', '    --start-task-wait-for-success     : Whether the Batch service should wait for the start task to')
            fprintf('%s\n', '                                        complete successfully (that is, to exit with exit code 0)')
            fprintf('%s\n', '                                        before scheduling any tasks on the compute node. True if')
            fprintf('%s\n', '                                        flag present, otherwise defaults to False.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch pool reset"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reset 
