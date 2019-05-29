/**
 * A helper to return the code size of a contract.
 */

pragma solidity >=0.4.24 <0.6.0;

contract CodeSize {

    function getCodeSize(address _addr)
      public
      view
      returns (uint256)
    {
      uint256 size;
      assembly {
        size := extcodesize(_addr)
      }
      return size;
    }

}
