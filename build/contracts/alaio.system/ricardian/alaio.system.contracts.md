<h1 class="contract">bidname</h1>

---
spec_version: "0.2.0"
title: Bid On a Premium Account Name
summary: '{{nowrap bidder}} bids on the premium account name {{nowrap newname}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

{{bidder}} bids {{bid}} on an auction to own the premium account name {{newname}}.

{{bidder}} transfers {{bid}} to the system to cover the cost of the bid, which will be returned to {{bidder}} only if {{bidder}} is later outbid in the auction for {{newname}} by another account.

If the auction for {{newname}} closes with {{bidder}} remaining as the highest bidder, {{bidder}} will be authorized to create the account with name {{newname}}.

## Bid refund behavior

If {{bidder}}’s bid on {{newname}} is later outbid by another account, {{bidder}} will be able to claim back the transferred amount of {{bid}}. The system will attempt to automatically do this on behalf of {{bidder}}, but the automatic refund may occasionally fail which will then require {{bidder}} to manually claim the refund with the bidrefund action.

## Auction close criteria

The system should automatically close the auction for {{newname}} if it satisfies the condition that over a period of two minutes the following two properties continuously hold:

- no one has bid on {{newname}} within the last 24 hours;
- and, the value of the latest bid on {{newname}} is greater than the value of the bids on each of the other open auctions.

Be aware that the condition to close the auction described above are sufficient but not necessary. The auction for {{newname}} cannot close unless both of the properties are simultaneously satisfied, but it may be closed without requiring the properties to hold for a period of 2 minutes.

<h1 class="contract">bidrefund</h1>

---
spec_version: "0.2.0"
title: Claim Refund on Name Bid
summary: 'Claim refund on {{nowrap newname}} bid'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

{{bidder}} claims refund on {{newname}} bid after being outbid by someone else.

<h1 class="contract">buyram</h1>

---
spec_version: "0.2.0"
title: Buy RAM
summary: '{{nowrap payer}} buys RAM on behalf of {{nowrap receiver}} by paying {{nowrap quant}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/resource.png#3830f1ce8cb07f7757dbcf383b1ec1b11914ac34a1f9d8b065f07600fa9dac19
---

{{payer}} buys RAM on behalf of {{receiver}} by paying {{quant}}. This transaction will incur a 0.5% fee out of {{quant}} and the amount of RAM delivered will depend on market rates.

<h1 class="contract">buyrambytes</h1>

---
spec_version: "0.2.0"
title: Buy RAM
summary: '{{nowrap payer}} buys {{nowrap bytes}} bytes of RAM on behalf of {{nowrap receiver}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/resource.png#3830f1ce8cb07f7757dbcf383b1ec1b11914ac34a1f9d8b065f07600fa9dac19
---

{{payer}} buys approximately {{bytes}} bytes of RAM on behalf of {{receiver}} by paying market rates for RAM. This transaction will incur a 0.5% fee and the cost will depend on market rates.

<h1 class="contract">buyrex</h1>

---
spec_version: "0.2.0"
title: Buy REX Tokens
summary: '{{nowrap from}} buys REX tokens in exchange for {{nowrap amount}} and his vote stake increases by {{nowrap amount}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{amount}} is taken out of {{from}}’s REX fund and used to purchase REX tokens at the current market exchange rate. In order for the action to succeed, {{from}} must have voted for a proxy or at least 21 block producers. {{amount}} is added to {{from}}’s vote stake.

A sell order of the purchased amount can only be initiated after waiting for the maturity period of 4 to 5 days to pass. Even then, depending on the market conditions, the initiated sell order may not be executed immediately.

<h1 class="contract">canceldelay</h1>

---
spec_version: "0.2.0"
title: Cancel Delayed Transaction
summary: '{{nowrap canceling_auth.actor}} cancels a delayed transaction'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

{{canceling_auth.actor}} cancels the delayed transaction with id {{trx_id}}.

<h1 class="contract">claimrewards</h1>

---
spec_version: "0.2.0"
title: Claim Block Producer Rewards
summary: '{{nowrap owner}} claims block and vote rewards'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{owner}} claims block and vote rewards from the system.

<h1 class="contract">closerex</h1>

