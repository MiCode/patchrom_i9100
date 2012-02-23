.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

.field final synthetic val$timezoneChanged:Z

.field final synthetic val$tmpIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;ZLandroid/content/Intent;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;->this$1:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;->val$tmpIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 501
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v2, "time-zone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$202(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 508
    .end local v0           #tz:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$300(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    .line 509
    return-void
.end method
