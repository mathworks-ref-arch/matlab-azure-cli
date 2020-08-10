classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az storage fs access set : Set the access control properties of a path(directory or file) in
            % Azure Data Lake Storage Gen2 account.
            this.BaseCmd = 'az storage fs access set ';
        end
        function this = file_system(this, varargin)
            % File system name.
            this.Options = [this.Options, '--file-system', varargin{:}];
        end

        function this = path(this, varargin)
            % The path to a file or directory in the specified file system.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = acl(this, varargin)
            % Invalid in conjunction with acl. POSIX access control rights on files and directories in the format "[scope:][type]:[id]:[permissions]". e.g. "user::rwx,group::r--,other::---,mask::rwx". The value is a comma-separated list of access control entries. Each access control entry (ACE) consists of a scope, a type, a user or group identifier, and permissions in the format "[scope:][type]:[id]:[permissions]". The scope must be "default" to indicate the ACE belongs to the default ACL for a directory; otherwise scope is implicit and the ACE belongs to the access ACL. There are four ACE types: "user" grants rights to the owner or a named user, "group" grants rights to the owning group or a named group, "mask" restricts rights granted to named users and the members of groups, and "other" grants rights to all users not found in any of the other entries. The user or group identifier is omitted for entries of type "mask" and "other". The user or group identifier is also omitted for the owner and owning group. For example, the following ACL grants read, write, and execute rights to the file owner an john.doe@contoso, the read right to the owning group, and nothing to everyone else: "user::rwx,user:john.doe@contoso:rwx,group::r--,other::---,mask::rwx". For more information, please refer to https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage- access-control.
            this.Options = [this.Options, '--acl', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = group(this, varargin)
            % The owning group of the file or directory. The group Azure Active Directory object ID or user principal name to set as the owning group. For more information, please refer to https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake- storage-access-control#changing-the-owning-group.
            this.Options = [this.Options, '--group', varargin{:}];
        end

        function this = owner(this, varargin)
            % The owning user of the file or directory. The user Azure Active Directory object ID or user principal name to set as the owner. For more information, please refer to https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake- storage-access-control#the-owning-user.
            this.Options = [this.Options, '--owner', varargin{:}];
        end

        function this = permissions(this, varargin)
            % Invalid in conjunction with acl. POSIX access permissions for the file owner, the file owning group, and others. Each class may be granted read(r), write(w), or execute(x) permission. Both symbolic (rwxrw-rw-) and 4-digit octal notation (e.g. 0766) are supported.'. Storage Account Arguments
            this.Options = [this.Options, '--permissions', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Storage account key. Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Storage account name. Related environment variable: AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage account key or a SAS token. If neither are present, the command will try to query the storage account key using the authenticated Azure account. If a large number of storage commands are executed the API quota may be hit.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Storage account connection string. Environment variable: AZURE_STORAGE_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = sas_token(this, varargin)
            % A Shared Access Signature (SAS). Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.
            this.Options = [this.Options, '--sas-token', varargin{:}];
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
            fprintf('%s\n', '    az storage fs access set : Set the access control properties of a path(directory or file) in')
            fprintf('%s\n', '    Azure Data Lake Storage Gen2 account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file-system -f [Required] : File system name.')
            fprintf('%s\n', '    --path -p        [Required] : The path to a file or directory in the specified file system.')
            fprintf('%s\n', '    --acl                       : Invalid in conjunction with acl. POSIX access control rights on')
            fprintf('%s\n', '                                  files and directories in the format')
            fprintf('%s\n', '                                  "[scope:][type]:[id]:[permissions]". e.g.')
            fprintf('%s\n', '                                  "user::rwx,group::r--,other::---,mask::rwx".')
            fprintf('%s\n', '        The value is a comma-separated list of access control entries. Each access control entry')
            fprintf('%s\n', '        (ACE) consists of a scope, a type, a user or group identifier, and permissions in the format')
            fprintf('%s\n', '        "[scope:][type]:[id]:[permissions]". The scope must be "default" to indicate the ACE belongs')
            fprintf('%s\n', '        to the default ACL for a directory; otherwise scope is implicit and the ACE belongs to the')
            fprintf('%s\n', '        access ACL. There are four ACE types: "user" grants rights to the owner or a named user,')
            fprintf('%s\n', '        "group" grants rights to the owning group or a named group, "mask" restricts rights granted')
            fprintf('%s\n', '        to named users and the members of groups, and "other" grants rights to all users not found')
            fprintf('%s\n', '        in any of the other entries. The user or group identifier is omitted for entries of type')
            fprintf('%s\n', '        "mask" and "other". The user or group identifier is also omitted for the owner and owning')
            fprintf('%s\n', '        group. For example, the following ACL grants read, write, and execute rights to the file')
            fprintf('%s\n', '        owner an john.doe@contoso, the read right to the owning group, and nothing to everyone else:')
            fprintf('%s\n', '        "user::rwx,user:john.doe@contoso:rwx,group::r--,other::---,mask::rwx". For more information,')
            fprintf('%s\n', '        please refer to https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-')
            fprintf('%s\n', '        access-control.')
            fprintf('%s\n', '    --auth-mode                 : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                  use your login credentials for the authentication. The legacy')
            fprintf('%s\n', '                                  "key" mode will attempt to query for an account key if no')
            fprintf('%s\n', '                                  authentication parameters for the account are provided.')
            fprintf('%s\n', '                                  Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                  key, login.')
            fprintf('%s\n', '    --group                     : The owning group of the file or directory. The group Azure Active')
            fprintf('%s\n', '                                  Directory object ID or user principal name to set as the owning')
            fprintf('%s\n', '                                  group. For more information, please refer to')
            fprintf('%s\n', '                                  https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-')
            fprintf('%s\n', '                                  storage-access-control#changing-the-owning-group.')
            fprintf('%s\n', '    --owner                     : The owning user of the file or directory. The user Azure Active')
            fprintf('%s\n', '                                  Directory object ID or user principal name to set as the owner.')
            fprintf('%s\n', '                                  For more information, please refer to')
            fprintf('%s\n', '                                  https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-')
            fprintf('%s\n', '                                  storage-access-control#the-owning-user.')
            fprintf('%s\n', '    --permissions               : Invalid in conjunction with acl. POSIX access permissions for the')
            fprintf('%s\n', '                                  file owner, the file owning group, and others. Each class may be')
            fprintf('%s\n', '                                  granted read(r), write(w), or execute(x) permission. Both symbolic')
            fprintf('%s\n', '                                  (rwxrw-rw-) and 4-digit octal notation (e.g. 0766) are')
            fprintf('%s\n', '                                  supported.''.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key               : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                  account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name              : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                  AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                  storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                  command will try to query the storage account key using the')
            fprintf('%s\n', '                                  authenticated Azure account. If a large number of storage commands')
            fprintf('%s\n', '                                  are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string         : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                  AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                 : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                                  storage account name. Environment variable:')
            fprintf('%s\n', '                                  AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Set the access control list of a path.')
            fprintf('%s\n', '        az storage fs access set --acl "user::rwx,group::r--,other::---" -p dir -f myfilesystem')
            fprintf('%s\n', '        --account-name mystorageaccount --account-key 0000-0000')
            fprintf('%s\n', '    Set permissions of a path.')
            fprintf('%s\n', '        az storage fs access set --permissions "rwxrwx---" -p dir -f myfilesystem --account-name')
            fprintf('%s\n', '        mystorageaccount --account-key 0000-0000')
            fprintf('%s\n', '    Set owner of a path.')
            fprintf('%s\n', '        az storage fs access set --owner example@microsoft.com -p dir -f myfilesystem --account-name')
            fprintf('%s\n', '        mystorageaccount --account-key 0000-0000')
            fprintf('%s\n', '    Set owning group of a path.')
            fprintf('%s\n', '        az storage fs access set --group 68390a19-a897-236b-b453-488abf67b4dc -p dir -f myfilesystem')
            fprintf('%s\n', '        --account-name mystorageaccount --account-key 0000-0000')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage fs access set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
