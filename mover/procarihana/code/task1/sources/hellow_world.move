
/// Module: hellow_world
module hellow_world::hellow_world;

use std::ascii::{String, string};
use sui::object::{Self, UID};
use sui::transfer::transfer;
use sui::tx_context::{TxContext};

public struct Hello has key {
    id: UID,
    say: String
}

fun init(ctx: &mut TxContext) {
    let hellomove = Hello {
        id: object::new(ctx),
        say: string(b"Procarihana"),
    };
    transfer(hellomove, ctx.sender());
}

