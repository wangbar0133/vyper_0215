@nonreentrant("lock")
@external
def a(contract: address):
    value: uint256 = 0
    raw_call(contract, b"",value=value)

@nonreentrant("lock")
@external
def b():
    pass
        
   

