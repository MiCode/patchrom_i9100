.class public Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1653
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1666
    :goto_0
    return-void

    .line 1659
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1660
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3100(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1662
    new-instance v1, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 1663
    .local v1, dialog:Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1664
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1665
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    .line 1670
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1671
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/OriginalSettings/DataUsageSummary;

    .line 1672
    .local v5, target:Lcom/android/OriginalSettings/DataUsageSummary;
    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3200(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 1674
    .local v3, editor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1675
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1677
    .local v9, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040036

    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1678
    .local v10, view:Landroid/view/View;
    const v0, 0x7f08006a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1680
    .local v2, cycleDayPicker:Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1681
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v8

    .line 1683
    .local v8, cycleDay:I
    invoke-virtual {v2, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1684
    const/16 v0, 0x1f

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1685
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1686
    invoke-virtual {v2, v12}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1688
    const v0, 0x7f0b0669

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1689
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1691
    const v11, 0x7f0b066b

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/OriginalSettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/OriginalSettings/DataUsageSummary;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1701
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
