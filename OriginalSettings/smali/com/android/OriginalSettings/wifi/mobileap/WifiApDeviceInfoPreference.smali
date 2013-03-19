.class public Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
.super Landroid/preference/Preference;
.source "WifiApDeviceInfoPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAllowAll:Z

.field private mContext:Landroid/content/Context;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "WifiApDeviceInfoPreference"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "fragment"
    .parameter "wifiConfig"

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 53
    const v0, 0x7f0400cd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setLayoutResource(I)V

    .line 55
    if-nez p2, :cond_0

    .line 56
    const v0, 0x7f0902dc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(I)V

    .line 57
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    .line 67
    return-void

    .line 59
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v2, :cond_1

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    goto :goto_0

    .line 64
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->checkConnectedDeviceOrChangeAllowPolicy()V

    return-void
.end method

.method private changeAllowPolicy()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 143
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 146
    .local v0, wm:Landroid/net/wifi/WifiManager;
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x3

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 151
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 154
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_0

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 156
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 158
    :cond_0
    return-void

    .end local v0           #wm:Landroid/net/wifi/WifiManager;
    :cond_1
    move v1, v3

    .line 143
    goto :goto_0

    .line 149
    .restart local v0       #wm:Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    goto :goto_1
.end method

.method private checkConnectedDeviceOrChangeAllowPolicy()V
    .locals 5

    .prologue
    .line 124
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 125
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 126
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 127
    .local v2, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 128
    .local v1, num:I
    if-lez v1, :cond_0

    .line 129
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 6
    .parameter "dialogId"

    .prologue
    const v5, 0x7f09012d

    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 88
    :pswitch_0
    const v2, 0x7f0902fa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090316

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0905e3

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 104
    .local v0, current:I
    :goto_2
    const v2, 0x7f0902f4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0021

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;I)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 103
    .end local v0           #current:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_2

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSummary()V
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v0, :cond_0

    .line 137
    const v0, 0x7f0902de

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    const v0, 0x7f0902e1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public onClickItem(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 81
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V

    .line 82
    return-void
.end method

.method public updateSsid(Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->notifyHierarchyChanged()V

    .line 77
    return-void
.end method
