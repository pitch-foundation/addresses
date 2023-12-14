// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract HourglassAddresses {


    ////////// Permissioned Addresses & Signers //////////

    /**
    * @notice   ROLE: ADMIN/UPGRADER
    * @notice   Type: Safe - Required Signer Count: 1/x
    * @notice   UPGRADER:           0x8e4f01b2ef10e587f670bbfd448bba9a57a36fd9c81549b587269120cb62b24d 
    * @notice   Contracts using this role:
    *               - HourglassCustodian
    *               - FeeManager
    *               - RewardsDistributor
    */
    address public constant UPGRADER = 
        address(0xb5B210919A53Ea9092De52EFF838bF8Af52c67ab);
    /// @notice Upgrader Safe Signers
    /// @notice Owner: Charlie - Type: EOA
    address public constant UPGRADER_SIGNER_1 = 
        address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af);
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant UPGRADER_SIGNER_2 = 
        // address(0xa8C94AE38B04140794A9394b76Ac6d0A83AC0B02);
        address(0x0c8E04aeC6DEE9588ebCFC0690e64A30705E10B2);
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant UPGRADER_SIGNER_3 = 
        address(0x99F90f800842a1E24855246556368FF68459096C);
    
    /**
    * @notice   Hourglass Deployer
    * @dev      After deployment, this address should retain no permissions!
    */
    address public constant DEPLOYER = 
        address(0xa8C94AE38B04140794A9394b76Ac6d0A83AC0B02);

    /**
    * @notice   ROLE: SETTER && REGISTRY_MANAGER
    * @notice   REGISTRY_MANAGER: 0x98384286fcdcbfa787823371d084455c0f6a6ca775c8f7c2623f3981b6390d54
    *           Contracts using this role:
    *               - HourglassCustodian
    * @notice   SETTER: 0x8e4f01b2ef10e587f670bbfd448bba9a57a36fd9c81549b587269120cb62b24d
    *           Contracts using this role:
    *               - HourglassDepositReceipt
    *               - FeeManager
    */
    /// @notice Owner: Charlie - Type: EOA
    address public constant SETTER_MANAGER_1 = 
        address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af);
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant SETTER_MANAGER_2 = 
        address(0x91111D3fbaa8C8F25ebE52243f0fe0549c22E258);
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant SETTER_MANAGER_3 = 
        address(0x80AFF4d057f725Fde71b15134630eeE4c5b716d2);

    /**
    * @notice   ROLE: CHECKPOINTER
    * @notice   CHECKPOINTER: 0xcc248bc24b61183ea1ffb7d8ab1560976dc4b64e39eab7e23a1c7b5dd946e81e
    * @notice   Contracts using this role:
    *              - RewardsDistributor
    * @notice   This address should also be the rewardsReceiver on the FeeManager.
    */
    // address public constant DISTRIBUTOR_CHECKPOINTER = 
    //     address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af); /// NOTE DEPRECATED
    /// @notice  SAFE 1/2 signers
    ///          Signer 1: CHECKPOINTER_SIGNER_1
    ///          Signer 2: UPGRADER_SIGNER_2
    address public constant DISTRIBUTOR_CHECKPOINTER = 
        address(0x2FBe0b34f7cDC94D1335a1D2A1ff507e5c17E509);
    /// @notice  Signer: TBIQ - Type: EOA
    address public constant CHECKPOINTER_SIGNER_1 = address(0xa996A0dd6115EDFf7F7fc876a88a8C0C421c88Ff);

        
    /**
    * @notice   ROLE: PAUSER
    * @notice   PAUSER: 0x539440820030c4994db4e31b6b800deafd503688728f932addfe7a410515c14c
    * @notice   Contracts using this role:
    *               - HourglassCustodian
    */
    /// @notice Owner: Charlie - Type: EOA
    address public constant PAUSER_1 = 
        address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af);
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant PAUSER_2 = 
        address(0x91111D3fbaa8C8F25ebE52243f0fe0549c22E258);
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant PAUSER_3 = 
        address(0x0d0448B1BC6eA4d3A6d23fB6d942A483740B0B0c);

    /////////// Non-Permissioned But Critical Addresses ///////////
    /** 
    * @notice   Receiver of all fees
    * @notice   Type: Safe - Required Signer Count: 1/x
    */
    address public constant FEE_RECEIVER = 
        address(0xcaF0E1D502e89C2167D512341A72D869D887A3d6);
    /// @notice Owner: Charlie - Type: EOA
    address public constant FEE_RECEIVER_SIGNER_1 = 
        address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af);


    /////////// Hourglass Protocol Addresses ///////////

    address public constant CUSTODIAN = address(0xF083C8e524B1DA5B557E89120a497Ce9a61f2CeA);
    address public constant REWARD_DISTRO = address(0x7F8bAc9C4605B29a55c3A8367D183236ADF2dfe8);
    address public constant FEE_MANAGER = address(0x6D38f4F38Fd28b166967563a31994C49d6F5b32C);
    address public constant ERC20_INTERMEDIARY = address(0xC61d69A75047d55d43C214DecA54cbB38E95bFA5);

    address public constant HOURGLASS_TOKEN = address(0x9C4ac8CACb116a65bAc5eA6F236709b2D11c0c7E);
    address public constant PITCH_BURNER = address(0x47Be0902f0B01d362DB88D174D2B173995A686AB);
    address public constant TIME_VESTING = address(0x704559A0f71665B0548E9aE70AD3E93cb959BA40);
    
    ///// Asset Specific Addresses /////

    /// Asset 0 /// - DEPRECATED
    // address public asset0VaultImplementation =  address(0x6481878CbcF62f41f9eF08695999b24C2D1717a3);
    // address public asset0MatureVault =          address(0x45334DBB33b8d737682FB2ecDC0B455E0a1685E3);
    // address public asset0Receipt1155 =          address(0x8945cca2d2E822399C0e8254cCDDe203ae5E0933);
    // address public asset0DepositToken=          address(0xf43211935C781D5ca1a41d2041F397B8A7366C7A); // frxETHCRV
    // address public asset0StakingStrategy =      address(0xa537d64881b84faffb9Ae43c951EEbF368b71cdA); // frax farm cvxstkfrxETHCRV

    /// Asset 1 /// frxETHCRV
    address public asset1VaultImplementation =  address(0x6481878CbcF62f41f9eF08695999b24C2D1717a3);
    address public asset1MatureVault =          address(0x45334DBB33b8d737682FB2ecDC0B455E0a1685E3);
    address public asset1Receipt1155 =          address(0xa2d6A0Af3a07ac57a2190a36ba0388E2C0ACA3D5);
    address public asset1DepositToken=          address(0xf43211935C781D5ca1a41d2041F397B8A7366C7A); // frxETHCRV
    address public asset1StakingStrategy =      address(0xa537d64881b84faffb9Ae43c951EEbF368b71cdA);// frax farm cvxstkfrxETHCRV

    /// Asset 2 /// Frax BP
    address public asset2Vault =                address(0xcB03A0a4A205dFB1a0B79CE08C89978f3763872A);
    address public asset2Mature =               address(0x3b07fDbaDf9f8069725Ba6f8b0187614Ae8F6654);
    address public asset2Receipt =              address(0xB2367591FD00CE295B1Cd519fAD66cf5192a830c);
    address public asset2DepositToken=          address(0x3175Df0976dFA876431C2E9eE6Bc45b65d3473CC); // frxETHCRV
    address public asset2StakingStrategy =      address(0x963f487796d54d2f27bA6F3Fbe91154cA103b199);// frax farm cvxstkfrxETHCRV
}