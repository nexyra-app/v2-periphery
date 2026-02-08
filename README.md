# Nexyra v2 Periphery

This repository contains the periphery smart contracts for the Nexyra V2 Protocol.
For the lower level core contracts, see the [nexyra-v2-core](https://github.com/nexyra/v2-core)
repository.



## Local deployment

In order to deploy this code to a local testnet, you should clone this repository and import bytecode imported from artifacts located at
`./artifacts/contracts/**/*.json`.
For example:

```typescript
import {
  abi as SWAP_ROUTER_ABI,
  bytecode as SWAP_ROUTER_BYTECODE,
} from './artifacts/contracts/SwapRouter.sol/SwapRouter.json'

// deploy the bytecode
```

This will ensure that you are testing against the same bytecode that is deployed to
mainnet and public testnets, and all Nexyra code will correctly interoperate with
your local deployment.

## Using solidity interfaces

The Nexyra V2 periphery interfaces are available for import into solidity smart contracts
via the npm artifact `@nexyra/v2-periphery`, e.g.:

```solidity
import '@nexyra/v2-periphery/contracts/interfaces/ISwapRouter.sol';

contract MyContract {
  ISwapRouter router;

  function doSomethingWithSwapRouter() {
    // router.exactInput(...);
  }
}

```
