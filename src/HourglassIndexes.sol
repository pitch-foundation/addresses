// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

library HourglassIndexes {
    /// @notice Hourglass Index Contracts
    address public constant INDEX_FACTORY = address(0x174668d0aD180C8046b0F7321c986Ba99505FEC8);
    address public constant INDEX_FACTORY_IMPL = address(0x47771D238c27daB30439c3F04439Dc39E2Ea26F9);

    // Versions 
    uint256 public constant ERC20_VERSION_INDEX = 0; // ERC20 Indexes use 0
    address public constant ERC20_INDEX_BEACON = address(0x4a078b5157A8b89FD18982F79A3238D929b8d935);
    address public constant ERC20_QUEUE_BEACON = address(0x71E54B7Df338Cd7697A78ad05008099b44F5AC73);
    address public constant ERC20_INDEX_IMPL = address(0xf3De771AC92505786826eEEc3Bd2E320D45D18cb);
    address public constant ERC20_WITHDRAWAL_QUEUE_IMPL = address(0x33a0B4aBBa5657b842C6b3CBAC2341010CDe2Ac8);


    /// @notice HFXB INDEX
    /**
     * @notice Index Factory Deployer Role
     * signer: Hourglass Deployer
     * @notice Index Factory Registry Manager Role
     * signer: Hourglass Deployer
     */
    uint256 public constant HFXB_DEPLOYMENT_INDEX = 1; // deployment stored in index index 1
    address public constant HFXB = address(0x743187e8b302775c8E39E3b19E337982aC260134);
    address public constant HFXB_WITHDRAWAL_QUEUE = address(0x84161EF3bb74025f7F7Bf10D9DEC07308e45B02F);
    // arbitrum deployments
    address public constant HFXB_ARBITRUM = address(0x0b7B0DaCAc5BA5359E01BB4F19aBfa174719cee2);
    address public constant ARBITRUM_HFXB_ORACLE_UPDATER = address(0x0BaF2F9E4D48003eb248Ac234fC26022D60b678f);
    address public constant ARBITRUM_HFXB_ORACLE = 0xDa6CdF1C8336636c3e35e3064AC5610AB9Bdf957;
    address public constant arb_hfxb_oracle_impl = 0x152442044C82a3D2994d34Ce3De2F5FD8696aD34;
    address public constant ARB_CRV_HFXB_LP = address(0x8f5d46267EB52F3aA6E141004A781469D445888c);
    address public constant ARB_CRV_HFXB_GAUGE = address(0x725E997571F4fD144bB741762E8fA9f1D11761a7);
    address public constant ETH_CRV_HFXB_GAUGE = address(0x725E997571F4fD144bB741762E8fA9f1D11761a7);
    // address public constant ARBITRUM_HFXB_ORACLE = address(0x0133EF87c788C19C27fEEc93BfB4515176FDD67c);
    // address public constant ARB_CRV_HFXB_LP = address(0xC9bF909acf287C64c4799D9F38eEaB4a3491C307);





    // address public constant HFXB = address(0x7b7b3a3338e7Cb59DFD2571a91BeE43E0EC606C0); // previous SFRAX version at deployment index 0
    // address public constant HFXB_WITHDRAWAL_QUEUE = address(0x8A9649feeA978112547A1050FBC8eAB6524e0ba4);
}