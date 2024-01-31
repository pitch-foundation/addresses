// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

library HourglassTBTs {
    /**
     * @dev Custodian admin is HourglassAddresses.UPGRADER
     */
    /// TBT Protocol Contracts
    address public constant CUSTODIAN = address(0xF083C8e524B1DA5B557E89120a497Ce9a61f2CeA);
    address public constant REWARD_DISTRO = address(0x7F8bAc9C4605B29a55c3A8367D183236ADF2dfe8);
    address public constant FEE_MANAGER = address(0x6D38f4F38Fd28b166967563a31994C49d6F5b32C);
    address public constant ERC20_INTERMEDIARY = address(0xC61d69A75047d55d43C214DecA54cbB38E95bFA5);


    /// Asset 0 /// - DEPRECATED
    // address public constant asset0VaultImplementation =  address(0x6481878CbcF62f41f9eF08695999b24C2D1717a3);
    // address public constant asset0MatureVault =          address(0x45334DBB33b8d737682FB2ecDC0B455E0a1685E3);
    // address public constant asset0Receipt1155 =          address(0x8945cca2d2E822399C0e8254cCDDe203ae5E0933);
    // address public constant asset0DepositToken=          address(0xf43211935C781D5ca1a41d2041F397B8A7366C7A); // frxETHCRV
    // address public constant asset0StakingStrategy =      address(0xa537d64881b84faffb9Ae43c951EEbF368b71cdA); // frax farm cvxstkfrxETHCRV

    /// Asset 1 /// frxETHCRV
    address public constant asset1VaultImplementation =  address(0x6481878CbcF62f41f9eF08695999b24C2D1717a3);
    address public constant asset1MatureVault =          address(0x45334DBB33b8d737682FB2ecDC0B455E0a1685E3);
    address public constant asset1Receipt1155 =          address(0xa2d6A0Af3a07ac57a2190a36ba0388E2C0ACA3D5);
    address public constant asset1DepositToken=          address(0xf43211935C781D5ca1a41d2041F397B8A7366C7A); // frxETHCRV
    address public constant asset1StakingStrategy =      address(0xa537d64881b84faffb9Ae43c951EEbF368b71cdA);// frax farm cvxstkfrxETHCRV

    /// Asset 2 /// Frax BP
    address public constant asset2Vault =                address(0xcB03A0a4A205dFB1a0B79CE08C89978f3763872A);
    address public constant asset2Mature =               address(0x3b07fDbaDf9f8069725Ba6f8b0187614Ae8F6654);
    address public constant asset2Receipt =              address(0xB2367591FD00CE295B1Cd519fAD66cf5192a830c);
    address public constant asset2DepositToken=          address(0x3175Df0976dFA876431C2E9eE6Bc45b65d3473CC); // frxETHCRV
    address public constant asset2StakingStrategy =      address(0x963f487796d54d2f27bA6F3Fbe91154cA103b199);// frax farm cvxstkfrxETHCRV
}