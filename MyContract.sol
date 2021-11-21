pragma solidity ^0.8.9;

contract MyContract {
    string public stringValue = "myValue";
    
    int public myInt = -1;
    uint public myUint = 1;
    enum State { On, Off, Paused}
    State public list;

    function set(string memory _value) public  {
        stringValue = _value;
    }

    constructor() public {
        list = State.Paused;
    }

    function activate() public {
        list = State.On;
    }

    function isOn() public view returns(bool) {
        return list == State.On;
    }   
}