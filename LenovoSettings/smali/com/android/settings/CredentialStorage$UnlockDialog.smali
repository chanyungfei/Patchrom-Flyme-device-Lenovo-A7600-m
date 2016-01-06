.class Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 553
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    const v3, 0x7f040030

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 557
    .local v2, "view":Landroid/view/View;
    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$700(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 558
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0af7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 567
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f0e00cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    const v3, 0x7f0e00cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 569
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 571
    const v3, 0x7f0e00cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 574
    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$800()Landroid/app/AlertDialog;

    move-result-object v3

    if-nez v3, :cond_0

    .line 575
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x5

    invoke-direct {v3, p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0af6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 580
    .local v0, "dialog":Landroid/app/AlertDialog;
    # setter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 581
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 582
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 585
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$800()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 586
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 587
    return-void

    .line 559
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$700(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 560
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0afb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 561
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$700(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 562
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0afc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 564
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_3
    const v3, 0x7f0a0afd

    new-array v4, v5, [Ljava/lang/Object;

    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$700(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 590
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 591
    return-void

    .line 590
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 594
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 600
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 601
    return-void

    .line 600
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 604
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    .line 605
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 606
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$500(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 608
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$500(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 609
    .local v0, "error":I
    if-ne v0, v5, :cond_1

    .line 610
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    # setter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$702(Lcom/flyme/deviceoriginalsettings/CredentialStorage;I)I

    .line 611
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    const v2, 0x7f0a0b00

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 616
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    # invokes: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->ensureKeyGuard()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$900(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V

    .line 636
    .end local v0    # "error":I
    :cond_0
    :goto_0
    return-void

    .line 617
    .restart local v0    # "error":I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    # setter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$702(Lcom/flyme/deviceoriginalsettings/CredentialStorage;I)I

    .line 619
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    const v2, 0x7f0a0afe

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 623
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    # invokes: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$1000(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V

    goto :goto_0

    .line 624
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    # setter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$702(Lcom/flyme/deviceoriginalsettings/CredentialStorage;I)I

    .line 627
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    # invokes: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$1000(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V

    goto :goto_0

    .line 632
    .end local v0    # "error":I
    :cond_3
    sput-boolean v5, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;->isBack:Z

    .line 635
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 597
    return-void
.end method
