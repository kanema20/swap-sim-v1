# Load .env
source .env

# Deploy V2
forge script script/prod/DeployMind.s.sol:Deploy --rpc-url ${BASE_QUICKNODE_ENDPOINT}
forge script script/prod/DeployMind.s.sol:Deploy --rpc-url ${BASE_QUICKNODE_ENDPOINT} --broadcast --verify --optimize --optimizer-runs 20000 -vvvv
