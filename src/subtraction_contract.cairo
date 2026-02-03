#[starknet::contract]
mod SubtractionContract {
    #[storage]
    struct Storage {}

    #[external(v0)]
    fn subtract(self: @ContractState, a: felt252, b: felt252) -> felt252 {
        a - b
    }
}
