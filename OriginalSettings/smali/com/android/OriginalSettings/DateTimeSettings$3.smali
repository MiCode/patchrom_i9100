.class Lcom/android/OriginalSettings/DateTimeSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/OriginalSettings/DateTimeSettings$3;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettings$3;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 566
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettings$3;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 569
    :cond_0
    return-void
.end method
