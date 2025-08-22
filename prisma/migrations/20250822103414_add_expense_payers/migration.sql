CREATE TABLE "ExpensePayer" (
  "expenseId" TEXT NOT NULL,
  "participantId" TEXT NOT NULL,
  "amount" INTEGER NOT NULL,
  CONSTRAINT "ExpensePayer_pkey" PRIMARY KEY ("expenseId", "participantId"),
  CONSTRAINT "ExpensePayer_expenseId_fkey" FOREIGN KEY ("expenseId") REFERENCES "Expense"("id") ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT "ExpensePayer_participantId_fkey" FOREIGN KEY ("participantId") REFERENCES "Participant"("id") ON DELETE CASCADE ON UPDATE CASCADE
);
