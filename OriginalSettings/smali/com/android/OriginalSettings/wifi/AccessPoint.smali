.class Lcom/android/OriginalSettings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/AccessPoint$1;,
        Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I

.field pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 45
    new-array v0, v2, [I

    sput-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 69
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 175
    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 176
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 177
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 178
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 69
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 168
    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 169
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 170
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 171
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 69
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 182
    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 184
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 188
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 189
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 192
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 193
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 197
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 152
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 153
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 154
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 155
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 162
    :goto_0
    return-object v2

    .line 156
    :cond_0
    if-eqz v1, :cond_1

    .line 157
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 158
    :cond_1
    if-eqz v0, :cond_2

    .line 159
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 161
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x4

    .line 112
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x5

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    const/4 v0, 0x3

    goto :goto_0

    .line 112
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 84
    goto :goto_0

    .line 87
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    const/4 v0, 0x4

    goto :goto_0

    .line 90
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 209
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 211
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    .line 212
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 213
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 214
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 215
    return-void

    .line 209
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 218
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 220
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    .line 221
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 222
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 223
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 224
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 225
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 226
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 227
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 351
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 354
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/OriginalSettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    :goto_0
    return-void

    .line 356
    :cond_0
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 357
    const v3, 0x7f0b027a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_2

    .line 359
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 368
    :pswitch_0
    const v3, 0x7f0b0275

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :pswitch_1
    const v3, 0x7f0b0279

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 365
    :pswitch_2
    const v3, 0x7f0b0276

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    .line 373
    const v3, 0x7f0b0274

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_3
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_4

    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 379
    const v3, 0x7f0b027d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_5

    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 388
    const v3, 0x7f0b027b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 381
    :cond_6
    const v3, 0x7f0b027e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_1

    .line 390
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_7
    const v3, 0x7f0b027c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 337
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 338
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 340
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 342
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 245
    instance-of v3, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v3, :cond_1

    move v1, v2

    .line 269
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 248
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 250
    .local v0, other:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v3, v4, :cond_2

    .line 251
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 254
    :cond_2
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    iget v4, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v3, v4

    if-gez v3, :cond_3

    .line 255
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 258
    :cond_3
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget v4, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v3, v4

    if-gez v3, :cond_4

    .line 259
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 269
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 403
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 408
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 319
    const/4 v0, -0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 147
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 119
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0b0284

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b028b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 122
    :pswitch_1
    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 134
    if-eqz p1, :cond_4

    const v1, 0x7f0b0283

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0b0280

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0287

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 127
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0b0281

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0288

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0b0282

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0289

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_4
    const v1, 0x7f0b028a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0b027f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0b0286

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 142
    :pswitch_6
    const v1, 0x7f0b028c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 144
    :pswitch_7
    const v1, 0x7f0b028d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 147
    :cond_6
    const v1, 0x7f0b0285

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 122
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 232
    const v1, 0x7f08016a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 237
    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 200
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, reorder:Z
    if-eqz p1, :cond_5

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 295
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 298
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 300
    .local v0, newRssi:I
    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_1

    .line 301
    :cond_0
    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 303
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 304
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 305
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 312
    .end local v0           #newRssi:I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 315
    :cond_3
    return-void

    .line 295
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 306
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2

    .line 307
    const/4 v1, 0x1

    .line 308
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 309
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 310
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 274
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 276
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 277
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->notifyChanged()V

    .line 282
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 283
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 286
    const/4 v1, 0x1

    .line 288
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
