pragma solidity ^0.8.16;

import '../JBTiered721DelegateDeployer.sol';
import '../JBTiered721DelegateProjectDeployer.sol';
import '../JBTiered721DelegateStore.sol';
import 'forge-std/Script.sol';

contract DeployMainnet is Script {
  IJBController jbController = IJBController(0xFFdD70C318915879d5192e8a0dcbFcB0285b3C98);
  IJBOperatorStore jbOperatorStore = IJBOperatorStore(0x6F3C5afCa0c9eDf3926eF2dDF17c8ae6391afEfb);

  JBTiered721DelegateDeployer delegateDeployer;
  JBTiered721DelegateProjectDeployer projectDeployer;
  JBTiered721DelegateStore store;

  function run() external {
    vm.startBroadcast();

    JBTiered721Delegate noGovernance = new JBTiered721Delegate();
    JB721GlobalGovernance globalGovernance = new JB721GlobalGovernance();
    JB721TieredGovernance tieredGovernance = new JB721TieredGovernance();

    delegateDeployer = new JBTiered721DelegateDeployer(
      globalGovernance,
      tieredGovernance,
      noGovernance
    );

    store = new JBTiered721DelegateStore();

    projectDeployer = new JBTiered721DelegateProjectDeployer(jbController, delegateDeployer, jbOperatorStore);

    console.log(address(projectDeployer));
    console.log(address(store));
  }
}

contract DeployGoerli is Script {
  IJBController jbController = IJBController(0xAF4a494E24bddc0AC898D782c3022df0b28cc6A8);
  IJBOperatorStore jbOperatorStore = IJBOperatorStore(0x739d23f90113d653c0062af93B52fa0BA63435E8);

  JBTiered721DelegateDeployer delegateDeployer;
  JBTiered721DelegateProjectDeployer projectDeployer;
  JBTiered721DelegateStore store;

  function run() external {
    vm.startBroadcast();

    JBTiered721Delegate noGovernance = new JBTiered721Delegate();
    JB721GlobalGovernance globalGovernance = new JB721GlobalGovernance();
    JB721TieredGovernance tieredGovernance = new JB721TieredGovernance();

    delegateDeployer = new JBTiered721DelegateDeployer(
      globalGovernance,
      tieredGovernance,
      noGovernance
    );

    store = new JBTiered721DelegateStore();

    projectDeployer = new JBTiered721DelegateProjectDeployer(jbController, delegateDeployer, jbOperatorStore);

    console.log(address(projectDeployer));
    console.log(address(store));
  }
}
