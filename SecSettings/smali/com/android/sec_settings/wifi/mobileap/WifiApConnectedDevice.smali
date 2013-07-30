.class public Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final BUTTON_INVISIBLE:I

.field private final BUTTON_VISIBLE_MINUS:I

.field private final BUTTON_VISIBLE_PLUS:I

.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsButtonState:I

.field private mIsPushShift:I

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "deviceName"
    .parameter "mac"
    .parameter "ip"
    .parameter "connectedTime"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    iput v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_INVISIBLE:I

    .line 60
    iput v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_PLUS:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_MINUS:I

    .line 69
    iput v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 70
    iput v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 75
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 85
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    .line 87
    const v0, 0x7f0400cb

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->setLayoutResource(I)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    return-void
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 266
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 267
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 268
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 270
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 272
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 172
    :pswitch_1
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const v2, 0x7f090310

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 174
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 178
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_0
    :pswitch_2
    new-instance v0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 186
    .local v0, dialog:Landroid/app/AlertDialog;
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 181
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :pswitch_3
    new-instance v0, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;-><init>(Landroid/content/Context;Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;)V

    .line 182
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 145
    instance-of v1, p1, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;

    if-nez v1, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 149
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 148
    check-cast v0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;

    .line 149
    .local v0, other:Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;
    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getConnectedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 92
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 93
    .local v4, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v2

    .line 94
    .local v2, isContains:Z
    if-eqz v2, :cond_0

    .line 95
    iget-object v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 100
    const v5, 0x7f0b023c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    .local v0, btn:Landroid/widget/LinearLayout;
    const v5, 0x7f0b023e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    .local v1, btnImg:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 106
    .local v3, wc:Landroid/net/wifi/WifiConfiguration;
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 107
    if-nez v2, :cond_1

    .line 108
    iput v8, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 109
    const v5, 0x7f020242

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    new-instance v5, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice$1;

    invoke-direct {v5, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice$1;-><init>(Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :cond_1
    :goto_0
    const v5, 0x7f0b023b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice$3;

    invoke-direct {v6, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice$3;-><init>(Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void

    .line 118
    :cond_2
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v5, v8, :cond_3

    .line 119
    if-eqz v2, :cond_1

    .line 120
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 121
    const v5, 0x7f020244

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    new-instance v5, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice$2;

    invoke-direct {v5, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice$2;-><init>(Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_3
    iput v7, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 132
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 222
    instance-of v8, p1, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v8, :cond_0

    .line 223
    const-string v8, "WifiApConnectedDevice"

    const-string v9, "onClick"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    .line 224
    check-cast v7, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 225
    .local v7, whitelsitDialog:Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_0

    .line 227
    invoke-virtual {v7}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 262
    .end local v7           #whitelsitDialog:Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 229
    .restart local v7       #whitelsitDialog:Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;
    .restart local p1
    :pswitch_1
    const-string v8, "WifiApConnectedDevice"

    const-string v9, "ADD_DEVICE_FROM_CONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    check-cast p1, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 232
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const v3, 0x7f0902e2

    .line 251
    .local v3, msgId:I
    :goto_1
    iget-object v8, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#ff"

    const-string v10, "#"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, color:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<font color="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</font>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v3, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, toastMsg:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 256
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x102000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 257
    .local v6, tv:Landroid/widget/TextView;
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 259
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    goto/16 :goto_0

    .line 236
    .end local v1           #color:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #toastMsg:Ljava/lang/String;
    .end local v6           #tv:Landroid/widget/TextView;
    .restart local p1
    :pswitch_2
    const-string v8, "WifiApConnectedDevice"

    const-string v9, "REMOVE_DEVICE_FROM_CONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->reloadWhiteList()V

    .line 239
    const v3, 0x7f0902e3

    .line 241
    .restart local v3       #msgId:I
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 242
    .local v2, msg:Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v2, Landroid/os/Message;->what:I

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, b:Landroid/os/Bundle;
    const-string v8, "mac"

    iget-object v9, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    iget-object v8, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 191
    const-string v1, "WifiApConnectedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> onKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 193
    sparse-switch p2, :sswitch_data_0

    .line 213
    :cond_0
    const/16 v1, 0x3b

    if-ne p2, v1, :cond_2

    .line 214
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 217
    :cond_1
    :goto_0
    return v0

    .line 195
    :sswitch_0
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 198
    :sswitch_1
    iget v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 199
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 202
    :sswitch_2
    iget v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 203
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 206
    :sswitch_3
    iget v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    if-nez v1, :cond_1

    .line 207
    iget v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 208
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 217
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_1
    .end sparse-switch
.end method
