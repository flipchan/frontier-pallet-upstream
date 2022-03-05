echo "switching from 17 to polkadot-v0.9.15"
cargo update --aggressive
sed -i 's/polkadot-v0.9.17/polkadot-v0.9.15/g' */Cargo.tml                      
sed -i 's/polkadot-v0.9.17/polkadot-v0.9.15/g' client/*/Cargo.toml              
sed -i 's/polkadot-v0.9.17/polkadot-v0.9.15/g' frame/*/Cargo.toml               
sed -i 's/polkadot-v0.9.17/polkadot-v0.9.15/g' template/*/Cargo.toml            
sed -i 's/polkadot-v0.9.17/polkadot-v0.9.15/g' frame/evm/precompile/*/Cargo.toml
sed -i 's/polkadot-v0.9.17/polkadot-v0.9.15/g' primitives/*/Cargo.toml          
cargo check --release
