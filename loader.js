function checkAllBalances() {
    var totalBal = 0;
    for (var acctNum in eth.accounts) {
        var acct = eth.accounts[acctNum];
        var acctBal = web3.fromWei(eth.getBalance(acct), "ether");
        totalBal += parseFloat(acctBal);
        console.log("  eth.accounts[" + acctNum + "]: \t" + acct + " \tbalance: " + acctBal + " ether");
    }
    console.log("  Total balance: " + totalBal + " ether");
};

function stateDiff() {
    console.log(eth.syncing.knownStates-eth.syncing.pulledStates);
};

function blockDiff() {
    console.log(eth.syncing.highestBlock-eth.syncing.currentBlock);
};

function status() {
    console.log("diff states");
    console.log(eth.syncing.knownStates-eth.syncing.pulledStates);
    console.log("diff blocks");
    console.log(eth.syncing.highestBlock-eth.syncing.currentBlock);
    console.log("peers");
    console.log(net.peerCount);
};
