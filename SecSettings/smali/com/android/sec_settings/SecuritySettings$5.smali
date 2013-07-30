.class Lcom/android/sec_settings/SecuritySettings$5;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/sec_settings/SecuritySettings$5;->this$0:Lcom/android/sec_settings/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/sec_settings/SecuritySettings$5;->this$0:Lcom/android/sec_settings/SecuritySettings;

    #calls: Lcom/android/sec_settings/SecuritySettings;->updateSIMLockEnable()V
    invoke-static {v0}, Lcom/android/sec_settings/SecuritySettings;->access$000(Lcom/android/sec_settings/SecuritySettings;)V

    .line 1076
    return-void
.end method
