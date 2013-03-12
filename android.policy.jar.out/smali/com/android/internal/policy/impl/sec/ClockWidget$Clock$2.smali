.class Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$2;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->access$2000(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dualclock_menu_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 914
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1900()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1900()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->access$2100(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 915
    :cond_0
    return-void
.end method
