.class Lcom/android/sec_settings/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/sec_settings/DateTimeSettings$1;->this$0:Lcom/android/sec_settings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettings$1;->this$0:Lcom/android/sec_settings/DateTimeSettings;

    invoke-virtual {v1}, Lcom/android/sec_settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 668
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettings$1;->this$0:Lcom/android/sec_settings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/sec_settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 671
    :cond_0
    return-void
.end method
