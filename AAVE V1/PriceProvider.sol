pragma solidity ^0.5.0;

library EthAddressLib {

    /**
    * @dev returns the address used within the protocol to identify ETH
    * @return the address assigned to ETH
     */
    function ethAddress() internal pure returns(address) {
        return 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    }
}

/**
* @title IPriceOracleGetter interface
* @notice Interface for the Aave price oracle.
**/
interface IPriceOracleGetter {
    /**
    * @dev returns the asset price in ETH
    * @param _asset the address of the asset
    * @return the ETH price of the asset
    **/
    function getAssetPrice(address _asset) external view returns (uint256);
}

contract PriceProvider is IPriceOracleGetter {
    /// @notice Gets an asset price by address
    /// @param _asset The asset address
    function getAssetPrice(address _asset) public view returns(uint256) {
        if (_asset == EthAddressLib.ethAddress()) {
            return 1 ether;
        } else {
            return uint256(500000000000000000);
        }
    }
}
