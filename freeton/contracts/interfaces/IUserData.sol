pragma ton-solidity ^0.39.0;
pragma AbiHeader expire;


interface IUserData {
    struct UserDataDetails {
        uint256 amount;
        uint256 rewardDebt;
        address farmPool;
        address user;
    }

    function getDetails() external responsible view returns (UserDataDetails);
    function processDeposit(uint64 nonce, uint256 _amount, uint256 _accTonPerShare) external;
    function processWithdraw(uint256 _amount, uint256 _accTonPerShare, address send_gas_to) external;
    function processSafeWithdraw(address send_gas_to) external;
    function processWithdrawAll(uint256 _accTonShare, address send_gas_to) external;
}
