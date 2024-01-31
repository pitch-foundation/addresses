// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

library HourglassRoles {
    ////////// Roles //////////
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    bytes32 public constant UPGRADER = keccak256("UPGRADER");
    bytes32 public constant DEPLOYER = keccak256("DEPLOYER");
    bytes32 public constant REGISTRY_MANAGER = keccak256("REGISTRY_MANAGER");
}