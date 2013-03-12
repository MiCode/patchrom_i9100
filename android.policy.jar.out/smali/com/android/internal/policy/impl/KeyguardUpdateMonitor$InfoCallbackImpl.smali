.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoCallbackImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 979
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 997
    return-void
.end method

.method public onCsSimStateChanged(I)V
    .locals 0
    .parameter "simSlot"

    .prologue
    .line 1010
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 1003
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1000
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 994
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 982
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 988
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 991
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 985
    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1006
    return-void
.end method
