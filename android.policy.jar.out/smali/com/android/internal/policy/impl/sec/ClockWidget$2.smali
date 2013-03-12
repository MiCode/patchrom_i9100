.class Lcom/android/internal/policy/impl/sec/ClockWidget$2;
.super Landroid/telephony/PhoneStateListener;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$600(Lcom/android/internal/policy/impl/sec/ClockWidget;)Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$600(Lcom/android/internal/policy/impl/sec/ClockWidget;)Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->updateText()V

    .line 159
    :cond_0
    return-void
.end method
