// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./HourglassRoles.sol";
import "./HourglassTBTs.sol";
import "./HourglassIndexes.sol";

library HourglassAddresses {
    ////////// Permissioned Addresses & Signers //////////

    /**
    * @notice   ROLE: ADMIN/UPGRADER
    * @notice   Type: Safe - Required Signer Count: 1/x
    * @notice   UPGRADER:           0x8e4f01b2ef10e587f670bbfd448bba9a57a36fd9c81549b587269120cb62b24d 
    * @notice   Contracts using this role:
    *               - HourglassCustodian
    *               - FeeManager
    *               - RewardsDistributor
    * @dev Added to Arbitrum (for emergency purposes only - otherwise use ARBITRUM_UPGRADER)
    */
    address public constant UPGRADER = address(0xb5B210919A53Ea9092De52EFF838bF8Af52c67ab);
    /// @notice Upgrader Safe Signers
    /// @notice Owner: Charlie - Type: EOA
    address public constant UPGRADER_SIGNER_1 = address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af);
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant UPGRADER_SIGNER_2 = address(0x99F90f800842a1E24855246556368FF68459096C);
    
    /**
    * @notice   ARBITRUM UPGRADER
    * @notice   Type: Safe - Required Signer Count: 1/x
    * @notice   UPGRADER:           0x8e4f01b2ef10e587f670bbfd448bba9a57a36fd9c81549b587269120cb62b24d 
    * @notice   Contracts using this role:
    *               - HourglassOracle
    * @notice Owner: Charlie - Type: EOA
    *   address public constant UPGRADER_SIGNER_1 = address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af);
    * @notice Owner: ZrowGz - Type: EOA
    *   ddress public constant UPGRADER_SIGNER_2 = address(0x99F90f800842a1E24855246556368FF68459096C);
    */
    address public constant ARBITRUM_UPGRADER = address(0xd3bb52BaF261a82a683C6Ca5f55EcbfB1d96756e);


    /**
    * @notice   Hourglass Deployer
    * @dev      After deployment, this address should retain no permissions!
    */
    address public constant HOURGLASS_DEPLOYER = 
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
    address public constant SETTER_MANAGER_1 = address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af);
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant SETTER_MANAGER_2 = address(0x80AFF4d057f725Fde71b15134630eeE4c5b716d2);

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
    address public constant PAUSER_1 = address(0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af);
    /// @notice Owner: ZrowGz - Type: EOA
    // address public constant PAUSER_2 = address(0x91111D3fbaa8C8F25ebE52243f0fe0549c22E258); deprecated
    /// @notice Owner: ZrowGz - Type: EOA
    address public constant PAUSER_3 = address(0x0d0448B1BC6eA4d3A6d23fB6d942A483740B0B0c);

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


    address public constant HOURGLASS_TOKEN = address(0x9C4ac8CACb116a65bAc5eA6F236709b2D11c0c7E);
    address public constant PITCH_BURNER = address(0x47Be0902f0B01d362DB88D174D2B173995A686AB);
    address public constant TIME_VESTING = address(0x704559A0f71665B0548E9aE70AD3E93cb959BA40);

    ////////// Hourblast Addresses //////////
    /**
     *  @notice HOURBLAST OWNER
     *  @notice SAFE 1/2 Signers:
     *          Signer 1: Charlie 0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af
     *          Signer 2: SETTER_MANAGER_2 0x80AFF4d057f725Fde71b15134630eeE4c5b716d2
     *  @notice Owns all Hourblast Contracts (see below)
     */
    address public constant HOURBLAST_OWNER = address(0x05463718F336C4F5A511ea8BE8F65DdC9347cc7A);
    /// Hourblast Contracts
    address public constant HOURBLAST = address(0x9D0fC9112fD2C6e87f70aDEB8C13B867F0165FEe);
    address public constant HOURBLAST_USD = address(0x5EF352e9dCE295D62D2e015DDbF07A0c448758b5);
    address public constant HOURBLAST_ETH = address(0xEeB5Bfe545af04Cf9864A0A507Ff0944047A254C);


    ////////// Hourglass Index Addresses //////////
    
    // TODO 
    /**
     *  @notice HFXB OWNER
     *  @notice SAFE 1/2 Signers:
     *          Signer 1: Charlie 0x3F2Bdc07B61f5Ff658F22C841a0eF505426216Af
     *          Signer 2: Zrowgz 0xfE12713e93B90284b5Ec74C272620097E8183e4B
     *          Signer 3: Bryce Temp 1: 0x071AAFb1906897763F26c74a6660BE4Cd8b80051
     *          Signer 4: Bryce Temp 2: 0xaB1034639C9798Af555d0FE4534CDd4D26CeDD91
     *          Signer 5: Adam: 0x3c2Fb1CDeeFf429674e25629406b41767B5dfC08
     *  @notice The Safe that controls HFXB Index
     */
    address public constant HFXB_FUND = address(0xBC0cC97A58c0B9AAe79C1EDA19B061eC24857Fcd);

}