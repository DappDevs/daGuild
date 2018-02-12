pragma solidity ^0.4.20;

/*
 * A task can be assigned through a bidding process
 *
 * The task creator assigns a recommended token value to stake
 * on the task upon creation, which corresponds to the level of "Difficulty"
 *
 * Bidding uses the Vickery Auction process, modeled after the auction process ENS uses.
 * Bidders bid DATU Tokens, which corresponds to a certain level of capacity that person has.
 *
 * The winning bid moves their staked tokens to the module,
 * and the other parties are able to return their staked tokens
 *
 * If the winning bid is below the suggested value,
 * the task creator must add in additional staked tokens to meet that limit
 * in the task for it to start.
 *
 * If the winning bid stakes tokens above the suggested value,
 * the task creator obtains all the staked tokens above that limit.
 */
contract Bid