---
spec_version: "0.2.0"
title: Cleanup Unused REX Data
summary: 'Delete REX related DB entries and free associated RAM'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

Delete REX related DB entries and free associated RAM for {{owner}}.

To fully delete all REX related DB entries, {{owner}} must ensure that their REX balance and REX fund amounts are both zero and they have no outstanding loans.

<h1 class="contract">cnclrexorder</h1>

---
spec_version: "0.2.0"
title: Cancel Scheduled REX Sell Order
summary: '{{nowrap owner}} cancels a scheduled sell order if not yet filled'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{owner}} cancels their open sell order.

<h1 class="contract">consolidate</h1>

---
spec_version: "0.2.0"
title: Consolidate REX Maturity Buckets Into One
summary: 'Consolidate REX maturity buckets into one'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

Consolidate REX maturity buckets into one bucket that {{owner}} will not be able to sell until 4 to 5 days later.

<h1 class="contract">defcpuloan</h1>

---
spec_version: "0.2.0"
title: Withdraw from the Fund of a Specific CPU Loan
summary: '{{nowrap from}} transfers {{nowrap amount}} from the fund of CPU loan number {{nowrap loan_num}} back to REX fund'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{from}} transfers {{amount}} from the fund of CPU loan number {{loan_num}} back to REX fund.

<h1 class="contract">defnetloan</h1>

---
spec_version: "0.2.0"
title: Withdraw from the Fund of a Specific NET Loan
summary: '{{nowrap from}} transfers {{nowrap amount}} from the fund of NET loan number {{nowrap loan_num}} back to REX fund'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{from}} transfers {{amount}} from the fund of NET loan number {{loan_num}} back to REX fund.

<h1 class="contract">delegatebw</h1>

---
spec_version: "0.2.0"
title: Stake Tokens for NET and/or CPU
summary: 'Stake tokens for NET and/or CPU and optionally transfer ownership'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/resource.png#3830f1ce8cb07f7757dbcf383b1ec1b11914ac34a1f9d8b065f07600fa9dac19
---

{{#if transfer}} {{from}} stakes on behalf of {{receiver}} {{stake_net_quantity}} for NET bandwidth and {{stake_cpu_quantity}} for CPU bandwidth.

Staked tokens will also be transferred to {{receiver}}. The sum of these two quantities will be deducted from {{from}}’s liquid balance and add to the vote weight of {{receiver}}.
{{else}}
{{from}} stakes to self and delegates to {{receiver}} {{stake_net_quantity}} for NET bandwidth and {{stake_cpu_quantity}} for CPU bandwidth.

The sum of these two quantities add to the vote weight of {{from}}.
{{/if}}

<h1 class="contract">deleteauth</h1>

---
spec_version: "0.2.0"
title: Delete Account Permission
summary: 'Delete the {{nowrap permission}} permission of {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

Delete the {{permission}} permission of {{account}}.

<h1 class="contract">deposit</h1>

---
spec_version: "0.2.0"
title: Deposit Into REX Fund
summary: 'Add to {{nowrap owner}}’s REX fund by transferring {{nowrap amount}} from {{nowrap owner}}’s liquid balance'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

Transfer {{amount}} from {{owner}}’s liquid balance to {{owner}}’s REX fund. All proceeds and expenses related to REX are added to or taken out of this fund.

<h1 class="contract">fundcpuloan</h1>

---
spec_version: "0.2.0"
title: Deposit into the Fund of a Specific CPU Loan
summary: '{{nowrap from}} funds a CPU loan'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{from}} transfers {{payment}} from REX fund to the fund of CPU loan number {{loan_num}} in order to be used in loan renewal at expiry. {{from}} can withdraw the total balance of the loan fund at any time.

<h1 class="contract">fundnetloan</h1>

---
spec_version: "0.2.0"
title: Deposit into the Fund of a Specific NET Loan
summary: '{{nowrap from}} funds a NET loan'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{from}} transfers {{payment}} from REX fund to the fund of NET loan number {{loan_num}} in order to be used in loan renewal at expiry. {{from}} can withdraw the total balance of the loan fund at any time.

<h1 class="contract">init</h1>

---
spec_version: "0.2.0"
title: Initialize System Contract
summary: 'Initialize system contract'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

