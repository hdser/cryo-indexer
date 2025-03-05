-- Native Transfers table
CREATE TABLE IF NOT EXISTS {{database}}.native_transfers
(
    `block_number` Nullable(UInt32),
    `block_hash` Nullable(String),
    `transaction_index` Nullable(UInt32),
    `transfer_index` Nullable(UInt32),
    `transaction_hash` Nullable(String),
    `from_address` Nullable(String),
    `to_address` Nullable(String),
    `value` Nullable(String),
    `chain_id` Nullable(UInt64)
)
ENGINE = MergeTree()
ORDER BY (block_number, transfer_index)
SETTINGS allow_nullable_key = 1;