.class Lcom/android/internal/policy/impl/GlobalActions$1;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 4

    .prologue
    const v3, 0x10401a6

    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->isSimReady()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.config.donot_nosim"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const v1, 0x10401ab

    const v2, 0x10401ac

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v0, p0, v3, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$100(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const v1, 0x10401a9

    const v2, 0x10401aa

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v0, p0, v3, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$100(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 241
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDataNetworkModeEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v2

    .line 267
    :cond_1
    const/4 v0, 0x0

    .line 268
    .local v0, bRetVal:Z
    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, current_plmn:Ljava/lang/String;
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current_plmn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v3, "domestic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    :cond_2
    const/4 v0, 0x1

    .line 273
    :cond_3
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bRetVal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz v0, :cond_0

    .line 279
    .end local v0           #bRetVal:Z
    .end local v1           #current_plmn:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method
