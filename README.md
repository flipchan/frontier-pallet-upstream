
[Frontier pallet](https://github.com/paritytech/frontier) with upstream sync from polkadot-v0.9.X(currently 17)

Repo works with .15 but not with polkadot .17, throws this error:

```rust
    Checking sc-consensus-babe v0.10.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking sc-consensus-aura v0.10.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking frame-benchmarking v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-transaction-payment v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-authorship v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-sudo v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking frame-executive v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-randomness-collective-flip v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking sc-consensus-manual-seal v0.10.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-timestamp v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-balances v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking frame-system-benchmarking v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-transaction-payment-rpc-runtime-api v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking sc-chain-spec v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking sc-informant v0.10.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking sc-offchain v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking sc-network-gossip v0.10.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-session v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-aura v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-transaction-payment-rpc v4.0.0-dev (https://github.com/paritytech/substrate?branch=polkadot-v0.9.16#19162e43)
    Checking pallet-evm v6.0.0-dev (/rust/frontier/frame/evm)
error[E0277]: the trait bound `std::vec::Vec<u8>: MaxEncodedLen` is not satisfied
   --> frame/evm/src/lib.rs:101:12
    |
101 |     #[pallet::pallet]
    |               ^^^^^^ the trait `MaxEncodedLen` is not implemented for `std::vec::Vec<u8>`
    |
    = note: required because of the requirements on the impl of `StorageInfoTrait` for `frame_support::pallet_prelude::StorageMap<_GeneratedPrefixForStorageAccountCodes<T>, frame_support::Blake2_128Concat, sp_core::H160, std::vec::Vec<u8>, frame_support::pallet_prelude::ValueQuery>`
note: required by `storage_info`
   --> /home/user/.cargo/git/checkouts/substrate-7e08433d4c370a21/19162e4/frame/support/src/traits/storage.rs:71:2
    |
71  |     fn storage_info() -> Vec<StorageInfo>;
    |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For more information about this error, try `rustc --explain E0277`.
error: could not compile `pallet-evm` due to previous error
warning: build failed, waiting for other jobs to finish...
error: build failed


```

