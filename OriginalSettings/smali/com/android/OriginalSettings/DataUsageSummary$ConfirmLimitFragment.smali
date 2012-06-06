.class public Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1583
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "res"
    .parameter "networkResId"

    .prologue
    .line 1623
    const v0, 0x7f0b066f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 10
    .parameter "parent"

    .prologue
    .line 1588
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1620
    :goto_0
    return-void

    .line 1590
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1595
    .local v6, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1100(Lcom/android/OriginalSettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1596
    .local v1, currentTab:Ljava/lang/String;
    const-string v7, "3g"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1597
    const v7, 0x7f0b065c

    invoke-static {v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1598
    .local v5, message:Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .line 1612
    .local v3, limitBytes:J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1613
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "message"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1614
    const-string v7, "limitBytes"

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1616
    new-instance v2, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 1617
    .local v2, dialog:Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1618
    const/4 v7, 0x0

    invoke-virtual {v2, p0, v7}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1619
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "confirmLimit"

    invoke-virtual {v2, v7, v8}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1599
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #dialog:Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_1
    const-string v7, "4g"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1600
    const v7, 0x7f0b065b

    invoke-static {v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1601
    .restart local v5       #message:Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1602
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_2
    const-string v7, "mobile"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1603
    const v7, 0x7f0b065d

    invoke-static {v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1604
    .restart local v5       #message:Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1605
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_3
    const-string v7, "wifi"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1606
    const v7, 0x7f0b0658

    invoke-static {v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1607
    .restart local v5       #message:Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1609
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown current tab: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1630
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1631
    .local v4, message:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1633
    .local v2, limitBytes:J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1634
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b066e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1635
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1637
    const v5, 0x104000a

    new-instance v6, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1646
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
