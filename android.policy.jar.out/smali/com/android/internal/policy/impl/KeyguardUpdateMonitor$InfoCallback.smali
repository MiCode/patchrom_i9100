.class public interface abstract Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InfoCallback"
.end annotation


# virtual methods
.method public abstract onClockVisibilityChanged()V
.end method

.method public abstract onCsSimStateChanged(I)V
.end method

.method public abstract onDevicePolicyManagerStateChanged()V
.end method

.method public abstract onDeviceProvisioned()V
.end method

.method public abstract onPhoneStateChanged(I)V
.end method

.method public abstract onRefreshBatteryInfo(ZZI)V
.end method

.method public abstract onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract onRingerModeChanged(I)V
.end method

.method public abstract onTimeChanged()V
.end method

.method public abstract onUserChanged(I)V
.end method
