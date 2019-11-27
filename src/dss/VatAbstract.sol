pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/vat.sol
contract VatAbstract {
    mapping (address => uint) public wards;
    function rely(address) external;
    function deny(address) external;
    struct Ilk {
        uint256 Art;   // Total Normalised Debt     [wad]
        uint256 rate;  // Accumulated Rates         [ray]
        uint256 spot;  // Price with Safety Margin  [ray]
        uint256 line;  // Debt Ceiling              [rad]
        uint256 dust;  // Urn Debt Floor            [rad]
    }
    struct Urn {
        uint256 ink;   // Locked Collateral  [wad]
        uint256 art;   // Normalised Debt    [wad]
    }    
    mapping (address => mapping (address => uint256)) public can;
    function hope(address) external;
    function ilks(bytes32) external view returns (Ilk);
    mapping (bytes32 => Ilk) public ilks;
    mapping (bytes32 => mapping (address => Urn)) public urns;
    mapping (bytes32 => mapping (address => uint256)) public gem;  // [wad]
    mapping (address => uint256) public dai;  // [rad]
    mapping (address => uint256) public sin;  // [rad]
    uint256 public debt;  // Total Dai Issued    [rad]
    uint256 public vice;  // Total Unbacked Dai  [rad]
    uint256 public Line;  // Total Debt Ceiling  [rad]
    uint256 public live;  // Access Flag
    function init(bytes32) external;
    function file(bytes32, uint256) external;
    function file(bytes32, bytes32) external;
    function cage() external;
    function slip(bytes32, address, int256) external;
    function flux(bytes32, address, address, uint256) external;
    function move(address, address, uint256) external;
    function frob(bytes32, address, address, address, int256, int256) external;
    function fork(bytes32, address, address, int256, int256) external;
    function grab(bytes32, address, address, address, int256, int256) external;
    function heal(uint256) external;
    function suck(address, address, uint256) external;
    function fold(bytes32, address, int256) external;    
}
