.class public Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1542
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;[ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "parent"
    .parameter "uids"
    .parameter "label"

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1560
    :goto_0
    return-void

    .line 1548
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1549
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "uids"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1551
    new-instance v1, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1552
    .local v1, fragment:Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1553
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1555
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1556
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1557
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1558
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1559
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1564
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1565
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary;

    .line 1566
    .local v0, target:Lcom/android/OriginalSettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetailUids:[I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3002(Lcom/android/OriginalSettings/DataUsageSummary;[I)[I

    .line 1567
    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$100(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1568
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1572
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1573
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary;

    .line 1574
    .local v0, target:Lcom/android/OriginalSettings/DataUsageSummary;
    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetailUids:[I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3002(Lcom/android/OriginalSettings/DataUsageSummary;[I)[I

    .line 1575
    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$100(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1576
    return-void
.end method
