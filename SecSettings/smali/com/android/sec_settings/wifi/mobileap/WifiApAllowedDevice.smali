.class Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;
.super Landroid/preference/Preference;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mFragment:Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedList;

.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 1
    .parameter "context"
    .parameter "mac"
    .parameter "name"
    .parameter "fragment"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    const v0, 0x7f0400ca

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->setLayoutResource(I)V

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedList;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->showDialog()V

    return-void
.end method

.method private showDialog()V
    .locals 6

    .prologue
    .line 76
    new-instance v0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    .local v0, dialog:Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;
    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    .line 78
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 68
    instance-of v1, p1, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 72
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;

    .line 72
    .local v0, other:Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f0b0238

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice$1;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice$1;-><init>(Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0b0239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice$2;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice$2;-><init>(Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 105
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 106
    check-cast p1, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->update(Ljava/lang/String;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 112
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

    .line 113
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 114
    packed-switch p2, :pswitch_data_0

    .line 120
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->showDialog()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method update(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    .line 84
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    .line 85
    .local v0, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiApWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->notifyHierarchyChanged()V

    .line 87
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Lcom/android/sec_settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 92
    .end local v0           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
