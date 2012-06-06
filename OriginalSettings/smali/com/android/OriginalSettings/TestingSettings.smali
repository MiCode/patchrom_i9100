.class public Lcom/android/OriginalSettings/TestingSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "TestingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f05003c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/TestingSettings;->addPreferencesFromResource(I)V

    .line 29
    return-void
.end method