Initialize system contract. The core token symbol will be set to {{core}}.

<h1 class="contract">linkauth</h1>

---
spec_version: "0.2.0"
title: Link Action to Permission
summary: '{{nowrap account}} sets the minimum required permission for the {{#if type}}{{nowrap type}} action of the{{/if}} {{nowrap code}} contract to {{nowrap requirement}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

{{account}} sets the minimum required permission for the {{#if type}}{{type}} action of the{{/if}} {{code}} contract to {{requirement}}.

{{#if type}}{{else}}Any links explicitly associated to specific actions of {{code}} will take precedence.{{/if}}

<h1 class="contract">newaccount</h1>

---
spec_version: "0.2.0"
title: Create New Account
summary: '{{nowrap creator}} creates a new account with the name {{nowrap name}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

{{creator}} creates a new account with the name {{name}} and the following permissions:

owner permission with authority:
{{to_json owner}}

active permission with authority:
{{to_json active}}

<h1 class="contract">mvfrsavings</h1>

---
spec_version: "0.2.0"
title: Unlock REX Tokens
summary: '{{nowrap owner}} unlocks REX Tokens'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{owner}} unlocks {{rex}} by moving it out of the REX savings bucket. The unlocked REX tokens cannot be sold until 4 to 5 days later.

<h1 class="contract">mvtosavings</h1>

---
spec_version: "0.2.0"
title: Lock REX Tokens
summary: '{{nowrap owner}} locks REX Tokens'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{owner}} locks {{rex}} by moving it into the REX savings bucket. The locked REX tokens cannot be sold directly and will have to be unlocked explicitly before selling.

<h1 class="contract">refund</h1>

---
spec_version: "0.2.0"
title: Claim Unstaked Tokens
summary: 'Return previously unstaked tokens to {{nowrap owner}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

Return previously unstaked tokens to {{owner}} after the unstaking period has elapsed.

<h1 class="contract">regproducer</h1>

---
spec_version: "0.2.0"
title: Register as a Block Producer Candidate
summary: 'Register {{nowrap producer}} account as a block producer candidate'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/voting.png#db28cd3db6e62d4509af3644ce7d377329482a14bb4bfaca2aa5f1400d8e8a84
---

Register {{producer}} account as a block producer candidate.

{{$clauses.BlockProducerAgreement}}

<h1 class="contract">regproxy</h1>

---
spec_version: "0.2.0"
title: Register/unregister as a Proxy
summary: 'Register/unregister {{nowrap proxy}} as a proxy account'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/voting.png#db28cd3db6e62d4509af3644ce7d377329482a14bb4bfaca2aa5f1400d8e8a84
---

{{#if isproxy}}
{{proxy}} registers as a proxy that can vote on behalf of accounts that appoint it as their proxy.
{{else}}
{{proxy}} unregisters as a proxy that can vote on behalf of accounts that appoint it as their proxy.
{{/if}}

<h1 class="contract">rentcpu</h1>

---
spec_version: "0.2.0"
title: Rent CPU Bandwidth for 30 Days
summary: '{{nowrap from}} pays {{nowrap loan_payment}} to rent CPU bandwidth for {{nowrap receiver}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{from}} pays {{loan_payment}} to rent CPU bandwidth on behalf of {{receiver}} for a period of 30 days.

{{loan_payment}} is taken out of {{from}}’s REX fund. The market price determines the number of tokens to be staked to {{receiver}}’s CPU resources. In addition, {{from}} provides {{loan_fund}}, which is also taken out of {{from}}’s REX fund, to be used for automatic renewal of the loan.

At expiration, if the loan has less funds than {{loan_payment}}, it is closed and lent tokens that have been staked are taken out of {{receiver}}’s CPU bandwidth. Otherwise, it is renewed at the market price at the time of renewal, that is, the number of staked tokens is recalculated and {{receiver}}’s CPU bandwidth is updated accordingly. {{from}} can fund or defund a loan at any time before expiration. When the loan is closed, {{from}} is refunded any tokens remaining in the loan fund.

<h1 class="contract">rentnet</h1>

---
spec_version: "0.2.0"
title: Rent NET Bandwidth for 30 Days
summary: '{{nowrap from}} pays {{nowrap loan_payment}} to rent NET bandwidth for {{nowrap receiver}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{from}} pays {{loan_payment}} to rent NET bandwidth on behalf of {{receiver}} for a period of 30 days.

{{loan_payment}} is taken out of {{from}}’s REX fund. The market price determines the number of tokens to be staked to {{receiver}}’s NET resources for 30 days. In addition, {{from}} provides {{loan_fund}}, which is also taken out of {{from}}’s REX fund, to be used for automatic renewal of the loan.

At expiration, if the loan has less funds than {{loan_payment}}, it is closed and lent tokens that have been staked are taken out of {{receiver}}’s NET bandwidth. Otherwise, it is renewed at the market price at the time of renewal, that is, the number of staked tokens is recalculated and {{receiver}}’s NET bandwidth is updated accordingly. {{from}} can fund or defund a loan at any time before expiration. When the loan is closed, {{from}} is refunded any tokens remaining in the loan fund.

<h1 class="contract">rexexec</h1>

---
spec_version: "0.2.0"
title: Perform REX Maintenance
summary: 'Process sell orders and expired loans'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

Performs REX maintenance by processing a maximum of {{max}} REX sell orders and expired loans. Any account can execute this action.

<h1 class="contract">rmvproducer</h1>

---
spec_version: "0.2.0"
title: Forcibly Unregister a Block Producer Candidate
summary: '{{nowrap producer}} is unregistered as a block producer candidate'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{$action.account}} unregisters {{producer}} as a block producer candidate. {{producer}} account will retain its votes and those votes can change based on voter stake changes or votes removed from {{producer}}. However new voters will not be able to vote for {{producer}} while it remains unregistered.

<h1 class="contract">sellram</h1>

---
spec_version: "0.2.0"
title: Sell RAM From Account
summary: 'Sell unused RAM from {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/resource.png#3830f1ce8cb07f7757dbcf383b1ec1b11914ac34a1f9d8b065f07600fa9dac19
---

Sell {{bytes}} bytes of unused RAM from account {{account}} at market price. This transaction will incur a 0.5% fee on the proceeds which depend on market rates.

<h1 class="contract">sellrex</h1>

---
spec_version: "0.2.0"
title: Sell REX Tokens in Exchange for ALA
summary: '{{nowrap from}} sells {{nowrap rex}} tokens'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{from}} initiates a sell order to sell {{rex}} tokens at the market exchange rate during the time at which the order is ultimately executed. If {{from}} already has an open sell order in the sell queue, {{rex}} will be added to the amount of the sell order without change the position of the sell order within the queue. Once the sell order is executed, proceeds are added to {{from}}’s REX fund, the value of sold REX tokens is deducted from {{from}}’s vote stake, and votes are updated accordingly.

Depending on the market conditions, it may not be possible to fill the entire sell order immediately. In such a case, the sell order is added to the back of a sell queue. A sell order at the front of the sell queue will automatically be executed when the market conditions allow for the entire order to be filled. Regardless of the market conditions, the system is designed to execute this sell order within 30 days. {{from}} can cancel the order at any time before it is filled using the cnclrexorder action.

<h1 class="contract">setabi</h1>

---
spec_version: "0.2.0"
title: Deploy Contract ABI
summary: 'Deploy contract ABI on account {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

Deploy the ABI file associated with the contract on account {{account}}.

<h1 class="contract">setacctcpu</h1>

---
spec_version: "0.2.0"
title: Explicitly Manage the CPU Quota of Account
summary: 'Explicitly manage the CPU bandwidth quota of account {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{#if_has_value cpu_weight}}
Explicitly manage the CPU bandwidth quota of account {{account}} by pinning it to a weight of {{cpu_weight}}.

{{account}} can stake and unstake, however, it will not change their CPU bandwidth quota as long as it remains pinned.
{{else}}
Unpin the CPU bandwidth quota of account {{account}}. The CPU bandwidth quota of {{account}} will be driven by the current tokens staked for CPU bandwidth by {{account}}.
{{/if_has_value}}

<h1 class="contract">setacctnet</h1>

---
spec_version: "0.2.0"
title: Explicitly Manage the NET Quota of Account
summary: 'Explicitly manage the NET bandwidth quota of account {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{#if_has_value net_weight}}
Explicitly manage the network bandwidth quota of account {{account}} by pinning it to a weight of {{net_weight}}.

{{account}} can stake and unstake, however, it will not change their NET bandwidth quota as long as it remains pinned.
{{else}}
Unpin the NET bandwidth quota of account {{account}}. The NET bandwidth quota of {{account}} will be driven by the current tokens staked for NET bandwidth by {{account}}.
{{/if_has_value}}

<h1 class="contract">setacctram</h1>

---
spec_version: "0.2.0"
title: Explicitly Manage the RAM Quota of Account
summary: 'Explicitly manage the RAM quota of account {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{#if_has_value ram_bytes}}
Explicitly manage the RAM quota of account {{account}} by pinning it to {{ram_bytes}} bytes.

{{account}} can buy and sell RAM, however, it will not change their RAM quota as long as it remains pinned.
{{else}}
Unpin the RAM quota of account {{account}}. The RAM quota of {{account}} will be driven by the current RAM holdings of {{account}}.
{{/if_has_value}}

<h1 class="contract">setalimits</h1>

---
spec_version: "0.2.0"
title: Adjust Resource Limits of Account
summary: 'Adjust resource limits of account {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{$action.account}} updates {{account}}’s resource limits to have a RAM quota of {{ram_bytes}} bytes, a NET bandwidth quota of {{net_weight}} and a CPU bandwidth quota of {{cpu_weight}}.

<h1 class="contract">setcode</h1>

---
spec_version: "0.2.0"
title: Deploy Contract Code
summary: 'Deploy contract code on account {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

Deploy compiled contract code to the account {{account}}.

<h1 class="contract">setparams</h1>

---
spec_version: "0.2.0"
title: Set System Parameters
summary: 'Set System Parameters'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{$action.account}} sets system parameters to:
{{to_json params}}

<h1 class="contract">setpriv</h1>

---
spec_version: "0.2.0"
title: Make an Account Privileged or Unprivileged
summary: '{{#if is_priv}}Make {{nowrap account}} privileged{{else}}Remove privileged status of {{nowrap account}}{{/if}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{#if is_priv}}
{{$action.account}} makes {{account}} privileged.
{{else}}
{{$action.account}} removes privileged status of {{account}}.
{{/if}}

<h1 class="contract">setram</h1>

---
spec_version: "0.2.0"
title: Configure the Available RAM
summary: 'Configure the available RAM'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{$action.account}} configures the available RAM to {{max_ram_size}} bytes.

