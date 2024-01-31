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
     * signer: zrowgz type: EOA address: 0xfE12713e93B90284b5Ec74C272620097E8183e4B
     * @notice Index Factory Registry Manager Role
     * signer: zrowgz type: EOA address: 0xfE12713e93B90284b5Ec74C272620097E8183e4B
     */
    uint256 public constant HFXB_DEPLOYMENT_INDEX = 1; // deployment stored in index index 1
    address public constant HFXB = address(0x743187e8b302775c8E39E3b19E337982aC260134);
    address public constant HFXB_WITHDRAWAL_QUEUE = address(0x84161EF3bb74025f7F7Bf10D9DEC07308e45B02F);
    // address public constant HFXB = address(0x7b7b3a3338e7Cb59DFD2571a91BeE43E0EC606C0); // previous SFRAX version at deployment index 0
    // address public constant HFXB_WITHDRAWAL_QUEUE = address(0x8A9649feeA978112547A1050FBC8eAB6524e0ba4);
}