// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

library HourglassAddresses {
    /// @notice Hourglass Index Contracts
    address public constant INDEX_FACTORY = address(0x174668d0aD180C8046b0F7321c986Ba99505FEC8);
    address public constant INDEX_FACTORY_IMPL = address(0x47771D238c27daB30439c3F04439Dc39E2Ea26F9);


    /// @notice HFXB INDEX
    /// @dev ERC20 Index Version index: 0
    /// @dev HFXB Deployment Index: 0 
    /// 
    address public constant HFXB_INDEX_BEACON = address(0x4a078b5157A8b89FD18982F79A3238D929b8d935);
    address public constant HFXB_QUEUE_BEACON = address(0x71E54B7Df338Cd7697A78ad05008099b44F5AC73);
    address public constant HFXB = address(0x7b7b3a3338e7Cb59DFD2571a91BeE43E0EC606C0);
    address public constant HFXB_WITHDRAWAL_QUEUE = address(0x8A9649feeA978112547A1050FBC8eAB6524e0ba4);
    address public constant HFXB_INDEX_IMPL = address(0xf3De771AC92505786826eEEc3Bd2E320D45D18cb);
    address public constant HFXB_WITHDRAWAL_QUEUE_IMPL = address(0x33a0B4aBBa5657b842C6b3CBAC2341010CDe2Ac8);
}