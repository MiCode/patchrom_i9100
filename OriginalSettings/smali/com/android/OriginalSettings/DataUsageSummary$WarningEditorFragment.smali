.class public Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1708
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 1712
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1721
    :goto_0
    return-void

    .line 1714
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1715
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3100(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1717
    new-instance v1, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 1718
    .local v1, dialog:Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1719
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1720
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1726
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/OriginalSettings/DataUsageSummary;

    .line 1727
    .local v5, target:Lcom/android/OriginalSettings/DataUsageSummary;
    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3200(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 1729
    .local v3, editor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1730
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1732
    .local v8, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040034

    const/4 v1, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v0, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 1733
    .local v11, view:Landroid/view/View;
    const v0, 0x7f080061

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1735
    .local v2, bytesPicker:Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1736
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v12

    .line 1737
    .local v12, warningBytes:J
    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v9

    .line 1739
    .local v9, limitBytes:J
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1740
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    .line 1741
    const-wide/32 v0, 0x100000

    div-long v0, v9, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1745
    :goto_0
    const-wide/32 v0, 0x100000

    div-long v0, v12, v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1746
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1748
    const v0, 0x7f0b066c

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1749
    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1751
    const v14, 0x7f0b066b

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/OriginalSettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/OriginalSettings/DataUsageSummary;)V

    invoke-virtual {v6, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1763
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1743
    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method