<h1 class="contract">setramrate</h1>

---
spec_version: "0.2.0"
title: Set the Rate of Increase of RAM
summary: 'Set the rate of increase of RAM per block'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{$action.account}} sets the rate of increase of RAM to {{bytes_per_block}} bytes/block.

<h1 class="contract">setrex</h1>

---
spec_version: "0.2.0"
title: Adjust REX Pool Virtual Balance
summary: 'Adjust REX Pool Virtual Balance'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{$action.account}} adjusts REX loan rate by setting REX pool virtual balance to {{balance}}. No token transfer or issue is executed in this action.

<h1 class="contract">undelegatebw</h1>

---
spec_version: "0.2.0"
title: Unstake Tokens for NET and/or CPU
summary: 'Unstake tokens for NET and/or CPU from {{nowrap receiver}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/resource.png#3830f1ce8cb07f7757dbcf383b1ec1b11914ac34a1f9d8b065f07600fa9dac19
---

{{from}} unstakes from {{receiver}} {{unstake_net_quantity}} for NET bandwidth and {{unstake_cpu_quantity}} for CPU bandwidth.

The sum of these two quantities will be removed from the vote weight of {{receiver}} and will be made available to {{from}} after an uninterrupted 3 day period without further unstaking by {{from}}. After the uninterrupted 3 day period passes, the system will attempt to automatically return the funds to {{from}}’s regular token balance. However, this automatic refund may occasionally fail which will then require {{from}} to manually claim the funds with the refund action.

