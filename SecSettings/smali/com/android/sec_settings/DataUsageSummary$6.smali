.class Lcom/android/sec_settings/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1240
    iget-object v5, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mBinding:Z
    invoke-static {v5}, Lcom/android/sec_settings/DataUsageSummary;->access$400(Lcom/android/sec_settings/DataUsageSummary;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-object v5, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-virtual {v5}, Lcom/android/sec_settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1243
    .local v2, isAirplaneMode:I
    if-nez v2, :cond_0

    .line 1247
    iget-object v5, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/sec_settings/DataUsageSummary;->access$500(Lcom/android/sec_settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    .line 1248
    .local v1, dataEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/sec_settings/DataUsageSummary;->access$600(Lcom/android/sec_settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, currentTab:Ljava/lang/String;
    const-string v5, "mobile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1250
    if-eqz v1, :cond_7

    .line 1251
    invoke-static {}, Lcom/android/sec_settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1252
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/sec_settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v5, "confirmDataEnable"

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1253
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3}, Lcom/android/sec_settings/DataUsageSummary;->access$700(Lcom/android/sec_settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1254
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3}, Lcom/android/sec_settings/DataUsageSummary;->access$700(Lcom/android/sec_settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismiss()V

    .line 1256
    :cond_2
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    iget-object v5, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/sec_settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v5

    #setter for: Lcom/android/sec_settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3, v5}, Lcom/android/sec_settings/DataUsageSummary;->access$702(Lcom/android/sec_settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1272
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #calls: Lcom/android/sec_settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v4}, Lcom/android/sec_settings/DataUsageSummary;->access$800(Lcom/android/sec_settings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0           #currentTab:Ljava/lang/String;
    .end local v1           #dataEnabled:Z
    :cond_4
    move v1, v4

    .line 1247
    goto :goto_1

    .line 1258
    .restart local v0       #currentTab:Ljava/lang/String;
    .restart local v1       #dataEnabled:Z
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1259
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/sec_settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v5, "confirmDataEnable"

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1260
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/sec_settings/DataUsageSummary;)Landroid/app/DialogFragment;

    goto :goto_2

    .line 1263
    :cond_6
    iget-object v5, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #calls: Lcom/android/sec_settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v5, v3}, Lcom/android/sec_settings/DataUsageSummary;->access$000(Lcom/android/sec_settings/DataUsageSummary;Z)V

    goto :goto_2

    .line 1268
    :cond_7
    iget-object v3, p0, Lcom/android/sec_settings/DataUsageSummary$6;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/sec_settings/DataUsageSummary;)V

    goto :goto_2
.end method
