classdef testGroupCommands < matlab.unittest.TestCase
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
        
        function testAzListGroups(testCase)
            azlg = az.group.list();
            testCase.assertClass(azlg, 'az.group.list');
            out = azlg.run();
            testCase.verifyClass(out, 'struct');
        end

        function testAzCreateGroup(testCase)
            % Create group
            azgc = az.group.create();
            testCase.assertClass(azgc, 'az.group.create');
            rgName = sprintf('azcli_unittest_%s', datestr(now,30));
            azgc.name(rgName);
            rgLocation = 'westeurope';
            azgc.location(rgLocation);
            result = azgc.run();
            testCase.verifyClass(result, 'struct');
            
            % Show group
            azgs = az.group.show();
            testCase.assertClass(azgs, 'az.group.show');
            azgs.name(rgName);
            gsr = azgs.run();
            
            testCase.verifyClass(gsr, 'struct');
            testCase.verifyEqual(rgLocation, gsr.location, 'Location should be correct');
            testCase.verifyEqual(rgName, gsr.name, 'Name should be correct');
            
            % Delete group
            azgd = az.group.delete();
            testCase.assertClass(azgd, 'az.group.delete');
            azgd.name(rgName);
            azgd.yes();
            gdr = azgd.run();
            testCase.verifyClass(gdr, 'char');
            testCase.verifyEmpty(gdr, 'A delete gives no real return values');
        end
    end
    
end

