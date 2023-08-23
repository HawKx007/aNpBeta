//SPDX-License-Identifier: HAWK
pragma solidity ^0.5.16;

//FinancialDistribution
contract aNp {

    address private organization;
    mapping(address => bool) public recipients;
    mapping(address => uint256) public balances;
    mapping(address => bytes32) public bankAccounts; // Changed type to bytes32 to store hashed account

    event AllowanceSent(address indexed recipient, uint256 amount);
    event FundsAdded(uint256 amount);
    event BankAccountRegistered(address indexed recipient, bytes32 account); // Change type to bytes32

    constructor() public {
        organization = msg.sender;
    }

    modifier onlyOrganization() {  
        require(msg.sender == organization, "Level Access Denied!");
        _;
    }

    function addRecipient(address _recipient) public onlyOrganization {
        recipients[_recipient] = true;
    }

    function removeRecipient(address _recipient) public onlyOrganization {
        recipients[_recipient] = false;
    }

    function sendAllowance(address _recipient, uint256 _amount) public onlyOrganization {
        require(recipients[_recipient], "Recipient not authorized.");
        require(balances[organization] >= _amount, "Insufficient funds.");
        balances[organization] -= _amount;
        // Check if recipient's bank account is registered
        require(bankAccounts[_recipient] != bytes32(0), "Recipient bank account not registered.");
        // Integrate with payment gateway or financial institution API
        emit AllowanceSent(_recipient, _amount);
    }

    function addFunds(uint256 _amt) public payable onlyOrganization {
        balances[organization] += _amt;
        emit FundsAdded(msg.value);
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function registerBankAccount(address _recipient, string memory _account) public onlyOrganization {
        require(recipients[_recipient], "Recipient not authorized.");
        require(bytes(_account).length > 0, "Bank account information required.");
        // Hash the bank account number with keccak256 before storing
        bankAccounts[_recipient] = keccak256(abi.encodePacked(_account));
        emit BankAccountRegistered(_recipient, bankAccounts[_recipient]);
    }
}
