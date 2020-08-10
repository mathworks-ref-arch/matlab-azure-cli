classdef testBasicCommands < matlab.unittest.TestCase
    % testBasicCommands Unit tests for the Azure CLI
    
    % Copyright (c) 2020, The MathWorks, Inc.

    properties
    end
    
    methods (TestMethodSetup)
        function testSetup(testCase)
            import matlab.unittest.fixtures.TemporaryFolderFixture;
            import matlab.unittest.fixtures.CurrentFolderFixture;
            
            % Create a temporary folder and make it the current working
            % folder.
            tempFolder = testCase.applyFixture(TemporaryFolderFixture);
            testCase.applyFixture(CurrentFolderFixture(tempFolder.Folder));
            
        end
    end
    
    methods (TestMethodTeardown)
        function testTearDown(testCase)
            
        end
    end
    
    
    methods (Test)
        function testAzVersion(testCase)
            
            try
                out = evalc('az.version()');
            catch ME
                testCase.assertTrue(false, ...
                    sprintf('az.version() should work:\n\t%s', ME.message));
            end
            keywords = {'azure-cli', 'core', 'telemetry', 'Python', 'CLI'};
            for k=1:length(keywords)
                testCase.verifyNotEmpty(regexp(out, keywords{k}), ...
                    sprintf('There should be some output containing %s', keywords{k}));
            end
        end
                
        function testAzRBAC(testCase)
               azasc = az.ad.sp.create_for_rbac();
               testCase.assertClass(azasc, 'az.ad.sp.create_for_rbac');
               rbacName = sprintf('azcli_unittest_%s', datestr(now,30));
               azasc.name(rbacName);
               
               out = azasc.run();
               testCase.verifyClass(out, 'struct');
               
               % Wait a bit, to let it be created
               pause(10);
               
               azass = az.ad.sp.show();
               testCase.assertClass(azass, 'az.ad.sp.show');
               azass.id(out.appId);
               outShow = azass.run();
               testCase.verifyClass(outShow, 'struct');
               testCase.verifyEqual(outShow.appDisplayName, out.displayName, 'Names should be equal');
               
               azadsd = az.ad.sp.delete();
               testCase.assertClass(azadsd, 'az.ad.sp.delete');
               azadsd.id(out.appId)
               azadsd.run();
               
 
        end
    end
    
end

