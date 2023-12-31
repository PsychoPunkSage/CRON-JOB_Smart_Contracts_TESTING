// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "../lib/forge-std/src/Script.sol";
import {Counter} from "../src/Counter.sol";

contract DeployCounter is Script {
    function run() external returns (Counter) {
        vm.startBroadcast();
        Counter counter = new Counter(0);
        vm.stopBroadcast();
        return counter;
    }
}
