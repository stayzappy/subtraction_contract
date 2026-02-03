# SubtractionContract

A simple StarkNet Cairo contract that performs basic subtraction between two numbers. This project demonstrates contract development, declaration, deployment, and interaction on the Sepolia testnet using Scarb and Starkli.

Project Structure:
subtraction_contract/
├─ src/
│  └─ subtraction_contract.cairo
├─ Scarb.toml
├─ target/           # build artifacts
└─ deployment.json   # deployment details

Prerequisites:
- Cairo installed
- Scarb
- Starkli
- A funded Sepolia StarkNet account

Build the Contract:
Run `scarb build` to compile the contract.

Declare the Contract:
Run `starkli declare target/dev/subtraction_contract_SubtractionContract.contract_class.json`
Example output:
Class hash: 0x034c04999ba2b5c1bc48f545fef03d325846719e0aecd252c134f5e70cbb3495
Transaction hash: 0x04e8576b1b3353a146aba3fc33ba6c8eefd7de7d02ddc5d12490b07512472fb4

Deploy the Contract:
Run `starkli deploy 0x034c04999ba2b5c1bc48f545fef03d325846719e0aecd252c134f5e70cbb3495`
Example output:
Contract address: 0x0319da06057271657c866c980b02edcf92d9769e3ddfedce054c8e7865f37392
Transaction hash: 0x01a74b81d98ff2ac360fd3aa6bc8104e99b23323a20dff29644ee6cc3c9adc4a

Usage (Call Subtract):
Run `starkli call 0x0319da06057271657c866c980b02edcf92d9769e3ddfedce054c8e7865f37392 subtract 10 3`
Expected output: 7

Deployment Details (deployment.json):
{
  "network": "sepolia",
  "contract_name": "SubtractionContract",
  "deployment_time": "2026-02-01",
  "class_hash": "0x034c04999ba2b5c1bc48f545fef03d325846719e0aecd252c134f5e70cbb3495",
  "contract_address": "0x0319da06057271657c866c980b02edcf92d9769e3ddfedce054c8e7865f37392",
  "transaction_hash": "0x01a74b81d98ff2ac360fd3aa6bc8104e99b23323a20dff29644ee6cc3c9adc4a"
}

Notes:
- Ensure STARKNET_RPC_URL and account environment variables are set before declaring/deploying.
- This contract is minimal and does not store state.
- Compatible with Cairo and Sepolia testnet.
- The subtract function is pure and does not modify storage.

