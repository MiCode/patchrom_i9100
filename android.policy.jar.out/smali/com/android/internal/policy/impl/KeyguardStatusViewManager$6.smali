.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V

    .line 847
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1102(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 821
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 822
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, p3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I

    .line 823
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .line 824
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 825
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1502(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 836
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;)V

    .line 837
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->chooseClockType()V

    .line 839
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->refreshTime()V

    .line 841
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 830
    return-void
.end method