<h1 class="contract">unlinkauth</h1>

---
spec_version: "0.2.0"
title: Unlink Action from Permission
summary: '{{nowrap account}} unsets the minimum required permission for the {{#if type}}{{nowrap type}} action of the{{/if}} {{nowrap code}} contract'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

{{account}} removes the association between the {{#if type}}{{type}} action of the{{/if}} {{code}} contract and its minimum required permission.

{{#if type}}{{else}}This will not remove any links explicitly associated to specific actions of {{code}}.{{/if}}

<h1 class="contract">unregprod</h1>

---
spec_version: "0.2.0"
title: Unregister as a Block Producer Candidate
summary: '{{nowrap producer}} unregisters as a block producer candidate'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/voting.png#db28cd3db6e62d4509af3644ce7d377329482a14bb4bfaca2aa5f1400d8e8a84
---

{{producer}} unregisters as a block producer candidate. {{producer}} account will retain its votes and those votes can change based on voter stake changes or votes removed from {{producer}}. However new voters will not be able to vote for {{producer}} while it remains unregistered.

<h1 class="contract">unstaketorex</h1>

---
spec_version: "0.2.0"
title: Buy REX Tokens Using Staked Tokens
summary: '{{nowrap owner}} buys REX tokens in exchange for tokens currently staked to NET and/or CPU'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

{{from_net}} and {{from_cpu}} are withdrawn from {{receiver}}’s NET and CPU bandwidths respectively. These funds are used to purchase REX tokens at the current market exchange rate. In order for the action to succeed, {{owner}} must have voted for a proxy or at least 21 block producers.

A sell order of the purchased amount can only be initiated after waiting for the maturity period of 4 to 5 days to pass. Even then, depending on the market conditions, the initiated sell order may not be executed immediately.

<h1 class="contract">updateauth</h1>

---
spec_version: "0.2.0"
title: Modify Account Permission
summary: 'Add or update the {{nowrap permission}} permission of {{nowrap account}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/account.png#3d55a2fc3a5c20b456f5657faf666bc25ffd06f4836c5e8256f741149b0b294f
---

Modify, and create if necessary, the {{permission}} permission of {{account}} to have a parent permission of {{parent}} and the following authority:
{{to_json auth}}

<h1 class="contract">updaterex</h1>

---
spec_version: "0.2.0"
title: Update REX Owner Vote Weight
summary: 'Update vote weight to current value of held REX tokens'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

Update vote weight of {{owner}} account to current value of held REX tokens.

<h1 class="contract">updtrevision</h1>

---
spec_version: "0.2.0"
title: Update System Contract Revision Number
summary: 'Update system contract revision number'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/admin.png#9bf1cec664863bd6aaac0f814b235f8799fb02c850e9aa5da34e8a004bd6518e
---

{{$action.account}} advances the system contract revision number to {{revision}}.

<h1 class="contract">voteproducer</h1>

---
spec_version: "0.2.0"
title: Vote for Block Producers
summary: '{{nowrap voter}} votes for {{#if proxy}}the proxy {{nowrap proxy}}{{else}}up to 30 block producer candidates{{/if}}'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/voting.png#db28cd3db6e62d4509af3644ce7d377329482a14bb4bfaca2aa5f1400d8e8a84
---

{{#if proxy}}
{{voter}} votes for the proxy {{proxy}}.
At the time of voting the full weight of voter’s staked (CPU + NET) tokens will be cast towards each of the producers voted by {{proxy}}.
{{else}}
{{voter}} votes for the following block producer candidates:

{{#each producers}}
  + {{this}}
{{/each}}

At the time of voting the full weight of voter’s staked (CPU + NET) tokens will be cast towards each of the above producers.
{{/if}}

<h1 class="contract">withdraw</h1>

---
spec_version: "0.2.0"
title: Withdraw from REX Fund
summary: 'Withdraw {{nowrap amount}} from {{nowrap owner}}’s REX fund by transferring to {{owner}}’s liquid balance'
icon: http://127.0.0.1/ricardian_assets/alaio.contracts/icons/rex.png#d229837fa62a464b9c71e06060aa86179adf0b3f4e3b8c4f9702f4f4b0c340a8
---

Withdraws {{amount}} from {{owner}}’s REX fund and transfer them to {{owner}}’s liquid balance.