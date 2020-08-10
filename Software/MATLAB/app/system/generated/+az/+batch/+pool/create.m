classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az batch pool create : Create a Batch pool in an account. When creating a pool, choose arguments
            % from either Cloud Services Configuration or Virtual Machine Configuration.
            this.BaseCmd = 'az batch pool create ';
        end
        function this = json_file(this, varargin)
            % A file containing the pool specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Pool Arguments' are ignored.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch pool create"
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

        function this = application_licenses(this, varargin)
            % The list of application licenses the Batch service will make available on each Compute Node in the Pool. The list of application licenses must be a subset of available Batch service application licenses. If a license is requested which is not supported, Pool creation will fail. Space- separated values.
            this.Options = [this.Options, '--application-licenses', varargin{:}];
        end

        function this = application_package_references(this, varargin)
            % The list of Packages to be installed on each Compute Node in the Pool. Changes to Package references affect all new Nodes joining the Pool, but do not affect Compute Nodes that are already in the Pool until they are rebooted or reimaged. There is a maximum of 10 Package references on any given Pool. Space-separated application IDs with optional version in 'id[#version]' format.
            this.Options = [this.Options, '--application-package-references', varargin{:}];
        end

        function this = auto_scale_formula(this, varargin)
            % A formula for the desired number of compute nodes in the pool. The formula is checked for validity before the pool is created. If the formula is not valid, the Batch service rejects the request with detailed error information. For more information about specifying this formula, see https://azure.microsoft.com/documentation/articles/batch- automatic-scaling/.
            this.Options = [this.Options, '--auto-scale-formula', varargin{:}];
        end

        function this = certificate_references(this, varargin)
            % The list of Certificates to be installed on each Compute Node in the Pool. For Windows Nodes, the Batch service installs the Certificates to the specified Certificate store and location. For Linux Compute Nodes, the Certificates are stored in a directory inside the Task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the Task to query for this location. For Certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and Certificates are placed in that directory. Space-separated certificate thumbprints.
            this.Options = [this.Options, '--certificate-references', varargin{:}];
        end

        function this = enable_inter_node_communication(this, varargin)
            % Whether the Pool permits direct communication between Compute Nodes. Enabling inter-node communication limits the maximum size of the Pool due to deployment restrictions on the Compute Nodes of the Pool. This may result in the Pool not reaching its desired size. The default value is false. True if flag present.
            this.Options = [this.Options, '--enable-inter-node-communication', varargin{:}];
        end

        function this = id(this, varargin)
            % Required. A string that uniquely identifies the Pool within the Account. The ID can contain any combination of alphanumeric characters including hyphens and underscores, and cannot contain more than 64 characters. The ID is case- preserving and case-insensitive (that is, you may not have two Pool IDs within an Account that differ only by case).
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = max_tasks_per_node(this, varargin)
            % The maximum number of Tasks that can run concurrently on a single Compute Node in the Pool. The default value is 1. The maximum value is the smaller of 4 times the number of cores of the vmSize of the Pool or 256.
            this.Options = [this.Options, '--max-tasks-per-node', varargin{:}];
        end

        function this = metadata(this, varargin)
            % A list of name-value pairs associated with the Pool as metadata. The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space- separated values in 'key=value' format.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = resize_timeout(this, varargin)
            % The timeout for allocation of Compute Nodes to the Pool. This timeout applies only to manual scaling; it has no effect when enableAutoScale is set to true. The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration.
            this.Options = [this.Options, '--resize-timeout', varargin{:}];
        end

        function this = target_dedicated_nodes(this, varargin)
            % The desired number of dedicated Compute Nodes in the Pool. This property must not be specified if enableAutoScale is set to true. If enableAutoScale is set to false, then you must set either targetDedicatedNodes, targetLowPriorityNodes, or both.
            this.Options = [this.Options, '--target-dedicated-nodes', varargin{:}];
        end

        function this = target_low_priority_nodes(this, varargin)
            % The desired number of low-priority Compute Nodes in the Pool. This property must not be specified if enableAutoScale is set to true. If enableAutoScale is set to false, then you must set either targetDedicatedNodes, targetLowPriorityNodes, or both.
            this.Options = [this.Options, '--target-low-priority-nodes', varargin{:}];
        end

        function this = vm_size(this, varargin)
            % Required. The size of virtual machines in the Pool. All virtual machines in a Pool are the same size. For information about available sizes of virtual machines for Cloud Services Pools (pools created with cloudServiceConfiguration), see Sizes for Cloud Services (https://azure.microsoft.com/documentation/articles/cloud- services-sizes-specs/). Batch supports all Cloud Services VM sizes except ExtraSmall, A1V2 and A2V2. For information about available VM sizes for Pools using Images from the Virtual Machines Marketplace (pools created with virtualMachineConfiguration) see Sizes for Virtual Machines (Linux) (https://azure.microsoft.com/documentation/articles/virtual- machines-linux-sizes/) or Sizes for Virtual Machines (Windows) (https://azure.microsoft.com/documentation/articles/virtual- machines-windows-sizes/). Batch supports all Azure VM sizes except STANDARD_A0 and those with premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series). Pool: Cloud Service Configuration Arguments
            this.Options = [this.Options, '--vm-size', varargin{:}];
        end

        function this = os_family(this, varargin)
            % Required. The Azure Guest OS family to be installed on the virtual machines in the Pool. Possible values are: 2 - OS Family 2, equivalent to Windows Server 2008 R2 SP1. 3 - OS Family 3, equivalent to Windows Server 2012. 4 - OS Family 4, equivalent to Windows Server 2012 R2. 5 - OS Family 5, equivalent to Windows Server 2016. 6 - OS Family 6, equivalent to Windows Server 2019. For more information, see Azure Guest OS Releases (https://azure.microsoft.com/documentation/articles/cloud- services-guestos-update-matrix/#releases).  Allowed values: 2, 3, 4, 5, 6.
            this.Options = [this.Options, '--os-family', varargin{:}];
        end

        function this = os_version(this, varargin)
            % The Azure Guest OS version to be installed on the virtual machines in the Pool. The default value is * which specifies the latest operating system version for the specified OS family. Pool: Start Task Arguments
            this.Options = [this.Options, '--os-version', varargin{:}];
        end

        function this = start_task_command_line(this, varargin)
            % Required. The command line of the StartTask. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en- us/azure/batch/batch-compute-node-environment-variables).
            this.Options = [this.Options, '--start-task-command-line', varargin{:}];
        end

        function this = start_task_resource_files(this, varargin)
            % A list of files that the Batch service will download to the Compute Node before running the command line.  There is a maximum size for the list of resource files. When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Files listed under this element are located in the Task's working directory. Space-separated resource references in filename=httpurl format.
            this.Options = [this.Options, '--start-task-resource-files', varargin{:}];
        end

        function this = start_task_wait_for_success(this, varargin)
            % Whether the Batch service should wait for the StartTask to complete successfully (that is, to exit with exit code 0) before scheduling any Tasks on the Compute Node. If true and the StartTask fails on a Node, the Batch service retries the StartTask up to its maximum retry count (maxTaskRetryCount). If the Task has still not completed successfully after all retries, then the Batch service marks the Node unusable, and will not schedule Tasks to it. This condition can be detected via the Compute Node state and failure info details. If false, the Batch service will not wait for the StartTask to complete. In this case, other Tasks can start executing on the Compute Node while the StartTask is still running; and even if the StartTask fails, new Tasks will continue to be scheduled on the Compute Node. The default is true. True if flag present. Pool: Virtual Machine Configuration Arguments
            this.Options = [this.Options, '--start-task-wait-for-success', varargin{:}];
        end

        function this = disk_encryption_targets(this, varargin)
            % A space separated list of DiskEncryptionTargets. current possible values include OsDisk and TemporaryDisk.
            this.Options = [this.Options, '--disk-encryption-targets', varargin{:}];
        end

        function this = image(this, varargin)
            % OS image reference. This can be either 'publisher:offer:sku[:version]' format, or a fully qualified ARM image id of the form '/subscriptions/{subscriptionId}/re sourceGroups/{resourceGroup}/providers/Microsoft.Compute/ima ges/{imageName}'. If 'publisher:offer:sku[:version]' format, version is optional and if omitted latest will be used. Valid values can be retrieved via 'az batch pool supported- images list'. For example: 'MicrosoftWindowsServer:WindowsSe rver:2012-R2-Datacenter:latest'.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = node_agent_sku_id(this, varargin)
            % Required. The SKU of the Batch Compute Node agent to be provisioned on Compute Nodes in the Pool. The Batch Compute Node agent is a program that runs on each Compute Node in the Pool, and provides the command-and-control interface between the Compute Node and the Batch service. There are different implementations of the Compute Node agent, known as SKUs, for different operating systems. You must specify a Compute Node agent SKU which matches the selected Image reference. To get the list of supported Compute Node agent SKUs along with their list of verified Image references, see the 'List supported Compute Node agent SKUs' operation. Pool: Virtual Machine Configuration: Disk Encryption Configuration Arguments
            this.Options = [this.Options, '--node-agent-sku-id', varargin{:}];
        end

        function this = targets(this, varargin)
            % The list of disk targets Batch Service will encrypt on the compute node. If omitted, no disks on the compute nodes in the pool will be encrypted. On Linux pool, only "TemporaryDisk" is supported; on Windows pool, "OsDisk" and "TemporaryDisk" must be specified. Space seperated target disks to be encrypted. Values can either be OsDisk or TemporaryDisk.
            this.Options = [this.Options, '--targets', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch pool create : Create a Batch pool in an account. When creating a pool, choose arguments')
            fprintf('%s\n', '    from either Cloud Services Configuration or Virtual Machine Configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --json-file                       : A file containing the pool specification in JSON (formatted')
            fprintf('%s\n', '                                        to match the respective REST API body). If this parameter is')
            fprintf('%s\n', '                                        specified, all ''Pool Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint                : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                     : Batch account key. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                    : Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pool Arguments')
            fprintf('%s\n', '    --application-licenses            : The list of application licenses the Batch service will make')
            fprintf('%s\n', '                                        available on each Compute Node in the Pool. The list of')
            fprintf('%s\n', '                                        application licenses must be a subset of available Batch')
            fprintf('%s\n', '                                        service application licenses. If a license is requested')
            fprintf('%s\n', '                                        which is not supported, Pool creation will fail. Space-')
            fprintf('%s\n', '                                        separated values.')
            fprintf('%s\n', '    --application-package-references  : The list of Packages to be installed on each Compute Node in')
            fprintf('%s\n', '                                        the Pool. Changes to Package references affect all new Nodes')
            fprintf('%s\n', '                                        joining the Pool, but do not affect Compute Nodes that are')
            fprintf('%s\n', '                                        already in the Pool until they are rebooted or reimaged.')
            fprintf('%s\n', '                                        There is a maximum of 10 Package references on any given')
            fprintf('%s\n', '                                        Pool. Space-separated application IDs with optional version')
            fprintf('%s\n', '                                        in ''id[#version]'' format.')
            fprintf('%s\n', '    --auto-scale-formula              : A formula for the desired number of compute nodes in the')
            fprintf('%s\n', '                                        pool. The formula is checked for validity before the pool is')
            fprintf('%s\n', '                                        created. If the formula is not valid, the Batch service')
            fprintf('%s\n', '                                        rejects the request with detailed error information. For')
            fprintf('%s\n', '                                        more information about specifying this formula, see')
            fprintf('%s\n', '                                        https://azure.microsoft.com/documentation/articles/batch-')
            fprintf('%s\n', '                                        automatic-scaling/.')
            fprintf('%s\n', '    --certificate-references          : The list of Certificates to be installed on each Compute')
            fprintf('%s\n', '                                        Node in the Pool. For Windows Nodes, the Batch service')
            fprintf('%s\n', '                                        installs the Certificates to the specified Certificate store')
            fprintf('%s\n', '                                        and location. For Linux Compute Nodes, the Certificates are')
            fprintf('%s\n', '                                        stored in a directory inside the Task working directory and')
            fprintf('%s\n', '                                        an environment variable AZ_BATCH_CERTIFICATES_DIR is')
            fprintf('%s\n', '                                        supplied to the Task to query for this location. For')
            fprintf('%s\n', '                                        Certificates with visibility of ''remoteUser'', a ''certs''')
            fprintf('%s\n', '                                        directory is created in the user''s home directory (e.g.,')
            fprintf('%s\n', '                                        /home/{user-name}/certs) and Certificates are placed in that')
            fprintf('%s\n', '                                        directory. Space-separated certificate thumbprints.')
            fprintf('%s\n', '    --enable-inter-node-communication : Whether the Pool permits direct communication between')
            fprintf('%s\n', '                                        Compute Nodes. Enabling inter-node communication limits the')
            fprintf('%s\n', '                                        maximum size of the Pool due to deployment restrictions on')
            fprintf('%s\n', '                                        the Compute Nodes of the Pool. This may result in the Pool')
            fprintf('%s\n', '                                        not reaching its desired size. The default value is false.')
            fprintf('%s\n', '                                        True if flag present.')
            fprintf('%s\n', '    --id                              : Required. A string that uniquely identifies the Pool within')
            fprintf('%s\n', '                                        the Account. The ID can contain any combination of')
            fprintf('%s\n', '                                        alphanumeric characters including hyphens and underscores,')
            fprintf('%s\n', '                                        and cannot contain more than 64 characters. The ID is case-')
            fprintf('%s\n', '                                        preserving and case-insensitive (that is, you may not have')
            fprintf('%s\n', '                                        two Pool IDs within an Account that differ only by case).')
            fprintf('%s\n', '    --max-tasks-per-node              : The maximum number of Tasks that can run concurrently on a')
            fprintf('%s\n', '                                        single Compute Node in the Pool. The default value is 1. The')
            fprintf('%s\n', '                                        maximum value is the smaller of 4 times the number of cores')
            fprintf('%s\n', '                                        of the vmSize of the Pool or 256.')
            fprintf('%s\n', '    --metadata                        : A list of name-value pairs associated with the Pool as')
            fprintf('%s\n', '                                        metadata. The Batch service does not assign any meaning to')
            fprintf('%s\n', '                                        metadata; it is solely for the use of user code. Space-')
            fprintf('%s\n', '                                        separated values in ''key=value'' format.')
            fprintf('%s\n', '    --resize-timeout                  : The timeout for allocation of Compute Nodes to the Pool.')
            fprintf('%s\n', '                                        This timeout applies only to manual scaling; it has no')
            fprintf('%s\n', '                                        effect when enableAutoScale is set to true. The default')
            fprintf('%s\n', '                                        value is 15 minutes. The minimum value is 5 minutes. If you')
            fprintf('%s\n', '                                        specify a value less than 5 minutes, the Batch service')
            fprintf('%s\n', '                                        returns an error; if you are calling the REST API directly,')
            fprintf('%s\n', '                                        the HTTP status code is 400 (Bad Request). Expected format')
            fprintf('%s\n', '                                        is an ISO-8601 duration.')
            fprintf('%s\n', '    --target-dedicated-nodes          : The desired number of dedicated Compute Nodes in the Pool.')
            fprintf('%s\n', '                                        This property must not be specified if enableAutoScale is')
            fprintf('%s\n', '                                        set to true. If enableAutoScale is set to false, then you')
            fprintf('%s\n', '                                        must set either targetDedicatedNodes,')
            fprintf('%s\n', '                                        targetLowPriorityNodes, or both.')
            fprintf('%s\n', '    --target-low-priority-nodes       : The desired number of low-priority Compute Nodes in the')
            fprintf('%s\n', '                                        Pool. This property must not be specified if enableAutoScale')
            fprintf('%s\n', '                                        is set to true. If enableAutoScale is set to false, then you')
            fprintf('%s\n', '                                        must set either targetDedicatedNodes,')
            fprintf('%s\n', '                                        targetLowPriorityNodes, or both.')
            fprintf('%s\n', '    --vm-size                         : Required. The size of virtual machines in the Pool. All')
            fprintf('%s\n', '                                        virtual machines in a Pool are the same size. For')
            fprintf('%s\n', '                                        information about available sizes of virtual machines for')
            fprintf('%s\n', '                                        Cloud Services Pools (pools created with')
            fprintf('%s\n', '                                        cloudServiceConfiguration), see Sizes for Cloud Services')
            fprintf('%s\n', '                                        (https://azure.microsoft.com/documentation/articles/cloud-')
            fprintf('%s\n', '                                        services-sizes-specs/). Batch supports all Cloud Services VM')
            fprintf('%s\n', '                                        sizes except ExtraSmall, A1V2 and A2V2. For information')
            fprintf('%s\n', '                                        about available VM sizes for Pools using Images from the')
            fprintf('%s\n', '                                        Virtual Machines Marketplace (pools created with')
            fprintf('%s\n', '                                        virtualMachineConfiguration) see Sizes for Virtual Machines')
            fprintf('%s\n', '                                        (Linux)')
            fprintf('%s\n', '                                        (https://azure.microsoft.com/documentation/articles/virtual-')
            fprintf('%s\n', '                                        machines-linux-sizes/) or Sizes for Virtual Machines')
            fprintf('%s\n', '                                        (Windows)')
            fprintf('%s\n', '                                        (https://azure.microsoft.com/documentation/articles/virtual-')
            fprintf('%s\n', '                                        machines-windows-sizes/). Batch supports all Azure VM sizes')
            fprintf('%s\n', '                                        except STANDARD_A0 and those with premium storage')
            fprintf('%s\n', '                                        (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series).')
            fprintf('%s\n', 'Pool: Cloud Service Configuration Arguments')
            fprintf('%s\n', '    --os-family                       : Required. The Azure Guest OS family to be installed on the')
            fprintf('%s\n', '                                        virtual machines in the Pool. Possible values are: 2 - OS')
            fprintf('%s\n', '                                        Family 2, equivalent to Windows Server 2008 R2 SP1. 3 - OS')
            fprintf('%s\n', '                                        Family 3, equivalent to Windows Server 2012. 4 - OS Family')
            fprintf('%s\n', '                                        4, equivalent to Windows Server 2012 R2. 5 - OS Family 5,')
            fprintf('%s\n', '                                        equivalent to Windows Server 2016. 6 - OS Family 6,')
            fprintf('%s\n', '                                        equivalent to Windows Server 2019. For more information, see')
            fprintf('%s\n', '                                        Azure Guest OS Releases')
            fprintf('%s\n', '                                        (https://azure.microsoft.com/documentation/articles/cloud-')
            fprintf('%s\n', '                                        services-guestos-update-matrix/#releases).  Allowed values:')
            fprintf('%s\n', '                                        2, 3, 4, 5, 6.')
            fprintf('%s\n', '    --os-version                      : The Azure Guest OS version to be installed on the virtual')
            fprintf('%s\n', '                                        machines in the Pool. The default value is * which specifies')
            fprintf('%s\n', '                                        the latest operating system version for the specified OS')
            fprintf('%s\n', '                                        family.')
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
            fprintf('%s\n', '                                        true. True if flag present.')
            fprintf('%s\n', 'Pool: Virtual Machine Configuration Arguments')
            fprintf('%s\n', '    --disk-encryption-targets         : A space separated list of DiskEncryptionTargets. current')
            fprintf('%s\n', '                                        possible values include OsDisk and TemporaryDisk.')
            fprintf('%s\n', '    --image                           : OS image reference. This can be either')
            fprintf('%s\n', '                                        ''publisher:offer:sku[:version]'' format, or a fully qualified')
            fprintf('%s\n', '                                        ARM image id of the form ''/subscriptions/{subscriptionId}/re')
            fprintf('%s\n', '                                        sourceGroups/{resourceGroup}/providers/Microsoft.Compute/ima')
            fprintf('%s\n', '                                        ges/{imageName}''. If ''publisher:offer:sku[:version]'' format,')
            fprintf('%s\n', '                                        version is optional and if omitted latest will be used.')
            fprintf('%s\n', '                                        Valid values can be retrieved via ''az batch pool supported-')
            fprintf('%s\n', '                                        images list''. For example: ''MicrosoftWindowsServer:WindowsSe')
            fprintf('%s\n', '                                        rver:2012-R2-Datacenter:latest''.')
            fprintf('%s\n', '    --node-agent-sku-id               : Required. The SKU of the Batch Compute Node agent to be')
            fprintf('%s\n', '                                        provisioned on Compute Nodes in the Pool. The Batch Compute')
            fprintf('%s\n', '                                        Node agent is a program that runs on each Compute Node in')
            fprintf('%s\n', '                                        the Pool, and provides the command-and-control interface')
            fprintf('%s\n', '                                        between the Compute Node and the Batch service. There are')
            fprintf('%s\n', '                                        different implementations of the Compute Node agent, known')
            fprintf('%s\n', '                                        as SKUs, for different operating systems. You must specify a')
            fprintf('%s\n', '                                        Compute Node agent SKU which matches the selected Image')
            fprintf('%s\n', '                                        reference. To get the list of supported Compute Node agent')
            fprintf('%s\n', '                                        SKUs along with their list of verified Image references, see')
            fprintf('%s\n', '                                        the ''List supported Compute Node agent SKUs'' operation.')
            fprintf('%s\n', 'Pool: Virtual Machine Configuration: Disk Encryption Configuration Arguments')
            fprintf('%s\n', '    --targets                         : The list of disk targets Batch Service will encrypt on the')
            fprintf('%s\n', '                                        compute node. If omitted, no disks on the compute nodes in')
            fprintf('%s\n', '                                        the pool will be encrypted. On Linux pool, only')
            fprintf('%s\n', '                                        "TemporaryDisk" is supported; on Windows pool, "OsDisk" and')
            fprintf('%s\n', '                                        "TemporaryDisk" must be specified. Space seperated target')
            fprintf('%s\n', '                                        disks to be encrypted. Values can either be OsDisk or')
            fprintf('%s\n', '                                        TemporaryDisk.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch pool create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
