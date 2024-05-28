// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import { SimulatorV1 } from "src/SimulatorV1.sol";

contract DeploySimV1 is Script {
    function setUp() public {}

    function run() external returns (SimulatorV1 simV1) {
        // vm.broadcast();
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        simV1 = new SimulatorV1();

    }
}
