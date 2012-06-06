.class public Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field private static final STATE_SECURED:[I

.field private static final sDeviceTypeImages:[I


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->STATE_SECURED:[I

    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    return-void

    :array_0
    .array-data 0x4
        0xa3t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter "context"
    .parameter "dev"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, tokens:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v1, v0

    if-ge v1, v3, :cond_2

    .line 66
    :cond_1
    const-string v1, "WifiP2pPeer"

    const-string v2, "Malformed primaryDeviceType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    .line 71
    iget v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    if-lt v1, v3, :cond_3

    iget v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_3

    .line 72
    sget-object v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    goto :goto_0

    .line 74
    :cond_3
    sget-object v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    goto :goto_0
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, statusArray:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    const v2, 0x7f0b02d8

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 91
    instance-of v2, p1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 94
    check-cast v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 97
    .local v0, other:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_2

    .line 98
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->refresh()V

    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 87
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
