pragma solidity ^0.4.20

/*
 * A Gated task is assigned to a specific person
 * and must satisfy each gate to be complete
 *
 * A Gate can be another task, review, audit, or account
 * 
 * Once all gates are satisfied, this can be closed and funds extracted
 */
contract GatedTask

/*
 * Constructor
 * Hash of requirements for module approval
 */

/*
 * Approval
 * Approver sets approval for gate
 */

/*
 * Extension
 * Project manager can give extension
 */

/*
 * Completion
 * If timeline is over deadline, burn Tokens proportional to overrun
 * Approve gate for task that spawned this task (if available)
 * Disperse funds to assignee
 */
