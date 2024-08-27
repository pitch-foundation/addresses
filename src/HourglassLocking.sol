// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

library HourglassLocking {
    /// @notice Hourglass Locking Deployments
    /// @notice The addresses of each vault & the associated ERC20 tokens can be obtained via the `./ContractsAPI/contracts_extractor.py` script from the API

    /// @notice Seaport Related Contracts
    address public constant CONDUIT_CAPTAIN = 0x74Cb6A9d5B441aFA867e48C6cE6f3d60B49fF168;
    address public constant CONDUIT = 0x9352dA82F42c5bDDe9F0b2C19D635baE39142dD8;
    bytes32 public constant CONDUIT_KEY = 0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02000000000000000000000000;
    address public constant POINTS_GENERATOR_ZONE = 0x5281F798E15ef6ea44E64a702D8eDE0abC765F65;

    /// @notice Ethereum Mainnet
    address public constant LOCKING_FACTORY = 0x679619FA685a18782a86dD5850124A75E83daD8F;
    
    /// @notice Versions
    // version 0
    uint256 public constant LOCKING_FACTORY_VERSION = 0;
    address public constant VERSION_0_BEACON = 0xa49398C14016C3069713dE1D6811b43d7A3896B2;
    address public constant VERSION_0_IMPL = 0x0F2Ab62e91B115167dF40045477A55d3FFd0f1aa;
    // version 1
    uint256 public constant LOCKING_FACTORY_VERSION_1 = 1;
    address public constant VERSION_1_BEACON = 0xA10451d034f6947909515b10B9F197bB9c193A6e;
    address public constant VERSION_1_IMPL = 0x85A24B0D417dE23bb322FE8cCBB2E01EDd9D1Ad2;
    // version 2
    uint256 public constant LOCKING_FACTORY_VERSION_2 = 2;
    address public constant VERSION_2_BEACON = 0x917f0472D1fb8d8EC08B3774f16F917882Cc2416;
    address public constant VERSION_2_IMPL = 0xA7Ba1f5f4598981Bd7129dD9a7ACe990622f42bf;
    // version 3
    /** 
        - Difference from V2 is that this is named as a generalized depositor for liquid etherfi addresses
        - This is used for etherfi "boring vaults" that utilize an accountant & teller & are NOT atomically transferrable
     */
    uint256 public constant LOCKING_FACTORY_VERSION_3 = 3;
    address public constant VERSION_3_BEACON = 0x8bc8B708D3DAa52d33505A5FB71f5f9f4662A109;
    address public constant VERSION_3_IMPL = 0xCd73a3616B21c74Ef81f4B7879bf3e15947Fd9bd;

    /// @notice Vaults by version

    /// @notice Mantle Mainnet
    address public constant MANTLE_UPGRADER = 0xb9d9d84d85E58dCD180260F4737697eC33093aE2;
    address public constant MANTLE_FACTORY = address(0x0);
    address public constant MANTLE_FACTORY_IMPL = address(0x0);
    address public constant MANTLE_CONDUIT_CAPTAIN = 0x1422CA8874df782A417BB0a24902bD24D5f7D9E5;
    address public constant MANTLE_CONDUIT = 0x9352dA82F42c5bDDe9F0b2C19D635baE39142dD8;
    bytes32 public constant MANTLE_CONDUIT_KEY = 0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02000000000000000000000000;
    address public constant MANTLE_POINTS_GENERATOR_ZONE = 0x83294F4d84EDC6dd20e85D73cE132D2600cc0772;
}