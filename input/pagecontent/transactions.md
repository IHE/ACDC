### Transactions
This Volume II supplement describes the ACDC Transactions in detail.
The ACDC Profile uses the following 4 IHE Transactions.

1. [[PCC-71] Query Artifact](queryartifact.html)
2. [[PCC-72] Request Assessment](requestassessment.html)
3. [[PCC-73] Report Assessment](reportassessment.html)

#### Understanding the IHE Transaction Model
Transaction descriptions are provided in Section 3. In each transaction description, the actors, the
roles they play, and the transactions between them are presented as use cases.
The generic IHE transaction description includes the following components:

Scope
:   A brief description of the transaction.

Use case roles
:   Textual definitions of the actors and their roles, with a simple diagram
relating them, e.g.,

    ![Sample Use Case](Sample-Use-Case.svg "Sample Use Case")
    <div style='clear: left'/>

Referenced Standards
:   The standards (stating the specific parts, chapters or sections
thereof) to be used for the transaction.

Interaction Diagram
:   A graphical depiction of the actors and messages that support the
    transaction, with related processing within an actor shown as a rectangle
    and time progressing downward, similar to the following

![Sample Interaction](Sample-Interaction.svg "Sample Interaction")
<div style='clear: left'/>

The interaction diagrams used in the IHE IT Infrastructure Technical Framework are
modeled after those described in [Grady Booch, James Rumbaugh, and Ivar Jacobson, The
Unified Modeling Language User Guide, ISBN 0-201-57168-4](https://www.researchgate.net/publication/234785986_Unified_Modeling_Language_User_Guide_The_2nd_Edition_Addison-Wesley_Object_Technology_Series). Simple acknowledgment
messages are often omitted from the diagrams for brevity. One or more messages may be
required to satisfy a transaction. Each message is represented as an arrow starting from
the actor initiating the message.

Message definitions
:   descriptions of each message involved in the transaction, the events
that trigger the message, its semantics, and the actions that the message triggers in the
receiver.