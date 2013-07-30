.class public Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2185
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/sec_settings/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/android/sec_settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2198
    :goto_0
    return-void

    .line 2191
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2192
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/sec_settings/DataUsageSummary;->access$3000(Lcom/android/sec_settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2194
    new-instance v1, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v1}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;-><init>()V

    .line 2195
    .local v1, dialog:Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2196
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2197
    invoke-virtual {p0}, Lcom/android/sec_settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 2202
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 2203
    .local v8, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/sec_settings/DataUsageSummary;

    .line 2204
    .local v6, target:Lcom/android/sec_settings/DataUsageSummary;
    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mPolicyEditor:Lcom/android/sec_settings/net/NetworkPolicyEditor;
    invoke-static {v6}, Lcom/android/sec_settings/DataUsageSummary;->access$3100(Lcom/android/sec_settings/DataUsageSummary;)Lcom/android/sec_settings/net/NetworkPolicyEditor;

    move-result-object v4

    .line 2206
    .local v4, editor:Lcom/android/sec_settings/net/NetworkPolicyEditor;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2207
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2209
    .local v9, dialogInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04003e

    const/4 v2, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 2210
    .local v14, view:Landroid/view/View;
    const v1, 0x7f0b007a

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 2212
    .local v3, bytesPicker:Landroid/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 2213
    .local v5, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v5}, Lcom/android/sec_settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v15

    .line 2214
    .local v15, warningBytes:J
    invoke-virtual {v4, v5}, Lcom/android/sec_settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 2217
    .local v10, limitBytes:J
    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "inputType=YearDateTime_edittext"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2218
    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 2220
    const v13, 0x19000

    .line 2221
    .local v13, maximum_limit:I
    invoke-virtual {v3, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2224
    const-wide/16 v1, -0x1

    cmp-long v1, v15, v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-lez v1, :cond_0

    .line 2225
    const-wide/32 v1, 0x100000

    div-long v1, v15, v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2230
    :goto_0
    const-wide/32 v1, 0x100000

    div-long v1, v10, v1

    long-to-int v12, v1

    .line 2231
    .local v12, limit_mb:I
    if-le v12, v13, :cond_1

    .line 2232
    invoke-virtual {v3, v13}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2238
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2240
    const v1, 0x7f090831

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2241
    invoke-virtual {v7, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2243
    const v17, 0x7f09082f

    new-instance v1, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment$1;-><init>(Lcom/android/sec_settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/sec_settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/sec_settings/DataUsageSummary;)V

    move/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2256
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 2227
    .end local v12           #limit_mb:I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0

    .line 2234
    .restart local v12       #limit_mb:I
    :cond_1
    invoke-virtual {v3, v12}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1
.end method
