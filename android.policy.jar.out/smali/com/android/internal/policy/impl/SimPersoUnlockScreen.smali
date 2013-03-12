.class public Lcom/android/internal/policy/impl/SimPersoUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPersoUnlockScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 44
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 46
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 48
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 50
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 52
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "plugIn"

    .prologue
    .line 58
    return-void
.end method
