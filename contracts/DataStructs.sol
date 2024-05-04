// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title
 * @author
 */
contract DataStructs {
    // State variables
    uint public simpleInteger;
    string public simpleString;
    address public userAddress;
    bool public simpleBoolean;

    // Array
    uint[] public numberArray;

    // Mapping with address keys
    mapping(address => uint) public balances;

    // Mapping with string keys and int values
    mapping(string => uint) public stringToInt;

    // Mapping with int keys and string values
    mapping(uint => string) public intToString;

    // Struct definition
    struct User {
        string name;
        uint age;
        mapping(address => uint) friendBalances; // Mapping within a struct
    }

    // Array of structs
    User[] public users;

    // Mapping of mapping
    mapping(address => mapping(address => bool)) public isFriend;

    // Array of arrays
    uint[][] public matrix;

    // Events
    event NumberChanged(uint newValue);
    event UserAdded(string name, uint age);

    // Constructor
    constructor() {
        simpleInteger = 100;
        simpleString = "Hello, World!";
        userAddress = msg.sender;
        simpleBoolean = true;
    }

    // Function to set a number
    function setNumber(uint _num) public {
        simpleInteger = _num;
        emit NumberChanged(_num);
    }

    // Function to add a number to the array
    function addNumberToArray(uint _num) public {
        numberArray.push(_num);
    }

    // Function to set a string
    function setString(string memory _str) public {
        simpleString = _str;
    }

    // Function to update balance in mapping
    function updateBalance(address _user, uint _balance) public {
        balances[_user] = _balance;
    }

    // Function to add a user
    function addUser(string memory _name, uint _age) public {
        User storage newUser = users.push();
        newUser.name = _name;
        newUser.age = _age;
        emit UserAdded(_name, _age);
    }

    // Function to set a string to int mapping
    function setStringToInt(string memory _key, uint _value) public {
        stringToInt[_key] = _value;
    }

    // Function to set an int to string mapping
    function setIntToString(uint _key, string memory _value) public {
        intToString[_key] = _value;
    }

    // Function to get array length
    function getArrayLength() public view returns (uint) {
        return numberArray.length;
    }

    // Function to set friendship status
    function setFriendship(
        address _user1,
        address _user2,
        bool _status
    ) public {
        isFriend[_user1][_user2] = _status;
    }

    // Function to add a row to the matrix
    function addRowToMatrix(uint[] memory _row) public {
        matrix.push(_row);
    }
}
