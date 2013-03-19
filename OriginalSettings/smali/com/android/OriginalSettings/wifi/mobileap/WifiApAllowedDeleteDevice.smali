.class Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;
.super Landroid/preference/CheckBoxPreference;
.source "WifiApAllowedDeleteDevice.java"


# instance fields
.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 39
    instance-of v1, p1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    if-nez v1, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 43
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    .line 43
    .local v0, other:Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "mac"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    .line 35
    return-void
.end method
