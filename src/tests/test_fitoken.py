import brownie
from brownie import FiToken, accounts

def test_fitoken():
    pepe = accounts[0]
    token = FiToken.deploy("Fit Coin", "Fit", 2000 * 10**18, {"from": pepe})
    assert token.name() == "Fit Coin"
