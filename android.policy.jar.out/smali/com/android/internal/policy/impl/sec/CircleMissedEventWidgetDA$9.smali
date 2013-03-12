.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$9;
.super Landroid/database/ContentObserver;
.source "CircleMissedEventWidgetDA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$9;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$9;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12c2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$9;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$2200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    return-void
.end method
