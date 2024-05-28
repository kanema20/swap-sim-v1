# Load .env
source .env

# Deploy V2
forge script script/DeploySimV1.s.sol:DeploySimV1 --rpc-url ${MAINNET_QUICKNODE_RPC}
forge script script/DeploySimV1.s.sol:DeploySimV1 --rpc-url ${MAINNET_QUICKNODE_RPC} --broadcast --verify --optimize --optimizer-runs 20000 -vvvv
