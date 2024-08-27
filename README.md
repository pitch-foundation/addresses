This repo is to be imported into any other internal repo that needs to utilize admin addresses or access control.  

To install as a dependency:
```
forge install pitch-foundation/addresses
```

Provides a way to ensure addresses are up to date and accurate across all Hourglass code.


## Python Script to Extract Contracts from API
Utilize Rye
https://www.freecodecamp.org/news/how-to-install-python-on-a-mac/

## Extract Addresses
run 
```
python contracts_extractor.py
```

which outputs the updated list of deployed points boost contract addresses to the file `./ContractsAPI/hourglass_contract_addresses.json`