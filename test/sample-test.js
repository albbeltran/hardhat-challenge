/**
* @type import('hardhat/config').HardhatUserConfig
*/
module.exports = {
  solidity: "0.8.0",
  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts"
  }
 };
  
 
 var SimpleBank = artifacts.require("Bank");
 require("@nomiclabs/hardhat-web3");
  
 contract('Bank', function(accounts) {
  
  const owner = accounts[0]
  const alice = accounts[1];
  const bob = accounts[2];
  const deposit = web3.utils.BN(2);
  
  
  it("mark addresses as enrolled", async () => {
    const bank = await SimpleBank.new();
  
    await bank.enroll({from: alice});
  
    const aliceEnrolled = await bank.enrolled(alice, {from: alice});
    assert.equal(aliceEnrolled, true, 'enroll balance is incorrect, check balance method or constructor');
  
    const ownerEnrolled = await bank.enrolled(owner, {from: owner});
    assert.equal(ownerEnrolled, false, 'only enrolled users should be marked enrolled');
  });
  
  it("should deposit correct amount", async () => {
    const bank = await SimpleBank.new();
  
    await bank.enroll({from: alice});
    await bank.enroll({from: bob});
  
   const result =  await bank.deposit({from: alice, value: deposit});
    const balance = await bank.balance({from: alice});
    assert.equal(deposit.toString(), balance, 'deposit amount incorrect, check deposit method');
  
    const expectedEventResult = {accountAddress: alice, amount: deposit};
    const logAccountAddress = result.logs[0].args.accountAddress;
    // ESPERA RECIBIR UN ARGUMENTO "AMOUNT"
    const logDepositAmount = result.logs[0].args.amount.toNumber();

  
    assert.equal(
      expectedEventResult.accountAddress,
      logAccountAddress,
      "LogDepositMade event accountAddress property not emitted, check deposit method",
    );
  
    assert.equal(
      expectedEventResult.amount,
      logDepositAmount,
      "LogDepositMade event amount property not emitted, check deposit method",
    );
  });
  
  it("should withdraw correct amount", async () => {
    const bank = await SimpleBank.new();
    const initialAmount = 0;
    await bank.enroll({ from: alice });
    await bank.deposit({ from: alice, value: deposit });
    const result = await bank.withdraw(deposit, {from: alice});
    const balance = await bank.balance({from: alice});
  
    assert.equal(balance.toString(), initialAmount.toString(), 'balance incorrect after withdrawal, check withdraw method');
  
   
    const accountAddress = result.logs[0].args.accountAddress;
    const newBalance = result.logs[0].args.newBalance.toNumber();
    const withdrawalAmount = result.logs[0].args.withdrawAmount.toNumber();
  
    const expectedEventResult = {accountAddress: alice, newBalance: initialAmount, withdrawalAmount: deposit};
  
  
    assert.equal(expectedEventResult.accountAddress, accountAddress, "LogWithdrawal event accountAddress property not emitted, check deposit method");
    assert.equal(expectedEventResult.newBalance, newBalance, "LogWithdrawal event newBalance property not emitted, check deposit method");
    assert.equal(expectedEventResult.withdrawalAmount, withdrawalAmount, "LogWithdrawal event withdrawalAmount property not emitted, check deposit method");
  
  });
 });
 
