## Steps

1. Deploy WETH9 – Deploy wrapped ETH token contract ✅ 

2. Deploy Test Tokens – Deploy two ERC-20 tokens (TokenA and TokenB) ✅ 

3. Deploy Factory – Deploy Uniswap V3 factory contract ✅

4. Deploy Pool ❌

***Error is occuring here ^

4. Deploy Position Manager – Deploy NonfungiblePositionManager (needs factory and WETH9) ✅

5. Deploy Descriptor (optional) – NFT metadata helper (can skip) (❌)

6. Deploy Swap Router – Deploy SwapRouter for user swaps ❌

7. Create and Initialize Pool – Use PositionManager to create a new pool with initial price ❌
 
8. Add Liquidity – Mint a liquidity position using PositionManager ❌

9. Swap Tokens – Swap between TokenA and TokenB using SwapRouter ❌

## Set-up

1. 
```bash 
forge script script/goodScript/DeployFactory.s.sol --broadcast
```

2. 
``` bash
forge script script/goodScript/DeployTokens.s.sol --broadcast
```

3. 
``` bash
forge script script/goodScript/DeployPool.s.sol --broadcast
```

***Error is occuring here ^

4.
```bash
forge script script/goodScript/DeployPositionManager.s.sol --broadcast
```


