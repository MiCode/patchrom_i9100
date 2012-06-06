.class public Lcom/android/OriginalSettings/wifi/WifiInfo;
.super Lmiui/preference/BasePreferenceActivity;
.source "WifiInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiInfo;->addPreferencesFromResource(I)V

    .line 34
    return-void
.end method
