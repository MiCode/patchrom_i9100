.class public Lcom/android/sec_settings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/MasterClearConfirm$2;,
        Lcom/android/sec_settings/MasterClearConfirm$PWState;
    }
.end annotation


# static fields
.field private static mTelMan:Landroid/telephony/TelephonyManager;


# instance fields
.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/sec_settings/MasterClearConfirm$PWState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 87
    sget-object v0, Lcom/android/sec_settings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mPWState:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    .line 97
    new-instance v0, Lcom/android/sec_settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/MasterClearConfirm$1;-><init>(Lcom/android/sec_settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private DoMasterReset()V
    .locals 6

    .prologue
    .line 118
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    invoke-static {}, Lcom/android/sec_settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 128
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-boolean v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v0, :cond_6

    .line 134
    iget-boolean v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v0, :cond_4

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 139
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 140
    array-length v3, v2

    .line 141
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 142
    const-string v4, "sd"

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    const-string v3, "storage_volume"

    aget-object v0, v2, v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 141
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_4
    invoke-static {}, Lcom/android/sec_settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    const-string v0, "MasterClearConfirm"

    const-string v1, "Starting MediaCleaner service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.ERASE_INTERNAL_SD_AND_FACTORY_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 156
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 162
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableModemResetDuringFactoryReset"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    const-string v0, "MasterClearConfirm"

    const-string v1, "ready to Factory reset. Call SecFactoryReset."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/sec_settings/MasterClearModemReset;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "FACTORY"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 168
    :cond_7
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 169
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 171
    :cond_8
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 202
    sget-object v0, Lcom/android/sec_settings/MasterClearConfirm$2;->$SwitchMap$com$android$settings$MasterClearConfirm$PWState:[I

    iget-object v1, p0, Lcom/android/sec_settings/MasterClearConfirm;->mPWState:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    invoke-virtual {v1}, Lcom/android/sec_settings/MasterClearConfirm$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 204
    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    .line 205
    sget-object v0, Lcom/android/sec_settings/MasterClearConfirm$PWState;->CONFIRM:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mPWState:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    .line 206
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/sec_settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 211
    :pswitch_1
    sget-object v0, Lcom/android/sec_settings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mPWState:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    .line 212
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/sec_settings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    invoke-direct {p0}, Lcom/android/sec_settings/MasterClearConfirm;->DoMasterReset()V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    .prologue
    const v3, 0x7f090027

    .line 179
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, phone_password:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 182
    sget-object v1, Lcom/android/sec_settings/MasterClearConfirm$PWState;->NEW:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    iput-object v1, p0, Lcom/android/sec_settings/MasterClearConfirm;->mPWState:Lcom/android/sec_settings/MasterClearConfirm$PWState;

    .line 183
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090034

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/sec_settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090029

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/sec_settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/sec_settings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/sec_settings/MasterClearConfirm;->DoMasterReset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/sec_settings/MasterClearConfirm;->StartPassword()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 263
    iget-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/sec_settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method public static isSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 222
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/android/sec_settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 223
    sget-object v1, Lcom/android/sec_settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/sec_settings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 227
    :cond_1
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 233
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    if-ne p2, v2, :cond_0

    .line 239
    invoke-direct {p0, p3}, Lcom/android/sec_settings/MasterClearConfirm;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    if-ne p2, v2, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/sec_settings/MasterClearConfirm;->DoMasterReset()V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 290
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/sec_settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 292
    if-eqz v0, :cond_0

    const-string v1, "can_erase_sd_on_fuse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/sec_settings/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    .line 294
    return-void

    :cond_1
    move v1, v2

    .line 290
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 269
    const v0, 0x7f04008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 270
    invoke-direct {p0}, Lcom/android/sec_settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 271
    iget-object v0, p0, Lcom/android/sec_settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 278
    invoke-virtual {p0}, Lcom/android/sec_settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 279
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, p0, Lcom/android/sec_settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/sec_settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    :cond_0
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "subject"
    .parameter "password"
    .parameter "requestCode"

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0, p4}, Lcom/android/sec_settings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    return-void
.end method
