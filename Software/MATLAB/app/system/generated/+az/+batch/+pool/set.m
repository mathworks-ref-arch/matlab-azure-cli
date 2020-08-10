classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az batch pool set : Update the properties of a Batch pool. Updating a property in a subgroup
            % will reset the unspecified properties of that group.
            this.BaseCmd = 'az batch pool set ';
        end
        function this = pool_id(this, varargin)
            % The ID of the Pool to update.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = json_file(this, varargin)
            % A file containing the pool patch parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Pool Arguments' are ignored.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch pool set"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_endpoint(this, varargin)
            % Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT.
            this.Options = [this.Options, '--account-endpoint', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Pool Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = application_package_references(this, varargin)
            % A list of Packages to be installed on each Compute Node in the Pool. Changes to Package references affect all new Nodes joining the Pool, but do not affect Compute Nodes that are already in the Pool until they are rebooted or reimaged. If this element is present, it replaces any existing Package references. If you specify an empty collection, then all Package references are removed from the Pool. If omitted, any existing Package references are left unchanged. Space- separated application IDs with optional version in 'id[#version]' format.
            this.Options = [this.Options, '--application-package-references', varargin{:}];
        end

        function this = certificate_references(this, varargin)
            % A list of Certificates to be installed on each Compute Node in the Pool. If this element is present, it replaces any existing Certificate references configured on the Pool. If omitted, any existing Certificate references are left unchanged. For Windows Nodes, the Batch service installs the Certificates to the specified Certificate store and location. For Linux Compute Nodes, the Certificates are stored in a directory inside the Task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the Task to query for this location. For Certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and Certificates are placed in that directory. Space-separated certificate thumbprints.
            this.Options = [this.Options, '--certificate-references', varargin{:}];
        end

        function this = metadata(this, varargin)
            % A list of name-value pairs associated with the Pool as metadata. If this element is present, it replaces any existing metadata configured on the Pool. If you specify an empty collection, any metadata is removed from the Pool. If omitted, any existing metadata is left unchanged. Space- separated values in 'key=value' format. Pool: Start Task Arguments
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = start_task_command_line(this, varargin)
            % Required. The command line of the StartTask. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en- us/azure/batch/batch-compute-node-environment-variables).
            this.Options = [this.Options, '--start-task-command-line', varargin{:}];
        end

        function this = start_task_environment_settings(this, varargin)
            % A list of environment variable settings for the StartTask. Space-separated values in 'key=value' format.
            this.Options = [this.Options, '--start-task-environment-settings', varargin{:}];
        end

        function this = start_task_max_task_retry_count(this, varargin)
            % The maximum number of times the Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try the Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the Task. If the maximum retry count is -1, the Batch service retries the Task without limit.
            this.Options = [this.Options, '--start-task-max-task-retry-count', varargin{:}];
        end

        function this = start_task_resource_files(this, varargin)
            % A list of files that the Batch service will download to the Compute Node before running the command line.  There is a maximum size for the list of resource files. When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Files listed under this element are located in the Task's working directory. Space-separated resource references in filename=httpurl format.
            this.Options = [this.Options, '--start-task-resource-files', varargin{:}];
        end

        function this = start_task_wait_for_success(this, varargin)
            % Whether the Batch service should wait for the StartTask to complete successfully (that is, to exit with exit code 0) before scheduling any Tasks on the Compute Node. If true and the StartTask fails on a Node, the Batch service retries the StartTask up to its maximum retry count (maxTaskRetryCount). If the Task has still not completed successfully after all retries, then the Batch service marks the Node unusable, and will not schedule Tasks to it. This condition can be detected via the Compute Node state and failure info details. If false, the Batch service will not wait for the StartTask to complete. In this case, other Tasks can start executing on the Compute Node while the StartTask is still running; and even if the StartTask fails, new Tasks will continue to be scheduled on the Compute Node. The default is true. Specify either 'true' or 'false' to update the property. Pre-condition and Query Arguments
            this.Options = [this.Options, '--start-task-wait-for-success', varargin{:}];
        end

        function this = if_match(this, varargin)
            % An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource's current ETag on the service exactly matches the value specified by the client.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = if_modified_since(this, varargin)
            % A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time.
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource's current ETag on the service does not match the value specified by the client.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time.
            this.Options = [this.Options, '--if-unmodified-since', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch pool set : Update the properties of a Batch pool. Updating a property in a subgroup')
            fprintf('%s\n', '    will reset the unspecified properties of that group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --pool-id              [Required] : The ID of the Pool to update.')
            fprintf('%s\n', '    --json-file                       : A file containing the pool patch parameter specification in')
            fprintf('%s\n', '                                        JSON (formatted to match the respective REST API body). If')
            fprintf('%s\n', '                                        this parameter is specified, all ''Pool Arguments'' are')
            fprintf('%s\n', '                                        ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint                : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                     : Batch account key. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                    : Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pool Arguments')
            fprintf('%s\n', '    --application-package-references  : A list of Packages to be installed on each Compute Node in')
            fprintf('%s\n', '                                        the Pool. Changes to Package references affect all new Nodes')
            fprintf('%s\n', '                                        joining the Pool, but do not affect Compute Nodes that are')
            fprintf('%s\n', '                                        already in the Pool until they are rebooted or reimaged. If')
            fprintf('%s\n', '                                        this element is present, it replaces any existing Package')
            fprintf('%s\n', '                                        references. If you specify an empty collection, then all')
            fprintf('%s\n', '                                        Package references are removed from the Pool. If omitted,')
            fprintf('%s\n', '                                        any existing Package references are left unchanged. Space-')
            fprintf('%s\n', '                                        separated application IDs with optional version in')
            fprintf('%s\n', '                                        ''id[#version]'' format.')
            fprintf('%s\n', '    --certificate-references          : A list of Certificates to be installed on each Compute Node')
            fprintf('%s\n', '                                        in the Pool. If this element is present, it replaces any')
            fprintf('%s\n', '                                        existing Certificate references configured on the Pool. If')
            fprintf('%s\n', '                                        omitted, any existing Certificate references are left')
            fprintf('%s\n', '                                        unchanged. For Windows Nodes, the Batch service installs the')
            fprintf('%s\n', '                                        Certificates to the specified Certificate store and')
            fprintf('%s\n', '                                        location. For Linux Compute Nodes, the Certificates are')
            fprintf('%s\n', '                                        stored in a directory inside the Task working directory and')
            fprintf('%s\n', '                                        an environment variable AZ_BATCH_CERTIFICATES_DIR is')
            fprintf('%s\n', '                                        supplied to the Task to query for this location. For')
            fprintf('%s\n', '                                        Certificates with visibility of ''remoteUser'', a ''certs''')
            fprintf('%s\n', '                                        directory is created in the user''s home directory (e.g.,')
            fprintf('%s\n', '                                        /home/{user-name}/certs) and Certificates are placed in that')
            fprintf('%s\n', '                                        directory. Space-separated certificate thumbprints.')
            fprintf('%s\n', '    --metadata                        : A list of name-value pairs associated with the Pool as')
            fprintf('%s\n', '                                        metadata. If this element is present, it replaces any')
            fprintf('%s\n', '                                        existing metadata configured on the Pool. If you specify an')
            fprintf('%s\n', '                                        empty collection, any metadata is removed from the Pool. If')
            fprintf('%s\n', '                                        omitted, any existing metadata is left unchanged. Space-')
            fprintf('%s\n', '                                        separated values in ''key=value'' format.')
            fprintf('%s\n', 'Pool: Start Task Arguments')
            fprintf('%s\n', '    --start-task-command-line         : Required. The command line of the StartTask. The command')
            fprintf('%s\n', '                                        line does not run under a shell, and therefore cannot take')
            fprintf('%s\n', '                                        advantage of shell features such as environment variable')
            fprintf('%s\n', '                                        expansion. If you want to take advantage of such features,')
            fprintf('%s\n', '                                        you should invoke the shell in the command line, for example')
            fprintf('%s\n', '                                        using "cmd /c MyCommand" in Windows or "/bin/sh -c')
            fprintf('%s\n', '                                        MyCommand" in Linux. If the command line refers to file')
            fprintf('%s\n', '                                        paths, it should use a relative path (relative to the Task')
            fprintf('%s\n', '                                        working directory), or use the Batch provided environment')
            fprintf('%s\n', '                                        variable (https://docs.microsoft.com/en-')
            fprintf('%s\n', '                                        us/azure/batch/batch-compute-node-environment-variables).')
            fprintf('%s\n', '    --start-task-environment-settings : A list of environment variable settings for the StartTask.')
            fprintf('%s\n', '                                        Space-separated values in ''key=value'' format.')
            fprintf('%s\n', '    --start-task-max-task-retry-count : The maximum number of times the Task may be retried. The')
            fprintf('%s\n', '                                        Batch service retries a Task if its exit code is nonzero.')
            fprintf('%s\n', '                                        Note that this value specifically controls the number of')
            fprintf('%s\n', '                                        retries. The Batch service will try the Task once, and may')
            fprintf('%s\n', '                                        then retry up to this limit. For example, if the maximum')
            fprintf('%s\n', '                                        retry count is 3, Batch tries the Task up to 4 times (one')
            fprintf('%s\n', '                                        initial try and 3 retries). If the maximum retry count is 0,')
            fprintf('%s\n', '                                        the Batch service does not retry the Task. If the maximum')
            fprintf('%s\n', '                                        retry count is -1, the Batch service retries the Task')
            fprintf('%s\n', '                                        without limit.')
            fprintf('%s\n', '    --start-task-resource-files       : A list of files that the Batch service will download to the')
            fprintf('%s\n', '                                        Compute Node before running the command line.  There is a')
            fprintf('%s\n', '                                        maximum size for the list of resource files. When the max')
            fprintf('%s\n', '                                        size is exceeded, the request will fail and the response')
            fprintf('%s\n', '                                        error code will be RequestEntityTooLarge. If this occurs,')
            fprintf('%s\n', '                                        the collection of ResourceFiles must be reduced in size.')
            fprintf('%s\n', '                                        This can be achieved using .zip files, Application Packages,')
            fprintf('%s\n', '                                        or Docker Containers. Files listed under this element are')
            fprintf('%s\n', '                                        located in the Task''s working directory. Space-separated')
            fprintf('%s\n', '                                        resource references in filename=httpurl format.')
            fprintf('%s\n', '    --start-task-wait-for-success     : Whether the Batch service should wait for the StartTask to')
            fprintf('%s\n', '                                        complete successfully (that is, to exit with exit code 0)')
            fprintf('%s\n', '                                        before scheduling any Tasks on the Compute Node. If true and')
            fprintf('%s\n', '                                        the StartTask fails on a Node, the Batch service retries the')
            fprintf('%s\n', '                                        StartTask up to its maximum retry count (maxTaskRetryCount).')
            fprintf('%s\n', '                                        If the Task has still not completed successfully after all')
            fprintf('%s\n', '                                        retries, then the Batch service marks the Node unusable, and')
            fprintf('%s\n', '                                        will not schedule Tasks to it. This condition can be')
            fprintf('%s\n', '                                        detected via the Compute Node state and failure info')
            fprintf('%s\n', '                                        details. If false, the Batch service will not wait for the')
            fprintf('%s\n', '                                        StartTask to complete. In this case, other Tasks can start')
            fprintf('%s\n', '                                        executing on the Compute Node while the StartTask is still')
            fprintf('%s\n', '                                        running; and even if the StartTask fails, new Tasks will')
            fprintf('%s\n', '                                        continue to be scheduled on the Compute Node. The default is')
            fprintf('%s\n', '                                        true. Specify either ''true'' or ''false'' to update the')
            fprintf('%s\n', '                                        property.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-match                        : An ETag value associated with the version of the resource')
            fprintf('%s\n', '                                        known to the client. The operation will be performed only if')
            fprintf('%s\n', '                                        the resource''s current ETag on the service exactly matches')
            fprintf('%s\n', '                                        the value specified by the client.')
            fprintf('%s\n', '    --if-modified-since               : A timestamp indicating the last modified time of the')
            fprintf('%s\n', '                                        resource known to the client. The operation will be')
            fprintf('%s\n', '                                        performed only if the resource on the service has been')
            fprintf('%s\n', '                                        modified since the specified time.')
            fprintf('%s\n', '    --if-none-match                   : An ETag value associated with the version of the resource')
            fprintf('%s\n', '                                        known to the client. The operation will be performed only if')
            fprintf('%s\n', '                                        the resource''s current ETag on the service does not match')
            fprintf('%s\n', '                                        the value specified by the client.')
            fprintf('%s\n', '    --if-unmodified-since             : A timestamp indicating the last modified time of the')
            fprintf('%s\n', '                                        resource known to the client. The operation will be')
            fprintf('%s\n', '                                        performed only if the resource on the service has not been')
            fprintf('%s\n', '                                        modified since the specified time.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch pool set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
