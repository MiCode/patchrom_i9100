.class Lcom/android/OriginalSettings/wifi/WifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$000(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 181
    return-void
.end method
